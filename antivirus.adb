with p_esiut; use p_esiut;
with p_virus; use p_virus;
use p_virus.p_Piece_IO;
use p_virus.p_Direction_IO;

procedure antivirus is
--{} => {}
	f : file_type;
	nb : integer;
	V : TV_Virus;
	direction : string(1..2);
	piece : integer;
begin
	Ecrire("Partie :"); Lire(nb);

	Open(f, in_file, "Parties");
	CreeVectVirus (f, nb, V);
	Close(f);

	AfficheGrille(V);
	affichevectvirus(V);
	while not Gueri(V) loop
		Ecrire("Numéro de la piece :"); Lire(piece);
		Ecrire("Direction (bg/hg/bd/hd) : "); Lire(direction);
		if possible(V, T_Piece'val(piece), T_Direction'value(direction)) then		
			Deplacement(V, T_Piece'val(piece), T_Direction'value(direction));
			AfficheGrille(V);
		else 
			Ecrire_ligne("Mouvement impossible");
		end if;
	end loop;
end antivirus;
