with p_graphique; use p_graphique;
with Text_IO; use Text_IO;

procedure InitScore is
--{} => {Créer les fichiers pour stocker les scores}
	f : Text_IO.file_type;
begin
	for i in 1..20 loop
		Create(f, out_file, "score/"&integer'image(i));
			put_line(f, "Greg");
			put_line(f, "0");
		Close(f);
	end loop;
end InitScore;
