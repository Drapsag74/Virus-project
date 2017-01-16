
function Presente (V : in TV_Virus; Coul : in T_Piece) return Boolean is
-- {} => {resultat =  la piece de couleur Coul appartient a V}
begin
      
   for K of V loop
      if K = Coul then return True; end if;
   end loop;
   
   return False;
   
end Presente;

function Possible (V : in TV_Virus; Coul : in T_Piece; Dir : in T_Direction)return Boolean is
-- {P appartient a la grille V} => {resultat = vrai si la piece de couleur Coul peut etre 
-- deplacee dans la direction Dir}
   
   Impossible : Boolean := False;
begin
   
   while not Impossible loop
      for L in T_Lig'Range loop
	 for K in T_Col'Range loop
	    if V(L,K) = Coul then
	       if Dir = Hg then
		  Impossible := not (V(L - 1, ,Char'Value(Char'Pos(K) -1) = Rouge and (L - 1 not in T_Lig'Range and Char'Value(Char'Pos(K) not in T_Col'Range)))));
	       end if;
	    elsif Dir = Bg then
	       
	    elsif Dir = Hd then
	    else 
	    end if;
	 end if;
      end loop;
   end loop;
end loop;
   return not Impossible;
   
end Possible;

