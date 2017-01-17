
package body p_graphique is

procedure CreerFenetreBienvenue(FenetreBienvenue : out TR_Fenetre) is
--{} => {Créer la fenêtre de bienvenue}

begin
			FenetreBienvenue := DebutFenetre("Anti-Virus", 500, 500);
				AjoutertTexte(fenetreBienvenue, "titre du jeux", "ANTI-VIRUS",0,0,10,10);
				AjouterTexte(fenetreBienvenue, "crédits", "SB-Ada 2017",10, 10, 10,10);
				AjouterTexte(fenetreBienvenue, "créateurs", "Gregory Natter, Gaspard Anthoine", 20, 20, 10, 10);
			Finfenetre(fenetreBienvenue);
end CreerFenetreBienvenue;





end package;
