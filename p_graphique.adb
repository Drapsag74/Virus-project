
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
				AjouterBouton(fenetreBienvenue, "start", "Jouer", 170, 450, 160, 50);
			Finfenetre(fenetreBienvenue);
end CreerFenetreBienvenue;

procedure CreerFenetreDifficulte(FenetreDifficulte : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de difficulté}

begin
		fenetreDifficulte := DebutFenetre("Anti-Virus : Choix difficulte", 500, 500);

			-- Titre
			Ajoutertexte(fenetreDifficulte, "titreDifficulte", "Choix difficulte",125,50,300,100);
			ChangerCouleurTexte(fenetreDifficulte,"titreDifficulte", FL_TOMATO);
			ChangerTailleTexte(fenetreDifficulte, "titreDifficulte", FL_LARGE_SIZE);
			ChangerStyleTexte(fenetreDifficulte, "titreDifficulte",FL_FIXEDBOLDITALIC_STYLE);

			-- Boutons Difficulte
				--Starter
				AjouterBouton(fenetreDifficulte,"starter","Starter",200,150,100,50);
				ChangerCouleurTexte(fenetreDifficulte,"starter", FL_CHARTREUSE);
				ChangerTailleTexte(fenetreDifficulte, "starter", FL_MEDIUM_SIZE);
				ChangerStyleTexte(fenetreDifficulte, "starter",FL_BOLD_STYLE);
				--Junior
				AjouterBouton(fenetreDifficulte,"junior","Junior",200,225,100,50);
				ChangerCouleurTexte(fenetreDifficulte,"junior", FL_PALEGREEN);
				ChangerTailleTexte(fenetreDifficulte, "junior", FL_MEDIUM_SIZE);
				ChangerStyleTexte(fenetreDifficulte, "junior",FL_BOLD_STYLE);
				--Expert
				AjouterBouton(fenetreDifficulte,"expert","Expert",200,300,100,50);
				ChangerCouleurTexte(fenetreDifficulte,"expert", FL_DARKGOLD);
				ChangerTailleTexte(fenetreDifficulte, "expert", FL_MEDIUM_SIZE);
				ChangerStyleTexte(fenetreDifficulte, "expert",FL_BOLD_STYLE);
				--Master
				AjouterBouton(fenetreDifficulte,"master","Master",200,375,100,50);
				ChangerCouleurTexte(fenetreDifficulte,"master", FL_INDIANRED);
				ChangerTailleTexte(fenetreDifficulte, "master", FL_MEDIUM_SIZE);
				ChangerStyleTexte(fenetreDifficulte, "master",FL_BOLD_STYLE);
				--Wizard
				AjouterBouton(fenetreDifficulte,"wizard","Wizard",200,450,100,50);
				ChangerCouleurTexte(fenetreDifficulte,"wizard", FL_RED);
				ChangerTailleTexte(fenetreDifficulte, "wizard", FL_MEDIUM_SIZE);
				ChangerStyleTexte(fenetreDifficulte, "wizard",FL_BOLD_STYLE);

		FinFenetre(fenetreDifficulte);
end CreerFenetreDifficulte;




procedure CreerFenetreStarter(fenetreStarter : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de niveau de difficulté starter}

begin
	fenetreStarter := DebutFenetre("Anti-Virus : Choix du niveau", 1000, 700);
		--background
		AjouterBouton(fenetreStarter, "backgroundStarter", "", 0, 0, 1000, 800);
		ChangerEtatBouton(fenetreStarter, "backgroundStarter", arret);
		ChangerCouleurFond(fenetreStarter, "backgroundStarter", FL_LEFT_BCOL);
		--titre choix du niveau
		AjouterTexte(fenetreStarter, "titreStarter", "Choix du niveau", 400, 30, 300,50);
		ChangerCouleurTexte(fenetreStarter,"titreStarter", FL_TOMATO);
		ChangerTailleTexte(fenetreStarter, "titreStarter", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreStarter, "titreStarter",FL_BOLD_STYLE);
		ChangerCouleurFond(fenetreStarter, "titreStarter", FL_LEFT_BCOL);
		--bouton de choix de niveau
		AjouterBoutonImage(fenetreStarter, "1", "Niveau 1", 100 ,100,200,200);
		ChangerImageBouton(fenetreStarter, "1", "img/niveaux/niveau1.xpm");
		AjouterBoutonImage(fenetreStarter, "2", "Niveau 2", 400,100,200,200);
		ChangerImageBouton(fenetreStarter, "2", "img/niveaux/niveau2.xpm");
		AjouterBoutonImage(fenetreStarter, "3", "Niveau 3", 700,100,200,200);
		ChangerImageBouton(fenetreStarter, "3", "img/niveaux/niveau3.xpm");
		AjouterBoutonImage(fenetreStarter, "4", "Niveau 4", 250,350,200,200);
		ChangerImageBouton(fenetreStarter, "4", "img/niveaux/niveau4.xpm");
		AjouterBoutonImage(fenetreStarter, "5", "Niveau 5", 550,350,200,200);
		ChangerImageBouton(fenetreStarter, "5", "img/niveaux/niveau5.xpm");
		--bouton retour
		AjouterBouton(fenetreStarter, "retour", "Retour", 450, 640, 100, 50);
	FinFenetre(fenetreStarter);
end CreerFenetreStarter;

procedure CreerFenetreJunior(fenetreJunior : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de niveau de difficulté junior}

begin
   fenetreJunior := DebutFenetre("Anti-Virus : Choix du niveau", 1000, 700);
	   --background
	   AjouterBouton(fenetreJunior, "backgroundJunior", "", 0, 0, 1000, 800);
	   ChangerEtatBouton(fenetreJunior, "backgroundJunior", arret);
	   ChangerCouleurFond(fenetreJunior, "backgroundJunior", FL_LEFT_BCOL);
		--titre choix du niveau
		AjouterTexte(fenetreJunior, "titreJunior", "Choix du niveau", 400, 30, 300,50);
		ChangerCouleurTexte(fenetreJunior,"titreJunior", FL_TOMATO);
		ChangerTailleTexte(fenetreJunior, "titreJunior", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreJunior, "titreJunior",FL_BOLD_STYLE);
		ChangerCouleurFond(fenetreJunior, "titreJunior", FL_LEFT_BCOL);
		--bouton de choix de niveau
		AjouterBoutonImage(fenetreJunior, "6", "Niveau 6", 100 ,100,200,200);
		ChangerImageBouton(fenetreJunior, "6", "img/niveaux/niveau6.xpm");
		AjouterBoutonImage(fenetreJunior, "7", "Niveau 7", 400,100,200,200);
		ChangerImageBouton(fenetreJunior, "7", "img/niveaux/niveau7.xpm");
		AjouterBoutonImage(fenetreJunior, "8", "Niveau 8", 700,100,200,200);
		ChangerImageBouton(fenetreJunior, "8", "img/niveaux/niveau8.xpm");
		AjouterBoutonImage(fenetreJunior, "9", "Niveau 9", 250,350,200,200);
		ChangerImageBouton(fenetreJunior, "9", "img/niveaux/niveau9.xpm");
		AjouterBoutonImage(fenetreJunior, "10", "Niveau 10", 550,350,200,200);
		ChangerImageBouton(fenetreJunior, "10", "img/niveaux/niveau10.xpm");
		--bouton retour
		AjouterBouton(fenetreJunior, "retour", "Retour", 450, 640, 100, 50);
	FinFenetre(fenetreJunior);
end CreerFenetreJunior;

procedure CreerFenetreExpert(fenetreExpert : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de niveau de difficulté expert}

begin
   fenetreExpert := DebutFenetre("Anti-Virus : Choix du niveau", 1000, 700);
		--background
		AjouterBouton(fenetreExpert, "fenetreExpert", "", 0, 0, 1000, 800);
		ChangerEtatBouton(fenetreExpert, "fenetreExpert", arret);
		ChangerCouleurFond(fenetreExpert, "fenetreExpert", FL_LEFT_BCOL);
		--titre choix du niveau
		AjouterTexte(fenetreExpert, "titreExpert", "Choix du niveau", 400, 30, 300,50);
		ChangerCouleurTexte(fenetreExpert,"titreExpert", FL_TOMATO);
		ChangerTailleTexte(fenetreExpert, "titreExpert", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreExpert, "titreExpert",FL_BOLD_STYLE);
		ChangerCouleurFond(fenetreExpert, "titreExpert", FL_LEFT_BCOL);
		--bouton de choix de niveau
		AjouterBoutonImage(fenetreExpert, "11", "Niveau 11", 100,100,200,200);
		ChangerImageBouton(fenetreExpert, "11", "img/niveaux/niveau11.xpm");
		AjouterBoutonImage(fenetreExpert, "12", "Niveau 12", 400,100,200,200);
		ChangerImageBouton(fenetreExpert, "12", "img/niveaux/niveau12.xpm");
		AjouterBoutonImage(fenetreExpert, "13", "Niveau 13", 700,100,200,200);
		ChangerImageBouton(fenetreExpert, "13", "img/niveaux/niveau13.xpm");
		AjouterBoutonImage(fenetreExpert, "14", "Niveau 14", 250,350,200,200);
		ChangerImageBouton(fenetreExpert, "14", "img/niveaux/niveau14.xpm");
		AjouterBoutonImage(fenetreExpert, "15", "Niveau 15", 550,350,200,200);
		ChangerImageBouton(fenetreExpert, "15", "img/niveaux/niveau15.xpm");
		--bouton retour
		AjouterBouton(fenetreExpert, "retour", "Retour", 450, 640, 100, 50);
	FinFenetre(fenetreExpert);
end CreerFenetreExpert;

procedure CreerFenetreMaster(fenetreMaster : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de niveau de difficulté master}

begin
	fenetreMaster := DebutFenetre("Anti-Virus : Choix du niveau", 1000, 700);
		--background
		AjouterBouton(fenetreMaster, "fenetreMaster", "", 0, 0, 1000, 800);
		ChangerEtatBouton(fenetreMaster, "fenetreMaster", arret);
		ChangerCouleurFond(fenetreMaster, "fenetreMaster", FL_LEFT_BCOL);
		-- titre choix du niveau
		AjouterTexte(fenetreMaster, "titreMaster", "Choix du niveau", 400, 30, 300,50);
		ChangerCouleurTexte(fenetreMaster,"titreMaster", FL_TOMATO);
		ChangerTailleTexte(fenetreMaster, "titreMaster", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreMaster, "titreMaster",FL_BOLD_STYLE);
		ChangerCouleurFond(fenetreMaster, "titreMaster", FL_LEFT_BCOL);
		-- bouton de choix de niveau
		AjouterBoutonImage(fenetreMaster, "16", "Niveau 16", 250,100,200,200);
		ChangerImageBouton(fenetreMaster, "16", "img/niveaux/niveau16.xpm");
		AjouterBoutonImage(fenetreMaster, "17", "Niveau 17", 550,100,200,200);
		ChangerImageBouton(fenetreMaster, "17", "img/niveaux/niveau17.xpm");
		AjouterBoutonImage(fenetreMaster, "18", "Niveau 18", 400,350,200,200);
		ChangerImageBouton(fenetreMaster, "18", "img/niveaux/niveau18.xpm");
		--bouton retour
		AjouterBouton(fenetreMaster, "retour", "Retour", 450, 640, 100, 50);
	FinFenetre(fenetreMaster);
end CreerFenetreMaster;

procedure CreerFenetreWizard(fenetreWizard : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de niveau de difficulté wizard}

begin
	fenetreWizard := DebutFenetre("Anti-Virus : Choix du niveau", 1000, 700);
		--background
		AjouterBouton(fenetreWizard, "fenetreWizard", "", 0, 0, 1000, 800);
		ChangerEtatBouton(fenetreWizard, "fenetreWizard", arret);
		ChangerCouleurFond(fenetreWizard, "fenetreWizard", FL_LEFT_BCOL);
		--titre choix du niveau
		AjouterTexte(fenetreWizard, "titreWizard", "Choix du niveau", 400, 30, 300,50);
		ChangerCouleurTexte(fenetreWizard,"titreWizard", FL_TOMATO);
		ChangerTailleTexte(fenetreWizard, "titreWizard", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreWizard, "titreWizard",FL_BOLD_STYLE);
		ChangerCouleurFond(fenetreWizard, "titreWizard", FL_LEFT_BCOL);
		-- bouton de choix de niveau
		AjouterBoutonImage(fenetreWizard, "19", "Niveau 19",250 ,150,200,200);
		ChangerImageBouton(fenetreWizard, "19", "img/niveaux/niveau19.xpm");
		AjouterBoutonImage(fenetreWizard, "20", "Niveau 20", 550,150,200,200);
		ChangerImageBouton(fenetreWizard, "20", "img/niveaux/niveau20.xpm");
		--bouton retour
		AjouterBouton(fenetreWizard, "retour", "Retour", 450, 640, 100, 50);
	FinFenetre(fenetreWizard);
end CreerFenetreWizard;


procedure CreerFenetreRegles(FenetreRegles : out TR_Fenetre) is
--{} => {Affichage du plateau de jeu}
begin

	fenetreRegles := DebutFenetre("Anti-Virus : Regles", 1000, 750);
	AjouterTexteAscenseur(fenetreRegles, "Regle","","", 250, 50, 500, 650);
	ChangerContenu(fenetreRegles, "Regle","1. Faites circuler les pieces colories comme indique pour manoeuvrer le virus (la piece rouge) vers la sortie :" & character'val(10) &"-les pieces peuvent uniquement etre glissee en diagonale. VOus ne pouvez pas faire tourner."& character'val(10) &"-si necessaire, vous pouvez deplacer plusieurs pieces en une seule fois."& character'val(10) &"-les pieces blanches sont fixes"& character'val(10) & character'val(10) & "2. Vous avez resolu le puzzle lorsque vous pouvez forcer le virus vers la sortie"& character'val(10) &"et l'expulser du plateau de jeu. Amusez vous bien !" );

	AjouterBouton(fenetreRegles, "fermerRegles", "Fermer", 475, 725, 50, 30);
	FinFenetre(fenetreRegles);
		
end CreerFenetreRegles;


procedure CreerFenetreJeu(FenetreJeu : out TR_Fenetre) is
--{} => {Affichage des règles}
	ligne : integer := T_Lig'first;
	colonne : character;
	x, y : integer;
	nomCase : String(1..2);
begin

	fenetreJeu := DebutFenetre("Anti-Virus", 1000, 750);

		--Background
		AjouterBoutonImage(fenetreJeu, "background", "", 0, 0, 1000, 800);
		ChangerImageBouton(fenetreJeu, "background", "img/background.xpm");
		ChangerEtatBouton(fenetreJeu, "background", arret);

		--Titre et style titre
		AjouterTexte(fenetreJeu, "titre en jeu", "ANTI-VIRUS",425,25,200,50);
		ChangerCouleurTexte(fenetreJeu,"titre en jeu", FL_TOMATO);
		ChangerTailleTexte(fenetreJeu, "titre en jeu", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreJeu, "titre en jeu",FL_BOLD_STYLE);
		ChangerCouleurFond(fenetreJeu, "titre en jeu", FL_LEFT_BCOL);

		--Création du plateau de jeu
		y := 100;
		while ligne <= T_Lig'last loop
			colonne := T_Col'first;

			-- Affichage des lignes paires
			if ligne mod 2 = 0 then
				x := 230;
				colonne := Character'val(Character'pos(colonne) + 1);

				while colonne < T_Col'last  loop
					nomCase := colonne & T_Lig'image(ligne)(2);
					AjouterBoutonRond(fenetreJeu, nomCase , "", x, y, 100, 100);
					x := x + 140;
					colonne := Character'val(Character'pos(colonne) + 2);
				end loop;

			-- Affichage des lignes impaires
			else
				x := 150;

				while colonne <= T_Col'last loop
					nomCase := colonne & T_Lig'image(ligne)(2);
					AjouterBoutonRond(fenetreJeu, nomCase, "", x, y, 100, 100);
					x := x + 140;
					colonne := Character'val(Character'pos(colonne) + 2);
				end loop;
			end if;

			y := y + 70;
			ligne := ligne + 1;
		end loop;

		--Création des boutons directionnels
		AjouterBoutonImage(fenetreJeu, "hg", "", 730, 235, 50, 50);
		ChangerImageBouton(fenetreJeu, "hg", "img/hg.xpm");
		ChangerCouleurFond(fenetreJeu, "hg", FL_TOP_BCOL);
		AjouterBoutonImage(fenetreJeu, "hd", "", 784, 235, 50, 50);
		ChangerImageBouton(fenetreJeu, "hd", "img/hd.xpm");
		ChangerCouleurFond(fenetreJeu, "hd", FL_TOP_BCOL);
		AjouterBoutonImage(fenetreJeu, "bd", "", 784, 290, 50, 50);
		ChangerImageBouton(fenetreJeu, "bd", "img/bd.xpm");
		ChangerCouleurFond(fenetreJeu, "bd", FL_TOP_BCOL);
		AjouterBoutonImage(fenetreJeu, "bg", "", 730, 290, 50, 50);
		ChangerImageBouton(fenetreJeu, "bg", "img/bg.xpm");
		ChangerCouleurFond(fenetreJeu, "bg", FL_TOP_BCOL);

		--Création des zones de texte informatives
		AjouterTexte(fenetreJeu, "info1", "", 700, 410, 175, 25);
		ChangerCouleurFond(fenetreJeu, "info1", FL_LEFT_BCOL);
		AjouterTexte(fenetreJeu, "info2", "", 700, 428, 175, 24);
		ChangerCouleurFond(fenetreJeu, "info2", FL_LEFT_BCOL);
		AjouterTexte(fenetreJeu, "score", "       Score : 1000", 700, 448, 175, 24);
		ChangerCouleurFond(fenetreJeu, "score", FL_LEFT_BCOL);

		--Création du bouton quitter
		AjouterBouton(fenetreJeu, "quitter", "Quitter", 700, 600, 90, 25);
		ChangerCouleurFond(fenetreJeu, "quitter", FL_TOP_BCOL);

		--Création du bouton règles
		AjouterBouton(fenetreJeu, "regles", "Regles", 793, 600, 90, 25);
		ChangerCouleurFond(fenetreJeu, "regles", FL_TOP_BCOL);

		--Création du bouton de Jeanne
		AjouterBoutonImage(fenetreJeu, "jeanne", "", 705, 485, 171, 105);
		ChangerImageBouton(fenetreJeu, "jeanne", "img/jeanne.xpm");

		--Création du bouton rollback
		AjouterBoutonImage(fenetreJeu, "rollback", "", 757, 344, 50, 50);
		ChangerImageBouton(fenetreJeu, "rollback", "img/rollback.xpm");
		ChangerCouleurFond(fenetreJeu, "rollback", FL_TOP_BCOL);

		--Création de l'horloge
		AjouterHorloge(fenetreJeu, "horloge", "", 730, 110, 100, 100);
		ChangerCouleurFond(fenetreJeu, "horloge", FL_LEFT_BCOL);

	FinFenetre(FenetreJeu);

end CreerFenetreJeu;

procedure CreerFenetrePseudo(fenetrePseudo : out TR_Fenetre) is
--{} => {Crée la fenêtre demandant le pseudo du joueur quand il a gagné pour enregistrer son score}

begin

	fenetrePseudo := DebutFenetre("Anti-Virus : Pseudo", 300, 100);
		AjouterTexte(fenetrePseudo, "titrePseudo", "   Quel est votre pseudo ?", 50,20,200,20);
		AjouterChamp(fenetrePseudo, "champPseudo", "", "", 50, 70, 80, 20);
		AjouterBouton(fenetrePseudo, "valPseudo", "Valider", 134, 70, 100, 20);
	FinFenetre(fenetrePseudo);

end CreerFenetrePseudo;

procedure CreerFenetreGagne(FenetreGagne : out TR_Fenetre; niveau : in Integer; Score : in integer) is
--{} => {Créé la fenêtre d'un niveau réussis}
	--pseudo : String(1..100);
	--scoreMeilleurJoueur : integer;
	--lgPseudo : integer;
begin
	--pseudo := (others => ' ');
	--meilleurscore(niveau, scoreMeilleurJoueur, lgPseudo, pseudo);
	fenetreGagne := DebutFenetre("Anti-Virus : Niveau reussis!", 305, 125);
		-- titre choix du niveau
		AjouterTexte(fenetreGagne, "titreGagne", "Niveau Reussi !", 103, 10, 100,25);
		ChangerCouleurTexte(fenetreGagne,"titreGagne", FL_TOMATO);
		ChangerTailleTexte(fenetreGagne, "titreGagne", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreGagne, "titreGagne",FL_BOLD_STYLE);
		--AjouterTexte(fenetreGagne, "meilleur score", "Meilleur score : "&integer'image(Score)&" réalisé par "&pseudo, 0, 10, 305,0);
		AjouterTexte(fenetreGagne, "MessageGagne", "Niveau"&integer'image(niveau)&" reussi ! " ,98,50,125,25);
		AjouterTexte(fenetreGagne, "Score", "Votre score est de"&image(Score), 80, 75, 200, 25);
		AjouterBouton(fenetreGagne, "rejouer", "Revenir au menu", 25, 120, 125, 30);
		AjouterBouton(fenetreGagne, "quitter", "Quitter", 155, 120, 125, 30);
	FinFenetre(FenetreGagne);

end CreerFenetreGagne;

procedure CreerFenetreAbandon(FenetreAbandon : in out TR_Fenetre) is
--{} => {Créé la fenêtre d'abadon}

begin

	fenetreAbandon := DebutFenetre("Anti-Virus : lache !", 600, 300);
		AjouterTexte(fenetreAbandon, "Abandontxt", "Pourquoi nous quittes tu si tot ?", 200, 50, 250, 100);
		ChangerStyleTexte(fenetreAbandon, "Abandontxt",FL_BOLD_STYLE);
		AjouterBouton(fenetreAbandon, "quitter", "Je suis faible et j'abandonne",10,250, 285, 50 );
		AjouterBouton(fenetreAbandon, "rejouer", "Je prend mon courage a 2 mains et je rejoue",305 ,250,285,50);
	FinFenetre(FenetreAbandon);

end CreerFenetreAbandon;

procedure MiseAJourGrille(FenetreJeu : in out TR_Fenetre; V : in out TV_Virus) is
--{} => {Met à jour l'affichage des cases de la grille}

	nomCase : String(1..2);
	ligne : Integer := T_Lig'first;
	Colonne : character;
begin

	--Réinitialisation de toutes les cases
	while ligne <= T_Lig'last loop
		colonne := T_Col'first;

		-- Réinitialisation des lignes paires
		if ligne mod 2 = 0 then

			colonne := Character'val(Character'pos(colonne) + 1);
			while colonne < T_Col'last  loop
				nomCase := colonne & T_Lig'image(ligne)(2);
				ChangerCouleurFond(fenetreJeu, nomCase, FL_BOTTOM_BCOL);
				ChangerEtatBouton(fenetreJeu, nomCase, arret);
				colonne := Character'val(Character'pos(colonne) + 2);
			end loop;

		-- Réinitialisation des lignes impaires
		else

			while colonne <= T_Col'last loop
				nomCase := colonne & T_Lig'image(ligne)(2);
				ChangerCouleurFond(fenetreJeu, nomCase, FL_BOTTOM_BCOL);
				ChangerEtatBouton(fenetreJeu, nomCase, arret);
				colonne := Character'val(Character'pos(colonne) + 2);
			end loop;

		end if;

		ligne := ligne + 1;
	end loop;

	--Affichage des cases (i : ligne, j : colonne)
	for i in T_Lig'range loop
		for j in T_Col'range loop
			if V(i,j) /= vide then
				-- On ne peu pas mettre les boutons en etat marche ici, bug bibliotheque ?
				nomCase := j & T_Lig'image(i)(2);
				if V(i,j) = rouge then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_RED);
					ChangerEtatBouton(fenetreJeu, nomCase, marche);
				elsif V(i,j) = turquoise then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_DARKCYAN);
					ChangerEtatBouton(fenetreJeu, nomCase, marche);
				elsif V(i,j) = orange then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_DARKORANGE);
					ChangerEtatBouton(fenetreJeu, nomCase, marche);
				elsif V(i,j) = rose then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_ORCHID);
					ChangerEtatBouton(fenetreJeu, nomCase, marche);
				elsif V(i,j) = marron then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_DARKTOMATO);
					ChangerEtatBouton(fenetreJeu, nomCase, marche);
				elsif V(i,j) = bleu then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_CYAN);
					ChangerEtatBouton(fenetreJeu, nomCase, marche);
				elsif V(i,j) = violet then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_DARKVIOLET);
					ChangerEtatBouton(fenetreJeu, nomCase, marche);
				elsif V(i,j) = vert then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_CHARTREUSE);
					ChangerEtatBouton(fenetreJeu, nomCase, marche);
				elsif V(i,j) = jaune then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_YELLOW);
					ChangerEtatBouton(fenetreJeu, nomCase, marche);
				else -- case blanc
					ChangerCouleurFond(fenetreJeu, nomCase, FL_WHITE);
					ChangerEtatBouton(fenetreJeu, nomCase, arret);
				end if;
			end if;
		end loop;
	end loop;

end MiseAJourGrille;

function InverserMouvement(mv : in T_Direction) return T_Direction is
--{String(1..2)} => {Retourne l'inverse du mouvement donné}
begin
	if mv = hg then return bd;
	elsif mv = hd then return bg;
	elsif mv = bg then return hd;
	else return hg;
	end if;
end InverserMouvement;

procedure AjouterScore(score : in integer; pseudo : in String; niveau : in natural) is
--{} => {Ajoute au fichier du niveau niveau le score score du pseudo pseudo}
	f : Text_IO.file_type;
begin
	Open(f, append_file, "score/"&integer'image(niveau));
		put_line(f, pseudo);
		put_line(f, integer'image(score));
	Close(f);
end AjouterScore;

procedure MeilleurScore(niveau : in natural; score : out integer; lgPseudo : out integer; pseudo : out String) is
--{} => {Resultat : meilleur score et son pseudo}
	f : Text_IO.file_type;
	max : integer := 0;
	pseudoActuel : String(1..100);
	scoreActuel : String(1..4);
	lg1, lg2 : integer;
begin
	Open(f, in_file, "score/"&integer'image(niveau));
	
	while not end_of_file(f) loop
		get_line(f, pseudoactuel, lg1);
		get_line(f, scoreactuel, lg2);	
		if integer'value(scoreActuel) > max then
			score := integer'value(scoreActuel(1..lg2));
			pseudo := pseudoActuel;
			lgPseudo := lg1;
		end if;
		
	end loop;
	
	Close(f);
end MeilleurScore;

procedure finJeu(fenetreJeu : in out TR_Fenetre) is
-- {} => {désactive tous les boutons sauf le bouton quitter}
	ligne : integer := T_Lig'first;
	colonne : character;
	nomCase : string(1..2);
begin

	-- Désactiver les boutons de pieces
	while ligne <= T_Lig'last loop
		colonne := T_Col'first;

		-- Désactivation des boutons des lignes paires
		if ligne mod 2 = 0 then

			colonne := Character'val(Character'pos(colonne) + 1);
			while colonne < T_Col'last  loop
				nomCase := colonne & T_Lig'image(ligne)(2);
				ChangerEtatBouton(fenetreJeu, nomCase, arret);
				colonne := Character'val(Character'pos(colonne) + 2);
			end loop;

		-- Désactivation des boutons des lignes impaires
		else

			while colonne <= T_Col'last loop
				nomCase := colonne & T_Lig'image(ligne)(2);
				ChangerEtatBouton(fenetreJeu, nomCase, arret);
				colonne := Character'val(Character'pos(colonne) + 2);
			end loop;

		end if;

		ligne := ligne + 1;
	end loop;
	
	-- Désactiver les boutons de direction
	ChangerEtatBouton(fenetreJeu, "hg", arret);
	ChangerEtatBouton(fenetreJeu, "hd", arret);
	ChangerEtatBouton(fenetreJeu, "bg", arret);
	ChangerEtatBouton(fenetreJeu, "bd", arret);

	-- Désactiver Jeanne
	ChangerEtatBouton(fenetreJeu, "Jeanne", arret);

end finJeu;

end p_graphique;
