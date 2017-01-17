with p_esiut; use p_esiut;
with p_virus; use p_virus;
with p_fenbase; use p_fenbase;
with p_graphique; use p_graphique;
use p_virus.p_Piece_IO;
use p_virus.p_Direction_IO;


procedure avgraphique is
--{} => {Affichage graphique du jeu}

	FenetreBienvenue, FenetreDifficulte, fenetreStarter,  fenetreJunior, fenetreExpert, fenetreMaster,fenetreWizard, fenetreJeu : TR_Fenetre;
	niveau : integer;
	difficulte : T_Difficulte;

	f : file_type;
	V : TV_Virus;
	--direction : string(1..2);
	--piece : integer;

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

		CreerFenetreJeu(fenetreJeu);

	--Programme principal
		--Page d'accueil
		MontrerFenetre(fenetreBienvenue);
		if AttendreBouton(fenetreBienvenue) = "start" then
			CacherFenetre(fenetreBienvenue);

			--Choix difficulté
			MontrerFenetre(fenetreDifficulte);
			difficulte := T_Difficulte'value(AttendreBouton(fenetreDifficulte));
			CacherFenetre(fenetreDifficulte);

			--Choix du niveau
			if difficulte = starter then
				MontrerFenetre(fenetreStarter);
				niveau := integer'value(AttendreBouton(fenetreStarter));
				CacherFenetre(fenetreStarter);
			elsif difficulte = junior then
				MontrerFenetre(fenetreJunior);
				niveau := integer'value(AttendreBouton(fenetreJunior));
				CacherFenetre(fenetreJunior);
			elsif difficulte = expert then
				MontrerFenetre(fenetreExpert);
				niveau := integer'value(AttendreBouton(fenetreExpert));
				CacherFenetre(fenetreExpert);
			elsif difficulte = master then
				MontrerFenetre(fenetreMaster);
				niveau := integer'value(AttendreBouton(fenetreMaster));
				CacherFenetre(fenetreMaster);
			else --lvl wizard
				MontrerFenetre(fenetreWizard);
				niveau := integer'value(AttendreBouton(fenetreWizard));
				CacherFenetre(fenetreWizard);
			end if;

			--Jeu
				-- Récupération des données de la partie
				Open(f, in_file, "Parties");
				CreeVectVirus (f, niveau, V);
				Close(f);

				-- Initialisation
				MontrerFenetre(fenetreJeu);
				AfficheGrille(V);
				MiseAJourGrille(fenetreJeu, V);

				-- Jeu
				while not Gueri(V) loop
					Ecrire("Numéro de la piece :"); Lire(piece);
					Ecrire("Direction (bg/hg/bd/hd) : "); Lire(direction);

					if possible(V, T_Piece'val(piece), T_Direction'value(direction)) then
						Deplacement(V, T_Piece'val(piece), T_Direction'value(direction));
						AfficheGrille(V);
					else
						Ecrire_ligne("Mouvement impossible");
					end if;

					MiseAJourGrille(fenetreJeu, V);
					AfficheGrille(V);
				end loop;

				loop
					exit when AttendreBouton(fenetrejeu) = "A1";
				end loop;

				CacherFenetre(fenetrejeu);

		end if;


	-- Affichage de fin


end avgraphique;
