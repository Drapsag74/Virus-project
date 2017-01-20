
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
				ChangerCouleurTexte(fenetreDifficulte,"junior", FL_CHARTREUSE);
				ChangerTailleTexte(fenetreDifficulte, "junior", FL_MEDIUM_SIZE);
				ChangerStyleTexte(fenetreDifficulte, "junior",FL_BOLD_STYLE);
				--Expert
				AjouterBouton(fenetreDifficulte,"expert","Expert",200,300,100,50);
				ChangerCouleurTexte(fenetreDifficulte,"expert", FL_CHARTREUSE);
				ChangerTailleTexte(fenetreDifficulte, "expert", FL_MEDIUM_SIZE);
				ChangerStyleTexte(fenetreDifficulte, "expert",FL_BOLD_STYLE);
				--Master
				AjouterBouton(fenetreDifficulte,"master","Master",200,375,100,50);
				ChangerCouleurTexte(fenetreDifficulte,"master", FL_CHARTREUSE);
				ChangerTailleTexte(fenetreDifficulte, "master", FL_MEDIUM_SIZE);
				ChangerStyleTexte(fenetreDifficulte, "master",FL_BOLD_STYLE);
				--Wizard
				AjouterBouton(fenetreDifficulte,"wizard","Wizard",200,450,100,50);
				ChangerCouleurTexte(fenetreDifficulte,"wizard", FL_CHARTREUSE);
				ChangerTailleTexte(fenetreDifficulte, "wizard", FL_MEDIUM_SIZE);
				ChangerStyleTexte(fenetreDifficulte, "wizard",FL_BOLD_STYLE);

		FinFenetre(fenetreDifficulte);
end CreerFenetreDifficulte;




procedure CreerFenetreStarter(fenetreStarter : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de niveau de difficulté starter}

begin
	fenetreStarter := DebutFenetre("Anti-Virus : Choix du niveau", 1000, 700);
		--titre choix du niveau
		AjouterTexte(fenetreStarter, "titreStarter", "Choix du niveau", 400, 30, 300,50);
		ChangerCouleurTexte(fenetreStarter,"titreStarter", FL_TOMATO);
		ChangerTailleTexte(fenetreStarter, "titreStarter", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreStarter, "titreStarter",FL_BOLD_STYLE);
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
		--titre choix du niveau
		AjouterTexte(fenetreJunior, "titreJunior", "Choix du niveau", 400, 30, 300,50);
		ChangerCouleurTexte(fenetreJunior,"titreJunior", FL_TOMATO);
		ChangerTailleTexte(fenetreJunior, "titreJunior", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreJunior, "titreJunior",FL_BOLD_STYLE);
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
		--titre choix du niveau
		AjouterTexte(fenetreExpert, "titreExpert", "Choix du niveau", 400, 30, 300,50);
		ChangerCouleurTexte(fenetreExpert,"titreExpert", FL_TOMATO);
		ChangerTailleTexte(fenetreExpert, "titreExpert", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreExpert, "titreExpert",FL_BOLD_STYLE);
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
		-- titre choix du niveau
		AjouterTexte(fenetreMaster, "titreMaster", "Choix du niveau", 400, 30, 300,50);
		ChangerCouleurTexte(fenetreMaster,"titreMaster", FL_TOMATO);
		ChangerTailleTexte(fenetreMaster, "titreMaster", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreMaster, "titreMaster",FL_BOLD_STYLE);
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
		--titre choix du niveau
		AjouterTexte(fenetreWizard, "titreWizard", "Choix du niveau", 400, 30, 300,50);
		ChangerCouleurTexte(fenetreWizard,"titreWizard", FL_TOMATO);
		ChangerTailleTexte(fenetreWizard, "titreWizard", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreWizard, "titreWizard",FL_BOLD_STYLE);
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
	AjouterTexte(fenetreRegles, "Regle1", "Le jeu comporte 9 pièces de couleur: la pièce rouge (le virus à éliminer)",100, 10, 800, 20);
	AjouterTexte(fenetreRegles, "Regle2", "ainsi que 8 pièces mobiles de couleurs différentes (turquoise," ,100, 40, 800, 20);
	AjouterTexte(fenetreRegles, "Regle3", "orange, rose, marron, bleu, violet, vert et jaune). Les pièces sont de",100, 70, 800, 20);
	AjouterTexte(fenetreRegles, "Regle4", "taille et de formes différentes. Elles occupent 2 ou 3 cases lorqu’elles",100, 100, 800, 20);
	AjouterTexte(fenetreRegles, "Regle5", "sont présentes sur la grille. ll existe également 2 petites pièces blanches qui occupent chacune une case et",100, 130, 800, 20);
	AjouterTexte(fenetreRegles, "Regle6", "qui ne peuvent pas être déplacées au cours de la partie. Elles",100, 160, 800, 20);
	AjouterTexte(fenetreRegles, "Regle7", "gênent donc les pièces de couleur dans leurs déplacements sur la grille. Les pièces de couleur se déplacent une par une en diagonale (elles ne peuvent",100, 190, 800, 20);
	AjouterTexte(fenetreRegles, "Regle8", "pas se déplacer horizontalement ni verticalement, ni pivoter). Il y a donc 4",100, 220, 800, 20);
	AjouterTexte(fenetreRegles, "Regle9", "directions possibles: bas/gauche, haut/gauche, bas/droite et haut/droite. Pour",100, 250, 800, 20);
	AjouterTexte(fenetreRegles, "Regle10", "que le déplacement soit possible, il faut que les cases de destination existent et",100, 280, 800, 20);
	AjouterTexte(fenetreRegles, "Regle11", "soient libres Le début d’une partie est donné par une configuration initiale qui indique",100, 310, 800, 20);
	AjouterTexte(fenetreRegles, "Regle12", "quelles pièces sont utilisées et comment elles sont placées. Le virus",100, 340, 800, 20);
	AjouterTexte(fenetreRegles, "Regle13", "(pièce rouge) est bien sûr toujours présentet occupe toujours 2 cases." ,100, 370, 800, 20);
	AjouterTexte(fenetreRegles, "Regle14", "Une configuration comporte 0, 1 ou 2 pièces blanches fixes.",100, 400, 800, 20);
	AjouterTexte(fenetreRegles, "Regle15", "Le but est de déplacer les pièces afin de permettre au virusde sortir",100, 430, 800, 20);
	AjouterTexte(fenetreRegles, "Regle16", "par le coin situé en haut à gauche.",100, 460, 800, 20);


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
		AjouterBoutonImage(fenetreJeu, "hg", "", 720, 250, 50, 50);
		ChangerImageBouton(fenetreJeu, "hg", "img/hg.xpm");
		AjouterBoutonImage(fenetreJeu, "hd", "", 774, 250, 50, 50);
		ChangerImageBouton(fenetreJeu, "hd", "img/hd.xpm");
		AjouterBoutonImage(fenetreJeu, "bd", "", 774, 305, 50, 50);
		ChangerImageBouton(fenetreJeu, "bd", "img/bd.xpm");
		AjouterBoutonImage(fenetreJeu, "bg", "", 720, 305, 50, 50);
		ChangerImageBouton(fenetreJeu, "bg", "img/bg.xpm");

		--Création des zones de texte informatives
		AjouterTexte(fenetreJeu, "info1", "", 700, 410, 175, 25);
		AjouterTexte(fenetreJeu, "info2", "", 700, 435, 175, 24);
		AjouterTexte(fenetreJeu, "score", "       Score : 1000", 700, 460, 175, 24);

		--Création du bouton quitter
		AjouterBouton(fenetreJeu, "quitter", "Quitter", 700, 600, 90, 25);

		--Création du bouton règles
		AjouterBouton(fenetreJeu, "regles", "Regles", 793, 600, 90, 25);

		--Création du bouton de Jeanne
		AjouterBoutonImage(fenetreJeu, "jeanne", "", 705, 485, 171, 105);
		ChangerImageBouton(fenetreJeu, "jeanne", "img/jeanne.xpm");

		--Création du bouton rollback
		AjouterBoutonImage(fenetreJeu, "rollback", "", 747, 359, 50, 50);
		ChangerImageBouton(fenetreJeu, "rollback", "img/rollback.xpm");

		--Création de l'horloge
		AjouterHorloge(fenetreJeu, "horloge", "", 720, 115, 100, 100);

	FinFenetre(FenetreJeu);

end CreerFenetreJeu;

procedure CreerFenetreGagne(FenetreGagne : out TR_Fenetre; niveau : in Integer; Score : in Natural) is
--{} => {Créé la fenêtre d'un niveau réussis}

	message : string(1..18);

begin
	if niveau < 10 then
		message := "Niveau "&image(niveau)(2)&" Reussi ! ";
	else
		message := "Niveau "&image(niveau)(2..3)&"Reussi !";
	end if;

	fenetreGagne := DebutFenetre("Anti-Virus : Niveau réussis!", 500, 300);
		-- titre choix du niveau
		AjouterTexte(fenetreGagne, "titreGagne", "Niveau Reussi !", 100, 50, 300,50);
		ChangerCouleurTexte(fenetreGagne,"titreGagne", FL_TOMATO);
		ChangerTailleTexte(fenetreGagne, "titreGagne", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreGagne, "titreGagne",FL_BOLD_STYLE);
		AjouterTexte(fenetreGagne, "MessageGagne", message,100,50,300,50);
		AjouterTexte(fenetreGagne, "Score", "Votre score est de "&image(Score), 100,200, 300, 50);
		AjouterBouton(fenetreGagne, "rejouer", "Revenir au menu", 50,270, 225, 50);
		AjouterBouton(fenetreGagne, "quitter", "Quitter", 325, 270, 225, 50);
	FinFenetre(FenetreGagne);

end CreerFenetreGagne;

procedure CreerFenetreAbandon(FenetreAbandon : in out TR_Fenetre) is
--{} => {Créé la fenêtre d'abadon}

begin
	fenetreAbandon := DebutFenetre("Anti-Virus : lache !", 500, 300);
		AjouterTexte(fenetreAbandon, "Abandontxt", "Pour quoi nous quittes tu si tot ?", 150, 50, 250, 100);
		ChangerStyleTexte(fenetreAbandon, "Abandontxt",FL_BOLD_STYLE);
		AjouterBouton(fenetreAbandon, "quitter", "Je suis faible et j'abandonne",0,250, 250, 50 );
		AjouterBouton(fenetreAbandon, "rejouer", "Je prend ma vie a 2 mains et je rejoue",250 ,250,250,50);
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
