with sequential_IO;
with p_virus; use p_virus;

package Jeanne is
	
	type TV_Coups is array (integer range <>) of TV_Virus;
	
	type combinaison is record
		V1, V2 : TV_Virus;
		nbCoups : natural;
	end record;
	
	package p_combinaison_IO is new sequential_IO(combinaison); use p_combinaison_IO;

	--------- Outils de Jeanne
	
	function CreerCombinaisonVide return combinaison;
	--{} => {Retourne une combinaison vide}
	
	function RechercheSituation(V1 : in TV_Virus; niveau : in natural) return combinaison;
	--{} => {Si Jeanne connait la situation de départ V1, la fonction renvoit la combinaisona associée, sinon elle renvoie une combinaison vide}
	
	
	--------- Procedures de Jeanne

	procedure enregistre (V : in TV_Virus; C : in out TV_Coups);
	--{} => {ajoute à C le coup V}
	
	procedure apprend (C : in TV_Coups; niveau : in integer);
	--{} => {ajoute les coups au fichier du niveau s'il sont meilleurs que ceux déjà présents}
	
	procedure cherche (V : in out TV_Virus; niveau : in natural);
	--{} => {cherche si d'après une situation V, Jeanne connait une situation V+1 dans le niveau niveau}
	
	
end Jeanne;
