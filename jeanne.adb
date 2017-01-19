package body Jeanne is

	--------- Outils de Jeanne
	
	function CreerCombinaisonVide return combinaison is
	--{} => {Retourne une combinaison vide}
		Vvide : TV_Virus;
	begin
	
		for i in T_Lig loop
			for j in T_Col loop
				Vvide(i,j) := vide;
			end loop;
		end loop;
		
		return (Vvide, Vvide, 0);
		
	end CreerCombinaisonVide;
	
	function RechercheSituation(V1 : in TV_Virus; niveau : in natural) return combinaison is
	--{f non vide} => {Si Jeanne connait la situation de départ V1, la fonction renvoit la combinaisona associée, sinon elle renvoie une combinaison vide}
		f : file_type;
		val : combinaison;	
	begin
		Open(f, in_file, "jeanne/"&integer'image(niveau));
		
		read(f, val);
		while not end_of_file(f) and V1 /= val.V1 loop
			read(f, val);
		end loop;
		
		if V1 /= val.V1 then 
			return CreerCombinaisonVide;
		else
			return val;
		end if;
		
	end RechercheSituation;
	
	
	--------- Procedures de Jeanne
	
	procedure enregistre (V : in TV_Virus; C : in out TV_Coups) is
	--{} => {ajoute à C le coup V}
		newC : TV_Coups(1..C'length+1);
	begin
		newC(1..C'length) := C;
		newC(C'length + 1) := V;
		C := newC;
	end enregistre;
	
	procedure apprend (C : in TV_Coups; niveau : in integer) is
	--{} => {ajoute les coups au fichier du niveau s'il sont meilleurs que ceux déjà présents}
		i : integer := C'first;
		V1, V2 : TV_Virus;
		nbCoups : natural;
		combi, combiTrouvee, val : combinaison;
		f, temp : file_type;
	begin
		while i <= C'length loop
		
			-- On extrait les combinaisons
			V1 := C(i);
			V2 := C(i+1);
			nbCoups := C'length - i - 1;
			
			combi := (V1, V2, nbCoups);
			
			-- Si Jeanne n'avait jamais vu cette situation de départ (V1), on ajoute notre combinaison 
			combiTrouvee := RechercheSituation(V1, niveau);
			if combiTrouvee = CreerCombinaisonVide then
				Open(f, append_file, "jeanne/"&integer'image(niveau));
				write(f, combi);
				Close(f);
				
			-- Sinon si la situation que Jeanne connait est moins bien, on la remplace par la notre
			elsif combiTrouvee.nbCoups > combi.nbCoups then
				
				Open(f, in_file, "jeanne/"&integer'image(niveau));
				Create(temp, out_file, "temp");	
				
				read(f, val);
				while val.v1 /= combi.v1 loop
					write(temp, val);
					read(f, val);
				end loop;
				
				write(temp, combi);
				
				while not end_of_file(f) loop
					write(temp, combi);
				end loop;
				
				reset(temp, in_file);
				reset(f, out_file);
				
				while not end_of_file(temp) loop
					read(temp, val);
					write(f, val);
				end loop;

			end if;
					
			i := i + 1;
		end loop;
	end apprend;
	
	procedure cherche (V : in out TV_Virus; niveau : in natural) is
	--{} => {cherche si d'après une situation V, Jeanne connait une situation V+1 dans le niveau niveau}
		f : file_type;
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
	end cherche;
	
	
end Jeanne;
