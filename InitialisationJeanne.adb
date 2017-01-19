with Sequential_IO;
with p_virus; use p_virus;
with jeanne; use jeanne; use jeanne.p_combinaison_IO;

procedure InitialisationJeanne is
--{} => {Réinitialise le cerveau de Jeanne en mettant en première situation de chaque niveau une situation vide}

	f : p_combinaison_IO.file_type;
	g : p_combinaison_IO.file_type;

begin

	for i in 1..20 loop
		Create(f, out_file, "jeanne/"&integer'image(i));
		write(f,CreerCombinaisonVide);
		Close(f);
	end loop;

end InitialisationJeanne;
