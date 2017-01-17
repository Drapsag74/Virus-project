
package body p_graphique is

procedure CreerFenetreBienvenue(FenetreBienvenue : out TR_Fenetre) is
--{} => {Créer la fenêtre de bienvenue}

begin
			FenetreBienvenue := DebutFenetre("Anti-Virus : Accueil", 500, 500);
				--titre
				AjouterTexte(fenetreBienvenue, "titre du jeux", "ANTI-VIRUS",155,100,210,50);
				ChangerCouleurTexte(FenetreBienvenue,"titre du jeux", FL_TOMATO);
				ChangerTailleTexte(FenetreBienvenue, "titre du jeux", FL_HUGE_SIZE);
				ChangerStyleTexte(FenetreBienvenue, "titre du jeux",FL_FIXEDBOLDITALIC_STYLE);
				-- crédits
				AjouterTexte(fenetreBienvenue, "crédits", "SB-Ada 2017",190, 150, 150,35);
				ChangerCouleurTexte(FenetreBienvenue,"crédits", FL_DARKTOMATO);
				ChangerTailleTexte(FenetreBienvenue, "crédits", FL_MEDIUM_SIZE);
				ChangerStyleTexte(FenetreBienvenue, "crédits",FL_FIXED_STYLE);
				--créateurs
				AjouterTexte(fenetreBienvenue, "créateurs", "Gregory Natter, Gaspard Anthoine", 125, 180, 255, 25);
				ChangerCouleurTexte(FenetreBienvenue,"créateurs", FL_WHEAT);
				ChangerTailleTexte(FenetreBienvenue, "créateurs", FL_NORMAL_SIZE);
				ChangerStyleTexte(FenetreBienvenue, "créateurs",FL_ITALIC_STYLE);
				--bouton start
				AjouterBouton(fenetreBienvenue, "start", "Appuyez pour continuer", 170, 450, 160, 50);
			Finfenetre(fenetreBienvenue);
end CreerFenetreBienvenue;

procedure CreeFenetreDifficulte(FenetreDifficultee : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de difficulté}

begin
		fenetreDifficulte := DebutFenetre("Anti-Virus : Choix difficulté", 500, 500);
			-- Titre			
			Ajoutertexte(fenetreDifficulte, "titreDifficulte", "Choix difficulté",0,0,100,100);
			
			-- Boutons
			AjouterBouton(fenetreDifficulte,"starter","Starter",50,0,50,50);
			AjouterBouton(fenetreDifficulte,"junior","Junior",50,100,50,50);
			AjouterBouton(fenetreDifficulte,"expert","Expert",50,150,50,50);
			AjouterBouton(fenetreDifficulte,"master","Master",50,200,50,50);
			AjouterBouton(fenetreDifficulte,"wizard","Wizard",50,250,50,50);

		FinFenetre(fenetreDifficulte);
end CreeFenetreDifficulte;


procedure CreeFenetreDifficulte(FenetreDifficulte : out TR_Fenetre);
-- {} => {Créer la fenêtre de choix de difficulté}

procedure CreerFenetreStarter(fenetreStarter : out TR_Fenetre);
-- {} => {Créer la fenêtre de choix de niveau de difficulté starter}

procedure CreerFenetreJunior(fenetreJunior : out TR_Fenetre);
-- {} => {Créer la fenêtre de choix de niveau de difficulté junior}

procedure CreerFenetreExpert(fenetreExpert : out TR_Fenetre);
-- {} => {Créer la fenêtre de choix de niveau de difficulté expert}

procedure CreerFenetreMaster(fenetreMaster : out TR_Fenetre);
-- {} => {Créer la fenêtre de choix de niveau de difficulté master}

procedure CreerFenetreWizard(fenetreWizard : out TR_Fenetre);
-- {} => {Créer la fenêtre de choix de niveau de difficulté wizard}


end p_graphique;
