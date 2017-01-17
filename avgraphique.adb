with p_esiut; use p_esiut;
with p_virus; use p_virus;
with p_fenbase; use p_fenbase;
with p_graphique; use p_graphique;

procedure avgraphique is
--{} => {Affichage graphique du jeu}
	FenetreBienvenue, FenetreDifficulte, FenetreNiveaux : TR_Fenetre;	
	niveau : integer;
begin

	InitialiserFenetres;
	-- Création des Fenêtres
		CreerFenetreBienvenue(FenetreBienvenue);
		CreerFenetreDifficulte(FenetreDifficulte);

		CreerFenetreStarter(fenetreStarter);
		CreerFenetreJunior(fenetreJunior);
		CreerFenetreExpert(fenetreExpert);
		CreerFenetreMaster(fenetreMaster);
		CreerFenetreWizard(fenetreWizard);

	--Programme principal
		MontrerFenetre(fenetreBienvenue);
		if AttendreBouton(fenetreBienvenue) = "start" then 
			CacherFenetre(fenetreBienvenue); 
			MontrerFenetre(fenetreDifficulte);
			if AttendreBouton(fenetreDifficulte) = "starter" then
				CacherFenetre(fenetreDifficulte);					
				MontrerFenetre(fenetreStarter);
			elsif AttendreBouton(fenetreDifficulte) = "junior" then
				CacherFenetre(fenetreDifficulte);					
				MontrerFenetre(fenetreJunior);
			elsif AttendreBouton(fenetreDifficulte) = "expert" then
				CacherFenetre(fenetreDifficulte);					
				MontrerFenetre(fenetreExpert);
			elsif AttendreBouton(fenetreDifficulte) = "master" then
				CacherFenetre(fenetreDifficulte);					
				MontrerFenetre(fenetreMaster);
			else --lvl wizard
				CacherFenetre(fenetreDifficulte);					
				MontrerFenetre(fenetreWizard);
			end if;
		end if;
		Ecrire(niveau);

		
	-- Choix du niveau
	
	-- Affichage du jeu
	
	-- Affichage de fin
	
	
end avgraphique;

