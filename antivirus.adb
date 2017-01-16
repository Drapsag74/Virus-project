with p_esiut; use p_esiut;
with p_virus; use p_virus;
use p_virus.p_Piece_IO;

procedure antivirus is
--{} => {}
	f : file_type;
	nb : integer;
	V : TV_Virus;
begin
	Ecrire("Partie :"); Lire(nb);

	Open(f, in_file, "Parties");
	CreeVectVirus (f, nb, V);
	Close(f);

	AfficheGrille(V);
	
end antivirus;
