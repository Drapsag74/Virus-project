
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
			-- Boutons
			AjouterBouton(fenetreDifficulte,"starter","Starter",200,150,100,50);
			ChangerCouleurTexte(fenetreDifficulte,"starter", FL_CHARTREUSE);
			ChangerTailleTexte(fenetreDifficulte, "starter", FL_MEDIUM_SIZE);
			ChangerStyleTexte(fenetreDifficulte, "starter",FL_BOLD_STYLE);
			AjouterBouton(fenetreDifficulte,"junior","Junior",200,225,100,50);
			ChangerCouleurTexte(fenetreDifficulte,"junior", FL_CHARTREUSE);
			ChangerTailleTexte(fenetreDifficulte, "junior", FL_MEDIUM_SIZE);
			ChangerStyleTexte(fenetreDifficulte, "junior",FL_BOLD_STYLE);
			AjouterBouton(fenetreDifficulte,"expert","Expert",200,300,100,50);
			ChangerCouleurTexte(fenetreDifficulte,"expert", FL_CHARTREUSE);
			ChangerTailleTexte(fenetreDifficulte, "expert", FL_MEDIUM_SIZE);
			ChangerStyleTexte(fenetreDifficulte, "expert",FL_BOLD_STYLE);
			AjouterBouton(fenetreDifficulte,"master","Master",200,375,100,50);
			ChangerCouleurTexte(fenetreDifficulte,"master", FL_CHARTREUSE);
			ChangerTailleTexte(fenetreDifficulte, "master", FL_MEDIUM_SIZE);
			ChangerStyleTexte(fenetreDifficulte, "master",FL_BOLD_STYLE);
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
		AjouterTexte(fenetreStarter, "titreStarter", "Choix du niveau", 400, 75, 300,50);
		ChangerCouleurTexte(fenetreStarter,"titreStarter", FL_TOMATO);
		ChangerTailleTexte(fenetreStarter, "titreStarter", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreStarter, "titreStarter",FL_BOLD_STYLE);
		--bouton de choix de niveau	
		AjouterBouton(fenetreStarter, "1", "Niveau 1", 100 ,200,200,200);
		AjouterBouton(fenetreStarter, "2", "Niveau 2", 400,200,200,200);
		AjouterBouton(fenetreStarter, "3", "Niveau 3", 700,200,200,200);
		AjouterBouton(fenetreStarter, "4", "Niveau 4", 250,450,200,200);
		AjouterBouton(fenetreStarter, "5", "Niveau 5", 550,450,200,200);
	FinFenetre(fenetreStarter);
end CreerFenetreStarter;

procedure CreerFenetreJunior(fenetreJunior : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de niveau de difficulté junior}

begin
   fenetreJunior := DebutFenetre("Anti-Virus : Choix du niveau", 1000, 700);
		--titre choix du niveau
		AjouterTexte(fenetreJunior, "titreJunior", "Choix du niveau", 400, 75, 300,50);
		ChangerCouleurTexte(fenetreJunior,"titreJunior", FL_TOMATO);
		ChangerTailleTexte(fenetreJunior, "titreJunior", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreJunior, "titreJunior",FL_BOLD_STYLE);
		--bouton de choix de niveau	
		AjouterBouton(fenetreJunior, "6", "Niveau 6", 100 ,200,200,200);
		AjouterBouton(fenetreJunior, "7", "Niveau 7", 400,200,200,200);
		AjouterBouton(fenetreJunior, "8", "Niveau 8", 700,200,200,200);
		AjouterBouton(fenetreJunior, "9", "Niveau 9", 250,450,200,200);
		AjouterBouton(fenetreJunior, "10", "Niveau 10", 550,450,200,200);
	FinFenetre(fenetreJunior);
end CreerFenetreJunior;

procedure CreerFenetreExpert(fenetreExpert : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de niveau de difficulté expert}

begin
   fenetreExpert := DebutFenetre("Anti-Virus : Choix du niveau", 1000, 700);
		--titre choix du niveau
		AjouterTexte(fenetreExpert, "titreExpert", "Choix du niveau", 400, 75, 300,50);
		ChangerCouleurTexte(fenetreExpert,"titreExpert", FL_TOMATO);
		ChangerTailleTexte(fenetreExpert, "titreExpert", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreExpert, "titreExpert",FL_BOLD_STYLE);
		--bouton de choix de niveau	
		AjouterBouton(fenetreExpert, "11", "Niveau 11", 100,200,200,200);
		AjouterBouton(fenetreExpert, "12", "Niveau 12", 400,200,200,200);
		AjouterBouton(fenetreExpert, "13", "Niveau 13", 700,200,200,200);
		AjouterBouton(fenetreExpert, "14", "Niveau 14", 250,450,200,200);
		AjouterBouton(fenetreExpert, "15", "Niveau 15", 550,450,200,200);
	FinFenetre(fenetreExpert);
end CreerFenetreExpert;

procedure CreerFenetreMaster(fenetreMaster : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de niveau de difficulté master}

begin
	fenetreMaster := DebutFenetre("Anti-Virus : Choix du niveau", 1000, 700);
		-- titre choix du niveau
		AjouterTexte(fenetreMaster, "titreMaster", "Choix du niveau", 400, 75, 300,50);
		ChangerCouleurTexte(fenetreMaster,"titreMaster", FL_TOMATO);
		ChangerTailleTexte(fenetreMaster, "titreMaster", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreMaster, "titreMaster",FL_BOLD_STYLE);
		-- bouton de choix de niveau
		AjouterBouton(fenetreMaster, "16", "Niveau 16", 250,200,200,200);
		AjouterBouton(fenetreMaster, "17", "Niveau 17", 550,200,200,200);
		AjouterBouton(fenetreMaster, "18", "Niveau 18", 400,450,200,200);
	FinFenetre(fenetreMaster);
end CreerFenetreMaster;

procedure CreerFenetreWizard(fenetreWizard : out TR_Fenetre) is
-- {} => {Créer la fenêtre de choix de niveau de difficulté wizard}

begin
	fenetreWizard := DebutFenetre("Anti-Virus : Choix du niveau", 1000, 700);
		--titre choix du niveau
		AjouterTexte(fenetreWizard, "titreWizard", "Choix du niveau", 400, 75, 300,50);
		ChangerCouleurTexte(fenetreWizard,"titreWizard", FL_TOMATO);
		ChangerTailleTexte(fenetreWizard, "titreWizard", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreWizard, "titreWizard",FL_BOLD_STYLE);
		-- bouton de choix de niveau
		AjouterBouton(fenetreWizard, "19", "Niveau 19",250 ,250,200,200);
		AjouterBouton(fenetreWizard, "20", "Niveau 20", 550,250,200,200);
	FinFenetre(fenetreWizard);  
end CreerFenetreWizard;

procedure CreerFenetreJeu(FenetreJeu : out TR_Fenetre) is
--{} => {Affichage du plateau de jeu}
	ligne : integer := T_Lig'first;
	colonne : character;
	x, y : integer;
	nomCase : String(1..2);
begin
	
	fenetreJeu:= DebutFenetre("Anti-Virus", 1000, 800);
		--Titre et style titre
		AjouterTexte(fenetreJeu, "titre en jeu", "ANTI-VIRUS",425,25,200,50);
		ChangerCouleurTexte(fenetreJeu,"titre en jeu", FL_TOMATO);
		ChangerTailleTexte(fenetreJeu, "titre en jeu", FL_LARGE_SIZE);
		ChangerStyleTexte(fenetreJeu, "titre en jeu",FL_BOLD_STYLE);
		
		y := 100;
		while ligne <= T_Lig'last loop
			colonne := T_Col'first;

			-- Affichage des lignes paires
			if ligne mod 2 = 0 then 
				x := 250;
				colonne := Character'val(Character'pos(colonne) + 1);

				while colonne < T_Col'last  loop
					nomCase := colonne & T_Lig'image(ligne)(2);
					AjouterBouton(fenetreJeu, nomCase , "", x, y, 100, 100);
					x := x + 200;
					colonne := Character'val(Character'pos(colonne) + 2);
				end loop;
	
			-- Affichage des lignes impaires	
			else 
				x := 150; 
				
				while colonne <= T_Col'last loop
					nomCase := colonne & T_Lig'image(ligne)(2);
					AjouterBouton(fenetreJeu, nomCase, "", x, y, 100, 100);
					x := x + 200;
					colonne := Character'val(Character'pos(colonne) + 2);	
				end loop;
			end if;
	
			y := y + 100;
			ligne := ligne + 1;
		end loop;
end CreerFenetreJeu;

procedure MiseAJourGrille(FenetreJeu : in out TR_Fenetre; V : in out TV_Virus) is
--{} => {Met à jour l'affichage des cases de la grille}

	nomCase : String(1..2);
	ligne : Integer := T_Lig'first;
	Colonne : character;
begin
	--Réinitialisation de toutes les cases
	--CacherFenetre(fenetreJeu);
	while ligne <= T_Lig'last loop
		colonne := T_Col'first;

		-- Réinitialisation des lignes paires
		if ligne mod 2 = 0 then 
			
			colonne := Character'val(Character'pos(colonne) + 1);
			while colonne < T_Col'last  loop
				nomCase := colonne & T_Lig'image(ligne)(2);
				ChangerCouleurFond(fenetreJeu, nomCase, FL_BOTTOM_BCOL);
				
				colonne := Character'val(Character'pos(colonne) + 2);
			end loop;
	
		-- Réinitialisation des lignes impaires	
		else 

			while colonne <= T_Col'last loop
				nomCase := colonne & T_Lig'image(ligne)(2);
				ChangerCouleurFond(fenetreJeu, nomCase, FL_BOTTOM_BCOL);
				
				colonne := Character'val(Character'pos(colonne) + 2);
			end loop;
			
		end if;

		ligne := ligne + 1;
	end loop;
	
	--Affichage des cases (i : ligne, j : colonne)
	for i in T_Lig'range loop
		for j in T_Col'range loop
			if V(i,j) /= vide then
				nomCase := j & T_Lig'image(i)(2);
				if V(i,j) = rouge then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_RED);
				elsif V(i,j) = turquoise then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_DARKCYAN);
				elsif V(i,j) = orange then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_DARKORANGE);
				elsif V(i,j) = rose then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_ORCHID);
				elsif V(i,j) = marron then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_DARKTOMATO);
				elsif V(i,j) = bleu then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_CYAN);
				elsif V(i,j) = violet then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_DARKVIOLET);
				elsif V(i,j) = vert then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_CHARTREUSE);
				elsif V(i,j) = jaune then
					ChangerCouleurFond(fenetreJeu, nomCase, FL_YELLOW);
				else -- case blanc
					ChangerCouleurFond(fenetreJeu, nomCase, FL_WHITE);
				end if;
			end if;
		end loop;
	end loop;
	--MontrerFenetre(fenetreJeu);

end MiseAJourGrille;

end p_graphique;
