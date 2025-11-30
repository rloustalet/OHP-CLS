%%%%%%%
% rapportEtudFdS.cls
% 
% Style LaTeX pour les rapports des étudiants de la FdS Montpellier
% conçu pour PDFLaTeX
% -- classe
% 
% Auteur : Julien Morin <julien.morin@umontpellier.fr>
% Date   : 04/01/2017 
%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sty/rapportEtudFdS}

% Chargement de la classe article, avec transfert d'options
\PassOptionsToClass{a4paper}{article}
\PassOptionsToClass{11pt}{article}
\PassOptionsToClass{twoside}{article}
\LoadClass{article}

% ==========================================================================
% PACKAGES STANDARD REQUIS
\input{sty/rapportEtudFdS-pkg}

% ============================================================================
% CHARGEMENT DE LA FEUILLE DE STYLE CHOISIE
\RequirePackage{sty/rapportEtudFdS}

% ============================================================================
% CHARGEMENT DE COMMANDES PERSOS
\input{sty/symb}   % symboles, grandeurs et unités utiles

% ============================================================================
% DEFINITION DU STYLE DE PAGE PAR DEFAUT
\pagestyle{main}
