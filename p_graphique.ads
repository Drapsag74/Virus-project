with p_esiut; use p_esiut;
with p_virus; use p_virus;
with p_fenbase; use p_fenbase;
with Forms; use Forms;
with Ada.calendar; use Ada.calendar;

package p_graphique is

type T_Difficulte is (starter, junior, expert, master, wizard);

procedure CreerFenetreBienvenue(FenetreBienvenue : out TR_Fenetre);
--{} => {Créer la fenêtre de bienvenue}

procedure CreerFenetreDifficulte(FenetreDifficulte : out TR_Fenetre);
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

procedure CreerFenetreJeu(FenetreJeu : out TR_Fenetre);
--{} => {Affichage du plateau de jeu}

procedure CreerFenetreRegles(FenetreRegles : out TR_Fenetre);
--{} => {Affichage des règles}

procedure CreerFenetreGagne(FenetreGagne : out TR_Fenetre; niveau : in Integer; Score : in Natural);
--{} => {Créé la fenêtre d'un niveau réussis}

procedure CreerFenetreAbandon(FenetreAbandon : in out TR_Fenetre);
--{} => {Créé la fenêtre d'abadon}


procedure MiseAJourGrille(FenetreJeu : in out TR_Fenetre; V : in out TV_Virus);
--{} => {Met à jour l'affichage des cases de la grille}

procedure finJeu(fenetreJeu : in out TR_Fenetre);
-- {} => {désactive tous les boutons sauf le bouton quitter}

end p_graphique;
