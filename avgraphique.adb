with p_esiut; use p_esiut;
with p_virus; use p_virus;
with p_fenbase; use p_fenbase;
with p_graphique; use p_graphique;
use p_virus.p_Piece_IO;
use p_virus.p_Direction_IO;
with Forms; use Forms;
with ada.calendar; use ada.calendar;


procedure avgraphique is
--{} => {Affichage graphique du jeu}

	-- Fenêtres
	FenetreBienvenue, fenetreDifficulte, fenetreStarter,  fenetreJunior, fenetreExpert, fenetreMaster,fenetreWizard, fenetreJeu, fenetreGagne, fenetreRegles, fenetreAbandon: TR_Fenetre;

	-- Choix niveau / difficulte
	niveau : integer;
	difficulte : T_Difficulte;

	package p_PieceIO is new p_enum(T_Piece); use p_PieceIO;

	-- Variable du jeu
	f : file_type;
	V : TV_Virus;
	nomBouton : string(1..255) := (others => ' ');
	piece : integer;

	-- Variables pour le score
	HeureDebut, HeureFin : Time;
	nbCoups : natural := 0;
	score : integer;

begin

	-- Création des Fenêtres
		InitialiserFenetres;
	
		CreerFenetreBienvenue(FenetreBienvenue);
		CreerFenetreDifficulte(FenetreDifficulte);
		
		--Fenetre choix de niveau
		CreerFenetreStarter(fenetreStarter);
		CreerFenetreJunior(fenetreJunior);
		CreerFenetreExpert(fenetreExpert);
		CreerFenetreMaster(fenetreMaster);
		CreerFenetreWizard(fenetreWizard);

		CreerFenetreJeu(fenetreJeu);
		CreerFenetreRegles(fenetreRegles);

		CreerFenetreGagne(FenetreGagne,niveau, score);
		CreerFenetreAbandon(fenetreAbandon);

	--Programme principal

		--Page d'accueil
		MontrerFenetre(fenetreBienvenue);
		if AttendreBouton(fenetreBienvenue) = "start" then
			CacherFenetre(fenetreBienvenue);	
		end if;

		loop
			loop
				--Choix difficulté
				MontrerFenetre(fenetreDifficulte);
				difficulte := T_Difficulte'value(AttendreBouton(fenetreDifficulte));
				CacherFenetre(fenetreDifficulte);

				--Choix du niveau
				---------------------------------------------------------------------------------------- BERK DES IF DEGUELASSES
				if difficulte = starter then
					MontrerFenetre(fenetreStarter);
					declare
						choix : String := AttendreBouton(fenetreStarter);
					begin
						if choix = "retour" then
							CacherFenetre(fenetreStarter);
						else
							niveau := integer'value(choix);
							CacherFenetre(fenetreStarter);
							exit;
						end if;
					end;
		
				elsif difficulte = junior then
					MontrerFenetre(fenetreJunior);
					declare
						choix : String := AttendreBouton(fenetreJunior);
					begin
						if choix = "retour" then
							CacherFenetre(fenetreJunior);
							exit;
						else
							niveau := integer'value(choix);
							CacherFenetre(fenetreJunior);
						end if;
					end;

				elsif difficulte = expert then
					MontrerFenetre(fenetreExpert);
					declare
						choix : String := AttendreBouton(fenetreExpert);
					begin
						if choix = "retour" then
							CacherFenetre(fenetreExpert);
							exit;
						else
							niveau := integer'value(choix);
							CacherFenetre(fenetreExpert);
						end if;
					end;

				elsif difficulte = master then
					MontrerFenetre(fenetreMaster);
					declare
						choix : String := AttendreBouton(fenetreMaster);
					begin
						if choix = "retour" then
							CacherFenetre(fenetreMaster);
							exit;
						else
							niveau := integer'value(choix);
							CacherFenetre(fenetreMaster);
						end if;
					end;

				else --lvl wizard
					MontrerFenetre(fenetreWizard);
					declare
						choix : String := AttendreBouton(fenetreWizard);
					begin
						if choix = "retour" then
							CacherFenetre(fenetreWizard);
							exit;
						else
							niveau := integer'value(choix);
							CacherFenetre(fenetreWizard);
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
				MontrerFenetre(fenetreJeu);
				MiseAJourGrille(fenetreJeu, V);
				HeureDebut := clock;

			-- Jeu

			ChangerTexte(fenetreJeu, "info1", "  Choisissez votre piece");
			while not Gueri(V) loop

				-- Attente d'un bouton
				declare				
					nomBouton : String := AttendreBouton(fenetreJeu);
				begin

					if nomBouton = "quitter" then exit;

					elsif nomBouton = "regles" then
						MontrerFenetre(fenetreRegles);
						if AttendreBouton(fenetreRegles) = "fermerRegles" then
							CacherFenetre(fenetreRegles);
						end if;

					-- Si choix de direction ...
					elsif nomBouton = "hg" or nomBouton = "hd" or nomBouton = "bd" or nomBouton = "bg" then

						-- ... Effectuer mouvement
						if possible(V, T_Piece'val(piece), T_Direction'value(nomBouton)) then					
							Deplacement(V, T_Piece'val(piece), T_Direction'value(nomBouton));
							MiseAJourGrille(fenetreJeu, V);
							ChangerTexte(fenetreJeu, "info1", "     Choisis ta direction");
							ChangerTexte(fenetreJeu, "info2", "      ou une autre piece");
						else
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

			-- Affichage de fin

			if Gueri(V) then
				heureFin := clock;
				score := nbCoups / natural(heureFin- heureDebut);
				MontrerFenetre(FenetreGagne);
				if AttendreBouton(fenetreGagne) = "rejouer" then
					CacherFenetre(FenetreGagne);
				else -- Il veut quitter
					CacherFenetre(FenetreGagne);
					exit;
				end if;

			else --Il a abandonné
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
