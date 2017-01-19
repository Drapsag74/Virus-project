package body Jeanne is

	--------- Outils de Jeanne

	function CreerSituationVide return TV_Virus is
	--{} => {Retourne une situation vide}
		Vvide : TV_Virus;
	begin

		for i in T_Lig loop
			for j in T_Col loop
				Vvide(i,j) := vide;
			end loop;
		end loop;

		return Vvide;

	end CreerSituationVide;

	function CreerCombinaisonVide return combinaison is
	--{} => {Retourne une combinaison vide}
	begin

		return (CreerSituationVide, CreerSituationVide, 0);

	end CreerCombinaisonVide;

	function RechercheSituation(V1 : in TV_Virus; niveau : in natural) return combinaison is
	--{f non vide} => {Si Jeanne connait la situation de départ V1, la fonction renvoit la combinaisona associée, sinon elle renvoie une combinaison vide}
		f : p_combinaison_IO.file_type;
		val : combinaison;
	begin
		Open(f, in_file, "jeanne/"&integer'image(niveau));

		read(f, val);
		while not end_of_file(f) and V1 /= val.V1 loop
			read(f, val);
		end loop;

		if V1 /= val.V1 then
			Close(f);
			return CreerCombinaisonVide;
		else
			Close(f);
			return val;
		end if;

	end RechercheSituation;


	--------- IA de Jeanne

	procedure initialisation is
	--{} => {Jeanne est initialisée}
		f : p_tv_virus_IO.file_type;
	begin

		Create(f, out_file, "jeanne/enregistrements");
		Write(f, CreerSituationVide);
		Close(f);

	end initialisation;

	procedure enregistre (V : in TV_Virus) is
	--{} => {la situation V a été enregistré dans la mémoire de Jeanne}
		f : p_tv_virus_IO.file_type;
	begin
		Open(f, append_file, "jeanne/enregistrements");
		Write(f,V);
		Close(f);
	end enregistre;

	procedure apprend (niveau : in integer; nbCoups : in natural) is
	--{} => {les situations de la partie précédente sont apprises par Jeanne si nécessaire}

		g : p_tv_virus_IO.file_type;
		situation : TV_Virus;
		i : natural := 1;

		V1, V2 : TV_Virus;
		combi, combiTrouvee, val : combinaison;

		f, tampon : p_combinaison_IO.file_type;
	begin
		Open(g, in_file, "jeanne/enregistrements");

		read(g, situation); -- On saute la première valeur qui est vide

		read(g, situation);
		V2 := situation;
		while not end_of_file(g) loop

			-- On extrait les combinaisons
			V1 := V2;
			read(g, situation);
			V2 := situation;
			combi := (V1, V2, nbCoups - i + 1);

			-- Si Jeanne n'avait jamais vu cette situation de départ (V1), on ajoute notre combinaison
			combiTrouvee := RechercheSituation(V1, niveau);
			if combiTrouvee = CreerCombinaisonVide then
				Open(f, append_file, "jeanne/"&integer'image(niveau));
				write(f, combi);
				Close(f);

			-- Sinon si la situation que Jeanne connait est moins bien, on la remplace par la notre
			elsif combiTrouvee.nbCoups > combi.nbCoups then

				Open(f, in_file, "jeanne/"&integer'image(niveau));
				Create(tampon, out_file, "jeanne/tampon");

				read(f, val);
				while val.v1 /= combi.v1 loop
					write(tampon, val);
					read(f, val);
				end loop;

				write(tampon, combi);

				while not end_of_file(f) loop
					read(f,val);
					write(tampon, val);
				end loop;

				reset(tampon, in_file);
				reset(f, out_file);

				while not end_of_file(tampon) loop
					read(tampon, val);
					write(f, val);
				end loop;

				Close(f);
				Close(tampon);

			end if;

			i := i + 1;
		end loop;

		Close(g);
	end apprend;

	procedure cherche (V : in out TV_Virus; niveau : in natural) is
	--{} => {cherche si d'après une situation V, Jeanne connait une situation V+1 dans le niveau niveau}
		f : p_combinaison_IO.file_type;
		val : combinaison;
	begin
		Open(f, in_file, "jeanne/"&integer'image(niveau));

		read(f, val);
		while V /= val.V1 and not end_of_file(f) loop
			read(f, val);
		end loop;

		if V = val.V1 then
			V := val.V2;
		end if;

		Close(f);
	end cherche;


end Jeanne;
