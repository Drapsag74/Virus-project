with sequential_IO;
with p_esiut; use p_esiut;

package body p_virus is

--------------- Creation et Affichage de la grille

procedure CreeVectVirus (f : in out file_type; nb : in integer; V : out TV_Virus) is
-- {f (ouvert) contient des configurations initiales,
-- toutes les configurations se terminent par la position du virus rouge}
-- => {V a ete initialise par lecture dans f de la partie de numero nb}
	Val : TR_Piece;
	i : integer := T_Lig'first;
begin
	Reset(F, In_file);

	-- On vide le vecteur
	for k in T_Lig'range loop
		for j in T_Col'range loop
			V(k,j) := vide;
		end loop;
	end loop;
	
	
	-- On parcours le fichier tant que l'on est pas à la bonne partie
	Read(F,Val);
	while i < nb loop	
		while Val.couleur /= Rouge and not end_of_file(f) loop
			Read(F,Val);
		end loop;
		while Val.Couleur = Rouge and not end_of_file(f) loop
		 	Read(F,Val);
		end loop;
		i := i + 1;
	end loop;

	-- On parcours notre partie en ajoutant les pièces au vecteur
	while Val.couleur /= Rouge and not end_of_file(f) loop
		V(Val.ligne, Val.colonne) := Val.Couleur;	 		
		Read(F,Val);
	end loop;
	while Val.Couleur = Rouge and not end_of_file(f) loop	 
		V(Val.ligne, Val.colonne) := rouge;		
		Read(F,Val);
	end loop;
end CreeVectVirus;

   
procedure AfficheVectVirus (V : in TV_Virus) is
-- {} => {Les valeurs du vecteur V sont affichees sur une ligne}
begin
	for i in T_Lig'range loop
		for j in T_Col'range loop
			Ecrire(T_Piece'image(V(i,j)));
			Ecrire("  ");
		end loop;
	end loop;	
end AfficheVectVirus;

procedure AfficheCase(C : in T_Piece) is
-- {} => {Affiche B si la case est blanche, . si la case est vide et le numéro de la couleur de la pièce sinon}
begin
	if C = vide then
		Ecrire(" . ");
	elsif C = blanc then
		Ecrire(" B ");
	else
		Ecrire(T_Piece'pos(c)); ecrire(" ");
	end if;
end AfficheCase;

procedure AfficheGrille (V : in TV_Virus) is
-- {} => {Le contenu du vecteur V est affiche dans une grille symbolisee
-- Les colonnes sont numerotees de A a G et les lignes sont numerotees de 1 a 7.
-- Dans chaque case : 	. = case vide
--			un chiffre = numero de la couleur de la piece presente dans la case
--			le caractere 'B' = piece blanche fixe
-- 			rien = pas une case}
	colonne : character := T_Col'first;
	ligne : integer := T_Lig'first;
begin

	A_la_ligne;

	--1ère ligne
	Ecrire_ligne("Sortie");

	--2ème ligne
	Ecrire("       \   ");
	for i in T_Col'range loop
		Ecrire(i); Ecrire("  ");
	end loop;
	A_la_ligne;

	--3ème ligne
	Ecrire("        \ ");
	for i in 1..21 loop
		Ecrire("=");
	end loop;
	A_la_ligne;

	--Reste des lignes
	while ligne <= T_Lig'last loop
		Ecrire("      "); Ecrire(ligne); Ecrire("| ");
		colonne := T_Col'first;
		
		-- Affichage des lignes paires
		if ligne mod 2 = 0 then 
			while colonne < T_Col'last  loop
				Ecrire("   "); colonne := Character'val(Character'pos(colonne) + 1); 
				AfficheCase(V(ligne,colonne)); colonne := Character'val(Character'pos(colonne) + 1);
			end loop;

		-- Affichage des lignes impaires	
		else 
			while colonne <= T_Col'last  loop
				AfficheCase(V(ligne,colonne)); colonne := Character'val(Character'pos(colonne) + 1);
				Ecrire("   "); colonne := Character'val(Character'pos(colonne) + 1); 
			end loop;
		end if;

		ligne := ligne + 1;
		A_la_ligne;
	end loop;

	A_la_ligne;
end AfficheGrille;
--------------- Fonctions et procedures pour le jeu

function Gueri (V : in TV_Virus) return Boolean is
-- {} => {resultat = la piece rouge est prete a sortir (coin haut gauche)}
begin
	return V(1,'A') = rouge and V(2, 'B') = rouge;
end Gueri;

function Presente (V : in TV_Virus; Coul : in T_Piece) return Boolean is
-- {} => {resultat =  la piece de couleur Coul appartient a V}
begin
	return false;
end Presente;

function Possible (V : in TV_Virus; Coul : in T_Piece; Dir : in T_Direction)return Boolean is
-- {P appartient a la grille V} => {resultat = vrai si la piece de couleur Coul peut etre 
--                                             deplacee dans la direction Dir}
begin
	return false;
end Possible;

function TaillePiece(V : in out TV_Virus; Coul : in T_Piece) return integer is
--{La piece de couleur Coul est sur le plateau} => {Nombre de cases prise par la piece de couleur Coul}
	nbCases : natural := 0;
begin
	for i in T_Lig'range loop
		for j in T_Col'range loop
			if V(i,j) = Coul then
				nbCases := nbCases + 1;
			end if;
		end loop;
	end loop;
	return nbCases;
end TaillePiece;

procedure Deplacement(V : in out TV_Virus; Coul : in T_Piece; Dir :in T_Direction) is
-- {la piece de couleur Coul peut etre deplacee dans la direction Dir} 
--                                        => {V a ete mis a jour suite au deplacement}
	Piece : TV_Piece(1..TaillePiece(V,Coul));
	k : integer := Piece'first;
begin
	--Stockage des coordonnés de la pièce
	for i in T_Lig'range loop
		for j in T_Col'range loop
			if V(i,j) = Coul then
				Piece(k) := (j, i, Coul);
				k := k + 1;
			end if;
		end loop;
	end loop;

	--Suppression de la pièce
	for i of Piece loop
		V(i.ligne, i.colonne) := vide;
	end loop;

	--Calcul des nouveaux coordonnés de la pièces
	if Dir = bg then
		for i of Piece loop
			i.ligne := i.ligne + 1;
			i.colonne := Character'val(Character'pos(i.colonne) - 1);
		end loop;
	elsif Dir = hg then
		for i of Piece loop
			i.ligne := i.ligne - 1;
			i.colonne := Character'val(Character'pos(i.colonne) - 1);
		end loop;
	elsif Dir = bd then
		for i of Piece loop
			i.ligne := i.ligne + 1;
			i.colonne := Character'val(Character'pos(i.colonne) + 1);
		end loop;
	else -- Dir = hd
		for i of Piece loop
			i.ligne := i.ligne - 1;
			i.colonne := Character'val(Character'pos(i.colonne) + 1);
		end loop;
	end if;

	--Affichage de la nouvelle position de la pièce
	for i of Piece loop
		V(i.ligne, i.colonne) := Coul;
	end loop;
end Deplacement;

end p_virus;

