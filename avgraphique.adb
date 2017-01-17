with p_esiut; use p_esiut;
with p_virus; use p_virus;
with p_fenbase; use p_fenbase;
with p_graphique; use p_graphique;
use p_virus.p_Piece_IO;
use p_virus.p_Direction_IO;
with Forms; use Forms;


procedure avgraphique is
--{} => {Affichage graphique du jeu}

	FenetreBienvenue, FenetreDifficulte, fenetreStarter,  fenetreJunior, fenetreExpert, fenetreMaster,fenetreWizard, fenetreJeu : TR_Fenetre;
	niveau : integer;
	difficulte : T_Difficulte;

	package p_PieceIO is new p_enum(T_Piece); use p_PieceIO;

	f : file_type;
	V : TV_Virus;
	direction : string(1..2);
	piece : integer;
	coordPiece : string(1..2);
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
				MiseAJourGrille(fenetreJeu, V);

				-- Jeu

					loop
						--Eventuellement, désactiver le plateau lorsque choix direction et inversement
						ChangerTexte(fenetreJeu, "informations", "Choisissez votre piece");					
						coordPiece := AttendreBouton(fenetreJeu);
						piece := T_Piece'pos(V(character'pos(coordPiece(2))-48,coordPiece(1))); -- La piece doit être la position de la couleur qu'il y a dans la case V(i,j). I et J sont extrait du nom du bouton. Le numéro de ligne es départ un chiffre sous forme de charactère. integer'image(i) ne fonctionne pas car i est un est un charcter et non un string ! Il faut donc aller chercher la position du caractère i et lui retirer 48 car les chiffres en ASCII sont codés à partir de 48

						ChangerTexte(fenetreJeu, "informations", "Choisissez votre direction");	
						direction := AttendreBouton(fenetreJeu);
						
						if possible(V, T_Piece'val(piece), T_Direction'value(direction)) then
							Deplacement(V, T_Piece'val(piece), T_Direction'value(direction));

							MiseAJourGrille(fenetreJeu, V);
						else
							ChangerTexte(fenetreJeu, "informations", "Mouvement impossible");	-- Non visible
						end if;

						exit when coordPiece = "A8" or Gueri(V); --faire une vraie sortie
					end loop;
				CacherFenetre(fenetrejeu);

		end if;


	-- Affichage de fin


end avgraphique;
