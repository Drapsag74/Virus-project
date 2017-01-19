with Sequential_IO;

procedure creaFichiersJeanne is
--{} => {}

	subtype T_Col is character range 'A'..'G';
	subtype T_Lig is integer range 1..7;
	type T_Piece is (rouge, turquoise, orange, rose, marron, bleu, violet, vert, jaune, blanc, vide);
	
	type TR_Piece is record
		colonne	:	T_Col;
		ligne	:	T_Lig;
		couleur	:	T_Piece range rouge..blanc;
	end record;
	
	type TV_Virus is array (T_lig,T_col) of T_Piece;
	
	type TV_Coups is array (integer range <>) of TV_Virus;
	
	type combinaison is record
		V1, V2 : TV_Virus;
		nbCoups : natural;
	end record;
	
	package p_Piece_IO is new sequential_IO (TR_Piece); use p_Piece_IO;
	package p_combinaison_IO is new sequential_IO(combinaison); use p_couple_IO;
	
	procedure CreeVectVirus (f : in out p_Piece_IO.file_type; nb : in integer; V : out TV_Virus) is
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
		V(Val.ligne, Val.colonne) := rouge;		
		Read(F,Val);
		V(Val.ligne, Val.colonne) := rouge;
	end CreeVectVirus;
	
	f : p_Piece_IO.file_type;
	g : p_couple_IO.file_type;
	V : TV_Virus;
	C : combinaison;
	
begin

	for i in 1..20 loop
		Open(f, in_file, "Parties");
		CreeVectVirus (f, i, V);
		Close(f);
		
		Create(g, out_file, "jeanne/"&integer'image(i));
		C := (V,V,9999);
		write(g,C);
		Close(g);
	end loop;
	
end crea;
