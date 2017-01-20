with p_esiut; use p_esiut;
with p_virus; use p_virus;
with p_fenbase; use p_fenbase;
with p_graphique; use p_graphique;
use p_virus.p_Piece_IO;
use p_virus.p_Direction_IO;
use p_graphique.p_PieceIO;
with Forms; use Forms;
with ada.calendar; use ada.calendar;
with Jeanne; use Jeanne;


procedure avgraphique is
--{} => {Affichage graphique du jeu}

	-- Fenêtres
	FenetreBienvenue, fenetreDifficulte, fenetreStarter,  fenetreJunior, fenetreExpert, fenetreMaster,fenetreWizard, fenetreJeu, fenetreGagne, fenetreRegles, fenetreAbandon: TR_Fenetre;

	-- Choix niveau / difficulte
	niveau : integer;
	difficulte : T_Difficulte;

	-- Variable du jeu
	f : file_type;
	V : TV_Virus;
	nomBouton : string(1..255) := (others => ' ');
	piece : integer;
	DernierMouvement : Mouvement;

	-- Variables pour le score
	HeureDebut, HeureFin : Time;
	nbCoups : natural := 0;
	nbErreurs : natural := 0;
	score : integer;

begin

	InitialiserFenetres;

	--Page d'accueil
	CreerFenetreBienvenue(FenetreBienvenue);
	MontrerFenetre(fenetreBienvenue);
	if AttendreBouton(fenetreBienvenue) = "start" then
		CacherFenetre(fenetreBienvenue);
	end if;

	loop
		loop
			--Choix difficulté
			CreerFenetreDifficulte(FenetreDifficulte);
			MontrerFenetre(fenetreDifficulte);
			difficulte := T_Difficulte'value(AttendreBouton(fenetreDifficulte));
			CacherFenetre(fenetreDifficulte);

			--Choix du niveau
			if difficulte = starter then
				CreerFenetreStarter(fenetreStarter);
				MontrerFenetre(fenetreStarter);
				declare
					choix : String := AttendreBouton(fenetreStarter);
				begin
					CacherFenetre(fenetreStarter);
					if choix /= "retour" then
						niveau := integer'value(choix);
						exit;
					end if;
				end;

			elsif difficulte = junior then
				CreerFenetreJunior(fenetreJunior);
				MontrerFenetre(fenetreJunior);
				declare
					choix : String := AttendreBouton(fenetreJunior);
				begin
					CacherFenetre(fenetreJunior);
					if choix /= "retour" then
						niveau := integer'value(choix);
						exit;
					end if;
				end;

			elsif difficulte = expert then
				CreerFenetreExpert(fenetreExpert);
				MontrerFenetre(fenetreExpert);
				declare
					choix : String := AttendreBouton(fenetreExpert);
				begin
					CacherFenetre(fenetreExpert);
					if choix /= "retour" then
						niveau := integer'value(choix);
						exit;
					end if;
				end;

			elsif difficulte = master then
				CreerFenetreMaster(fenetreMaster);
				MontrerFenetre(fenetreMaster);
				declare
					choix : String := AttendreBouton(fenetreMaster);
				begin
					CacherFenetre(fenetreMaster);
					if choix /= "retour" then
						niveau := integer'value(choix);
						exit;
					end if;
				end;

			else --lvl wizard
				CreerFenetreWizard(fenetreWizard);
				MontrerFenetre(fenetreWizard);
				declare
					choix : String := AttendreBouton(fenetreWizard);
				begin
					CacherFenetre(fenetreWizard);
					if choix /= "retour" then
						niveau := integer'value(choix);
						exit;
					end if;
				end;

			end if;
		end loop;

		--Préparation du jeu

			-- Récupération des données de la partie
			Open(f, in_file, "Parties");
			CreeVectVirus (f, niveau, V);
			Close(f);

			-- Initialisation
			CreerFenetreJeu(fenetreJeu);
			MontrerFenetre(fenetreJeu);
			MiseAJourGrille(fenetreJeu, V);
			HeureDebut := clock;
			nbCoups := 0;
			Jeanne.initialisation;
			Jeanne.enregistre(V);

		-- Jeu

		ChangerTexte(fenetreJeu, "info1", "  Choisissez votre piece");
		while not Gueri(V) loop

			-- Attente d'un bouton
			declare
				nomBouton : String := AttendreBouton(fenetreJeu);
			begin

				--Calcul et affichage du score à chaque action
				score := 1000 - nbCoups * 10 - nbErreurs * 50 - natural(clock - heureDebut);
				ChangerTexte(fenetreJeu, "score", "       Score : "&integer'image(score));

				if nomBouton = "quitter" then exit;

				elsif nomBouton = "regles" then
					CreerFenetreRegles(fenetreRegles);
					MontrerFenetre(fenetreRegles);
					if AttendreBouton(fenetreRegles) = "fermerRegles" then
						CacherFenetre(fenetreRegles);
					end if;

				elsif nomBouton = "jeanne" then
					Jeanne.cherche(V, niveau);
					nbCoups := nbCoups + 1;
					Jeanne.enregistre(V);
					MiseAJourGrille(fenetreJeu, V);

				elsif nomBouton = "rollback" then
					Deplacement(V, DernierMouvement.Piece, InverserMouvement(DernierMouvement.Direction));
					MiseAJourGrille(fenetreJeu, V);
					nbCoups := nbCoups + 1;
					Jeanne.enregistre(V);
					ChangerTexte(fenetreJeu, "info1", "    Retour en arriere");
					ChangerTexte(fenetreJeu, "info2", "        effectue !");

				-- Si choix de direction ...
				elsif nomBouton = "hg" or nomBouton = "hd" or nomBouton = "bd" or nomBouton = "bg" then

					-- ... Effectuer mouvement
					if possible(V, T_Piece'val(piece), T_Direction'value(nomBouton)) then
						Deplacement(V, T_Piece'val(piece), T_Direction'value(nomBouton));
						DernierMouvement := (T_Piece'val(piece), T_Direction'value(nomBouton));
						MiseAJourGrille(fenetreJeu, V);
						nbCoups := nbCoups + 1;
						Jeanne.enregistre(V);
						ChangerTexte(fenetreJeu, "info1", "   Choisis ta direction");
						ChangerTexte(fenetreJeu, "info2", "    ou une autre piece");
					else
						nbErreurs := nbErreurs + 1;
						ChangerTexte(fenetreJeu, "info1", "  Mouvement impossible");
						ChangerTexte(fenetreJeu, "info2", "Change de piece/direction");
					end if;

				else -- Sélection de la piece
					piece := T_Piece'pos(V(character'pos(nomBouton(2))-48,nomBouton(1)));
								-- La piece doit être la position de la couleur qu'il y a dans la case V(i,j).
								-- I et J sont extrait du nom du bouton.
								-- Le numéro de ligne est un chiffre sous forme de charactère.
								-- integer'image(i) ne fonctionne pas car i est un est un charcter et non un string !
								-- Il faut donc aller chercher la position du caractère i et lui retirer 48 car les chiffres en ASCII sont codés à partir de 48
					ChangerTexte(fenetreJeu, "info1", "     Choisis ta direction");
					ChangerTexte(fenetreJeu, "info2", "      ou une autre piece");

				end if;
			end;
		end loop;
		CacherFenetre(fenetrejeu);
		Jeanne.apprend(niveau, nbCoups);

		-- Affichage de fin

		if Gueri(V) then
			heureFin := clock;
			score := 1000 - nbCoups * 10 - nbErreurs * 50 - natural(heureFin - heureDebut);
			CreerFenetreGagne(FenetreGagne, niveau, score);
			MontrerFenetre(FenetreGagne);
			if AttendreBouton(fenetreGagne) = "rejouer" then
				CacherFenetre(FenetreGagne);
			else -- Il veut quitter
				CacherFenetre(FenetreGagne);
				exit;
			end if;

		else --Il a abandonné
			CreerFenetreAbandon(fenetreAbandon);
			MontrerFenetre(fenetreAbandon);
			if AttendreBouton(fenetreAbandon) = "rejouer" then
				CacherFenetre(FenetreAbandon);
			else -- Il veut quitter
				CacherFenetre(FenetreAbandon);
				exit;
			end if;
		end if;

	end loop;

end avgraphique;
