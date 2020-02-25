%---------------------------------------------------------------
% GenThesis version 1 style file by Riccardo Tediosi, 2007
% This thesis style comes from a collage of different style
% files found in the net and should serve as a base for a
% template for the University of Geneva.

%---------------------------------------------------------------

% Project Started: 18 December 2007
% > Updates and Reviews:
%	Elisabeth Agoritsas: 13 March 2013 (few additions in packages and newcommands)
%	Vivien Lecomte: 14 May 2013


% --- Identification -----------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Class/GenThesis}[12/18/2007 Geneva Thesis Class Ver. 1.0]

% --- Options Declaration ------------------------------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}	% Every unknown is passed to book 
\ProcessOptions\relax
\ifx\pdfoutput\undefined
   \LoadClass[dvips, a5paper, openright]{book}
\else
   \LoadClass[pdftex, a5paper, openright]{book}
\fi






% --- Useful packages ----------------------------------------------
\usepackage[french, english]{babel}
\usepackage[T1]{fontenc}			% used for hyphenation of european accented words
\usepackage{amsfonts, amssymb, amsmath}
\usepackage{float}
\usepackage{times}					% A package to use PostScript Times Roman as the default font.
\usepackage{graphics}		% for improved inclusion of graphics
%\usepackage{epsfig}     % Include Encapsulated PostScript in \LaTeX{} documents.
\usepackage{bbm}		   % for boldface mathematical symbol (i.e. Natural numbers symbol ecc.
\usepackage[margin=10pt,font=small,labelfont=bf]{caption} % for improved layout of figure captions with extra margin, smaller font than text
\usepackage[utf8x]{inputenc}
%\usepackage{cite}
\usepackage{subfigure}
\usepackage{bm}
\usepackage{wasysym}




% --- Citation tricks -----------------------------------------------------------
\usepackage[sort&compress, numbers]{natbib}
\usepackage{doi}
\usepackage{bibentry}

%%% aliases for own references
%\bibliographystyle{plain}
%\bibliographystyle{plain_url.bst}
\bibliographystyle{apsrev4-1}

\defcitealias{agoritsas_2010_PhysRevB_82_184207}{\textnormal{P1}}
\defcitealias{agoritsas_2012_ECRYS2011}{\textnormal{P2}}
\defcitealias{agoritsas-2012-FHHpenta}{\textnormal{P3}}
\defcitealias{agoritsas_2012_FHHtri-analytics}{\textnormal{P4}}
\defcitealias{agoritsas_2012_FHHtri-numerics}{\textnormal{P5}}
\defcitealias{guyonnet-agoritsas_2012_multimuffin}{\textnormal{P6}}



% --- Hyperref and colors cosmetics ----------------------------------------------
\usepackage[usenames,dvipsnames]{xcolor}

\usepackage{color}
\definecolor{darkblue}{rgb}{0,0,0.6}
\definecolor{darkred}{rgb}{0.6,0,0}

\usepackage{hyperref}
\hypersetup{colorlinks=true,urlcolor=darkblue,citecolor=darkblue,linkcolor=MidnightBlue,hyperfootnotes=false}
%% this was the trick... 
%% see http://tex.stackexchange.com/questions/79395/option-clash-for-hyperref-package 


% --- Possible EXTRA packages --------------------------------------
%\usepackage{mathptmx}
%\usepackage{wrapfig}		% to include figure with text wrapping around it
%\usepackage{eucal}		% Euler script symbols package
%\usepackage[usenames, dvipsnames]{color}
%\usepackage[perpage]{footmisc}
%\usepackage[round, sort, numbers, authoryear]{natbib}
%\usepackage{ifthen}		% Defines if/then/else macros for conditional text.
%\usepackage{multicol}		% for pages with multiple text columns, e.g. References
%\setlength{\columnsep}{20pt} % space between columns; default 10pt quite narrow
%\usepackage[nottoc]{tocbibind} % correct page numbers for bib in TOC, nottoc suppresses an entry for TOC itself
%\usepackage{nextpage}		% Provides additional \clearpage like commands, allowing such things as clearing to the next even numbered page without flushing floats
%\usepackage{psfrag}		% Allows importing PostScript figures from any other package, but use LaTeX’s power for all of the mathematical and textual annotations.
%\usepackage{psfig}
%\usepackage{a4}			% Extra support for a4 paper
\usepackage[a5paper,		%paper size
            hmargin=1.5cm,	%horizontal margin = 1 cm on each side
%           vmargin=1.0cm,	%vertical margin = 1 cm top and bottom
            tmargin=1.5cm,	%top margin = 1.2 cm
	    bmargin=1.5cm,		%bottom margin = 0.8 cm 
            ]{geometry}

%\addtolength{\oddsidemargin}{0.5cm}
%\addtolength{\evensidemargin}{-0.5cm}





% --- Fancy STUFF --------------------------------------------------
% Two  Possibilities:
\usepackage{fancyhdr}   % for better header layout
% - 1:
%\pagestyle{fancy}
%\renewcommand{\chaptermark}[1]{\markboth{\thechapter\ #1}{}}
%\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
%\fancyhf{}
%\fancyhead[RO]{\small\sffamily{\nouppercase{\rightmark}}}
%\fancyhead[LE]{\small\sffamily{\nouppercase{\leftmark}}}
%\fancyfoot[RO,LE]{\thepage}
% -2:
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{\thechapter. #1 }}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\fancyhf{}	 % annule les pieds et entetes par defaut
%\fancyhead[RO]{\bfseries\rightmark}
%\fancyhead[LE]{\bfseries\leftmark}
\fancyhead[RO]{\small \rightmark}
\fancyhead[LE]{\small \leftmark}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}
\addtolength{\headheight}{0.5pt}
\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}


% --- New Command to avoid empty pages with header ----------------
% This should be used at the end of a chapter which finishes on an
% odd page.
\newcommand{\fancyend}{\clearpage{\pagestyle{empty}\cleardoublepage}}



% --- PDF/PS setup ------------------------------------------------ 
\newif \ifpdf
\ifx\pdfoutput\undefined
   \pdffalse
\else 
   \ifnum\pdfoutput=0
      \pdffalse
   \else
      \pdfoutput=1 \pdftrue
   \fi
\fi

\ifpdf
    \DeclareGraphicsExtensions{.png, .jpg, .jpeg, .pdf, .gif} %GIF doesn't work??
    \usepackage[pdftex]{graphicx}
    \pdfcompresslevel=9
    \graphicspath{{figures/PNG/}{figures/PDF/}{figures/}}
\else
    \DeclareGraphicsExtensions{.eps, .ps}
    \usepackage{epsfig}
    \usepackage{graphicx}
    \graphicspath{{figures/EPS/}{figures/}}
\fi


% --- Title Page Layout -----------------------
% Starts roman page numbering until chapter 1
% bug: cover i + back side ii and then numbering restarts with i; should be iii
\renewcommand{\thepage}{\roman{page}}

%\newcommand{\submittedtext}{{A thesis submitted for the degree of}}

% --> DECLARATIONS <---
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

% The year and term the degree will be officially conferred
\def\degreedate#1{\gdef\@degreedate{#1}}
% The full (unabbreviated) name of the degree
\def\degree#1{\gdef\@degree{#1}}
% The name of your department(es. Maths, Physics)
\def\faculty#1{\gdef\@faculty{#1}}
% The name of your section (es. Maths, Physics)
%\def\sectionp#1{\gdef\@sectionp{#1}}
% The name of your department
\def\department#1{\gdef\@department{#1}}
% The name of your department(es. Maths, Physics)
\def\sectionshort#1{\gdef\@sectionshort{#1}}
% The name of your University
\def\university#1{\gdef\@university{#1}}
% Defining the crest
\def\crest#1{\gdef\@crest{#1}}
% Stating the city of birth for title page where needed; uncommented for use
%\def\cityofbirth#1{\gdef\@cityofbirth{#1}}
% Stating the country of birth for title page where needed
%\def\country#1{\gdef\@country{#1}}
% Defining the thesis number
%\def\thesisnumber#1{\gdef\@thesisnumber{#1}}
% The name of your department(es. Maths, Physics)
\def\professora#1{\gdef\@professora{#1}}
% \def\professorb#1{\gdef\@professorb{#1}} % IF YOU HAVE A SECOND SUPERVISOR
% The year of your graduation
\def\yeargrad#1{\gdef\@yeargrad{#1}}
% Commitee Member 1
%\def\memberA#1#2#3{\gdef\@memberA{#1} \gdef\@titA{#2} \gdef\@affA{#3}}
%\memberA{}{}{}
% Commitee Member 2
%\def\memberB#1#2#3{\gdef\@memberB{#1} \gdef\@titB{#2} \gdef\@affB{#3}}
%\memberB{}{}{}
% Commitee Member 3
%\def\memberC#1#2#3{\gdef\@memberC{#1} \gdef\@titC{#2} \gdef\@affC{#3}}
%\memberC{}{}{}
% Commitee member 4
%\def\memberD#1#2#3{\gdef\@memberD{#1} \gdef\@titD{#2} \gdef\@affD{#3}}
%\memberD{}{}{}
% Dean
%\def\dean#1{\gdef\@dean{#1}}
% Approval Date
%\def\approvaldate#1{\gdef\@approvaldate{#1}}

% These macros define an environment for front matter that is always 
% single column even in a double-column document.

\newenvironment{alwayssingle}{%
       \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
       \else\newpage\fi}
       {\if@restonecol\twocolumn\else\newpage\fi}


% Define title page layout ----------------------------------------------------------
\renewcommand{\maketitle}{%
\begin{alwayssingle}
	\addtolength{\voffset}{-1.0cm}
	\renewcommand{\footnotesize}{\small}
	\renewcommand{\footnoterule}{\relax}
	%\thispagestyle{empty}
  \noindent
  \parbox{.65\linewidth}
  {
  		\MakeUppercase{\@university}\\
	 	%\@sectionp \\
		\@department
  }
  \hfill
  \parbox{.35\linewidth}
  {
		%\begin{flushright}
		\MakeUppercase{Facult\'e des \@faculty} \\
			Professeur \@professora
			\\ \phantom{Professeur}	\\ %Professeur \@professorb 
		%\end{flushright}
	}
  \begin{center}
     \vspace{-1ex}
  	 \hrulefill\par
	 \vfill\vfill\vfill
     {\huge{\bfseries{\@title}} \par}
     \vfill\vfill\vfill
	
	\centerline{\Large{TH\`{E}SE}}
	 \vfill
	{\emph{pr\'{e}sent\'{e} \`{a} la Facult\'{e} des \@faculty \space de l'\@university \\
	pour obtenir le grade de docteur \`{e}s \@faculty, mention \@sectionshort}\par} 
    \vfill 
    \centerline{par}
    \vfill
	\centerline{\Large\bf \@author}
	\centerline{de}
	%\centerline{\@cityofbirth \space (\@country)}
    \vfill\vfill\vfill 
    %\centerline{Th\`ese n$^{\circ}$ \@thesisnumber}
    \vfill\vfill\vfill
    \centerline{GEN\`EVE}
    \centerline{Atelier d'impression ReproMail}
    \centerline{\@yeargrad}
  \end{center}
  %\null\vfill
	%\addtolength{\voffset}{1.0cm}
\end{alwayssingle}}

% page number for cover back side should have page number blanked



% Define SIGNATURES Layout ---------------------------------------------------
%------------------------------------------------------------
% the signature page
%------------------------------------------------------------
\newcommand{\sigline}[2][144]{\begin{minipage}[t]{#1pt}
\begin{center}
\rule{#1pt}{0.5pt}{\scriptsize \\[-1.5ex] #2}
\end{center}
\end{minipage}}

\newcommand{\signaturepage}{
\clearpage
\begin{center}
\small
\textbf{\normalsize \MakeUppercase{\@university}}\\[6pt]
FACULT\'E DES \MakeUppercase{\@faculty}\\[6pt] 
This is to certify that the thesis prepared by / Ceci certifie que la
th\`ese r\'edig\'ee par\\[18pt]
{\normalsize 
\textbf{\MakeUppercase{\@author}}}\\[12pt] 
entitled / intitul\'ee\\[12pt]
{\normalsize \textbf{\MakeUppercase{\@title}}%
%\ifx\@empty\@subtitle
%\else\\ \textbf{ \@subtitle}
%\fi
}\\[18pt]
\end{center} 
complies with the University of Geneva regulations and
that it meets the accepted standards of the Graduate School with
respect to quality, and, in the case of a doctoral thesis, originality,
/ satisfait aux r\`eglements de l'\@university\ et
qu'elle respecte les normes accept\'ees par la Facult\'e des \'etudes
sup\'erieures quant \`a la qualit\'e et, dans le cas d'une
th\`ese de doctorat, l'originalit\'e,\\[12pt]
\begin{center}
for the degree of / pour le dipl\^ome de\\[18pt]
{\normalsize \textbf{\MakeUppercase{docteur}}
\ifx\@empty\@field
\else\textbf{\MakeUppercase{\`ES \@sectionshort}}
\fi
}\\[18pt]
\end{center}
{\small
Signed by the final examining committee:\\  
Sign\'e par les membres du comit\'e examinateur de la soutenance de
th\`ese :\\[16pt]
\sigline{\@professora}, Directeur de th\`ese ({\scriptsize \@university})\\[16pt]
%\ifx\@empty\@memberA
%\else \sigline{\@memberA}, \@titA\ ({\scriptsize \@affA})\\[16pt] 
%\fi
%\ifx\@empty\@memberB
%\else \sigline{\@memberB}, \@titB\ ({\scriptsize \@affB})\\[16pt] 
%\fi
%\ifx\@empty\@memberC
%\else \sigline{\@memberC}, \@titC\ ({\scriptsize \@affC})\\[16pt] 
%\fi
%\ifx\@empty\@memberD
%\else \sigline{\@memberD}, \@titD\ ({\scriptsize \@affD})\\[16pt] 
%\fi
\vspace{3ex}
Approved by the Head of Department: /  Approuv\'e par le Directeur du
D\'epartement:\\[16pt]
%Gen\`eve, le \@approvaldate\\[6pt]
\begin{flushright}
%\sigline{Le Doyen, \@dean}
%This thesis is not to be regarded as classified.\\ 
%Cette th\`ese n'est pas consid\'er\'ee comme \`a publication 
%restreinte.\\[16pt]
%\sigline{\@professor}\\
\end{flushright}
\vspace{3ex}
%\framebox[1.5\width]{Th\`ese - \@thesisnumber\ -}
} 
}


% Define ABSTRACT Layout -----------------------------------------------------
%
% The abstract environment puts a large, bold, centered "Abstract" label at
% the top of the page. The abstract itself appears in a quote environment,
% i.e. tabbed in at both sides, and on its own page.

\newenvironment{abstracts}
	{\begin{alwayssingle} \pagestyle{empty}
  		\begin{center}
  			\vspace*{1.5cm}
  			{\Large \bfseries  Abstract}
  		\end{center}
  		\vspace{0.5cm}
   		\begin{quote}}
		{\end{quote}
	\end{alwayssingle}}

% Define DEDICATION Layout --------------------------------------------------
%
% The dedication environment makes sure the dedication gets its
% own page and is set out in verse format.
\newenvironment{dedication}
{\begin{alwayssingle}
		\pagestyle{empty}
		\begin{center}
			\vspace*{1.5cm}
			{\LARGE }
		\end{center}
		\vspace{0.5cm}
		\begin{quote} \begin{center}}
			{\end{center} \end{quote} \end{alwayssingle}}

	
% Define ACKNOWLEDGEMENTS Layout -------------------------------------------
%
% The acknowledgements environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgements
% themselves appear in a quote environment, i.e. tabbed in at both sides, and
% on its own page.

\newenvironment{acknowledgements}
{\begin{alwayssingle}\pagestyle{empty}
	\begin{center}
		\vspace*{1.5cm}
		{\Large \bfseries Ringraziamenti}
	\end{center}
	\vspace{0.5cm}
	\begin{quote}}
	{\end{quote}
\end{alwayssingle}}


{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}