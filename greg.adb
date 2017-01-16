--Brouillon Greg
function Gueri (V : in TV_Virus) return Boolean is
-- {} => {resultat = la piece rouge est prete a sortir (coin haut gauche)}
begin
	return V(1,'A') = rouge and V(2, 'B') = rouge;
end Gueri;


function TaillePiece(V : in out TV_Virus; Coul : in T_Piece) return integer is
--{La piece de couleur Coul est sur le plateau} => {Nombre de cases prise par la piece de couleur Coul}
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

---- type pour le vecteur contenant les cases d'une pièce 
type TV_Piece is array(integer range <>) of TR_Piece;

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
	for i in Piece loop
		V(i.ligne, i.colonne) = vide;
	end loop;

	--Calcul des nouveaux coordonnés de la pièces
	if Dir = bg then
		for i in Piece loop
			i.ligne := i.ligne + 1;
			i.colonne := Character'val(Character'pos(colonne) - 1);
		end loop;
	elsif Dir = hg then
		for i in Piece loop
			i.ligne := i.ligne - 1;
			i.colonne := Character'val(Character'pos(colonne) - 1);
		end loop;
	elsif Dir = bd then
		for i in Piece loop
			i.ligne := i.ligne + 1;
			i.colonne := Character'val(Character'pos(colonne) + 1);
		end loop;
	else -- Dir = hd
		for i in Piece loop
			i.ligne := i.ligne - 1;
			i.colonne := Character'val(Character'pos(colonne) + 1);
		end loop;
	end if;

	--Affichage de la nouvelle position de la pièce
	for i in Piece loop
		V(i.ligne, i.colonne) = Coul;
	end loop;

end Deplacement;

