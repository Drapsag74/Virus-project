with sequential_IO;
with p_virus; use p_virus;
with p_esiut; use p_esiut; --juste pour debug

package Jeanne is

	type combinaison is record
		V1, V2 : TV_Virus;
		nbCoups : natural;
	end record;

	package p_tv_virus_IO is new sequential_IO(TV_Virus); use p_tv_virus_IO;
	package p_combinaison_IO is new sequential_IO(combinaison); use p_combinaison_IO;

	--------- Outils de Jeanne

	function CreerSituationVide return TV_Virus;
	--{} => {Retourne une situation vide}

	function CreerCombinaisonVide return combinaison;
	--{} => {Retourne une combinaison vide}

	function RechercheSituation(V1 : in TV_Virus; niveau : in natural) return combinaison;
	--{} => {Si Jeanne connait la situation de départ V1, la fonction renvoit la combinaisona associée, sinon elle renvoie une combinaison vide}


	--------- IA de Jeanne

	procedure initialisation;
	--{} => {Jeanne est initialisée}

	procedure enregistre (V : in TV_Virus);
	--{} => {la situation V a été enregistré dans la mémoire de Jeanne}

	procedure apprend (niveau : in integer; nbCoups : in natural);
	--{} => {les situations de la partie précédente sont apprises par Jeanne si nécessaire}

	procedure cherche (V : in out TV_Virus; niveau : in natural);
	--{} => {cherche si d'après une situation V, Jeanne connait une situation V+1 dans le niveau niveau}


end Jeanne;
