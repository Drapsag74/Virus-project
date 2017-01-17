with p_esiut; use p_esiut;
with p_virus; use p_virus;
with p_fenbase; use p_fenbase;
with Forms; use Forms;
package p_graphique is

procedure CreerFenetreBienvenue(FenetreBienvenue : out TR_Fenetre);
--{} => {Créer la fenêtre de bienvenue}

procedure CreeFenetreDifficulte(FenetreDifficulte : out TR_Fenetre);
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


end p_graphique;
