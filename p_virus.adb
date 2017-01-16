with sequential_IO; 
with p_esiut; use p_esiut;

package body p_virus is

--------------- Creation et Affichage de la grille

procedure CreeVectVirus (f : in out file_type; nb : in integer; V :out TV_Virus) is
-- {f (ouvert) contient des configurations initiales,
-- toutes les configurations se terminent par la position du virus rouge}
-- => {V a ete initialise par lecture dans f de la partie de numero nb}
begin

end CreeVectVirus;

procedure AfficheVectVirus (V : in TV_Virus) is
-- {} => {Les valeurs du vecteur V sont affichees sur une ligne}
	i : T_Lig;
	j : T_Col;
begin
	for i in T_Lig'range loop
		for j in T_Col'range loop
			Ecrire(V(i,j));
		end loop;
	end loop;	
end AfficheVectVirus;

procedure AfficheGrille (V : in TV_Virus) is
-- {} => {Le contenu du vecteur V est affiche dans une grille symbolisee
-- Les colonnes sont numerotees de A a G et les lignes sont numerotees de 1 a 7.
-- Dans chaque case : 	. = case vide
--			un chiffre = numero de la couleur de la piece presente dans la case
--			le caractere 'B' = piece blanche fixe
-- 			rien = pas une case}
begin
	E
end AfficheGrille;
--------------- Fonctions et procedures pour le jeu

function Gueri (V : in TV_Virus) return Boolean is
-- {} => {resultat = la piece rouge est prete a sortir (coin haut gauche)}
begin
	return false;
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

procedure Deplacement(V : in out TV_Virus; Coul : in T_Piece; Dir :in T_Direction) is
-- {la piece de couleur Coul peut etre deplacee dans la direction Dir} 
--                                        => {V a ete mis a jour suite au deplacement}
begin
	Ecrire("...");
end Deplacement;

end p_virus;

