with p_esiut; use p_esiut;
with p_virus; use p_virus;
with p_fenbase; use p_fenbase;
with p_graphique; use p_graphique;
use p_virus.p_Piece_IO;
use p_virus.p_Direction_IO;
with Forms; use Forms;


procedure avgraphique is
--{} => {Affichage graphique du jeu}

	FenetreBienvenue, fenetreDifficulte, fenetreStarter,  fenetreJunior, fenetreExpert, fenetreMaster,fenetreWizard, fenetreJeu, fenetreGagne, fenetreRegles: TR_Fenetre;
	niveau : integer;
	difficulte : T_Difficulte;

	package p_PieceIO is new p_enum(T_Piece); use p_PieceIO;

	f : file_type;
	V : TV_Virus;
	nomBouton : string(1..255) := (others => ' ');
	piece : integer;
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
		--CreerFenetreRegles(fenetreRegles);

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

			--Préparation du jeu

				-- Récupération des données de la partie
				Open(f, in_file, "Parties");
				CreeVectVirus (f, niveau, V);
				Close(f);

				-- Initialisation 
				MontrerFenetre(fenetreJeu);
				MiseAJourGrille(fenetreJeu, V);

			-- Jeu

			ChangerTexte(fenetreJeu, "info1", "  Choisissez votre piece");
			while not Gueri(V) loop

				-- Attente d'un bouton
				declare				
					nomBouton : String := AttendreBouton(fenetreJeu);
				begin

					if nomBouton = "quitter" then exit;

					--elsif nomBouton = "regles" then
						--Ecrire("...");

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

		end if;


		-- Affichage de fin
		CreerFenetreGagne(FenetreGagne,niveau);
		MontrerFenetre(FenetreGagne);
		if AttendreBouton(fenetreGagne) = "back_menu" then
			CacherFenetre(FenetreGagne);
		end if;

end avgraphique;
