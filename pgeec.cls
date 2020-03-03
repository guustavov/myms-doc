%%
%% Classe pgeec.cls, versão 4.4, de 24/07/2019
%%
%% Atualizações frente a versão anterior (4.3 de 17/06/2019) 
%% - Corrigida pontuação entre múltiplas citações. A separação entre citações distintas
%%   estava com vírgula. Foi corrigida para ponto e vírgual.
%%
%% Romeu Reginatto, 24/07/2019
%% --------------------------------------------------------------------------%%%%
%%
%% Classe pgeec.cls, versão 4.3, de 17/06/2019
%%
%% Atualizações frente a versão anterior (4.2 de 11/04/2019) 
%% - Incluída opção 'breaklinks' no pacote 'hyperref' para corrir falta de quebra
%%   de linha em citações. Texto das citações invadia a margem direita. 
%%
%% Romeu Reginatto, 11/04/2019
%% --------------------------------------------------------------------------%%
%%
%% Classe pgeec.cls, versão 4.2, de 11/04/2019
%%
%% Atualizações frente a versão anterior (4.1 de 22/03/2019) 
%% - Incluídos comandos para construção da Lista de Símbolos 
%%    - \simbolo{Simbolo}{Descricao} % Acrescenta símbolo na lista
%%    - \IncluiListaSimbolos   % Habilita a inclusão da lista
%%    - Antigo comando \ArquivoListaSimbolos mantido e permite a inclusão
%%      da Lista de Símbolos construída diretamente no arquivo indicado   
%% - Incluídos comandos para construção da Lista de Siglas e Abreviaturas 
%%    - \sigla{Sigla}{Descricao} % Acrescenta sigla na lista
%%    - Comando \abreviatura com mesmo significado de \sigla
%%    - \IncluiListaSiglas   % Habilita a inclusão da lista
%%    - Antigo comando \ArquivoListaSiglas mantido e permite a inclusão
%%      da Lista de Siglas e Abreviaturas construída diretamente no arquivo indicado 
%% - Feitas correções na formatação das Listas de Figuras 
%% - Feitas correções na formatação das Listas de Tabelas 
%% - Feitas correções na formatação do arquivo da Lista de Símbolos
%% - Idem para arquivo da Lista de Siglas e Abreviaturas
%% - Feitas correções na formatação de legendas de figuras e tabelas
%%  - Feitas correções no espaçamento entre linhas do Sumário
%%
%% Romeu Reginatto, 11/04/2019
%% --------------------------------------------------------------------------%%
%%
%% Classe pgeec.cls, versão 4.1, de 22/03/2019
%%
%% Atualizações frente a versão anterior (4.0 de 11/03/2019) 
%% - Alterada a codificação de caracteres (inputenc) para UTF8
%%   visando compatibilidade com Overleaf
%% -Incluída a opção 'latin1' para caso alguém precise forçar
%%   a codificação latin1
%%
%% Romeu Reginatto, 22/03/2019
%% --------------------------------------------------------------------------%%
%%
%% Esta é a classe pgeec.cls, apresentada como versão 4.0, que contém as
%% atualizações do Modelo de Dissertação do PGEEC definidas em Março de 2019.
%% A classe é uma atualização da classe pgesde.cls. O número da versão, 4.0,
%% leva em conta todo histórico da classe pgesde.cls, herdado para a denominação
%% atual - pgeec.cls.
%%
%% Atualizações frente a versão anterior (3.0 de 2017/10/22) 
%% - Adequação às normas da Resolução do PGEEC de Março de 2019
%%
%% Romeu Reginatto, 11/03/2019
%% --------------------------------------------------------------------------%%
%% Esta é a classe pgeec.cls, apresentada como versão 2.0, que contém as
%% atualizações do Modelo de Dissertação do PGEEC definidas em 2016.
%% A classe é uma atualização da classe pgesde.cls. O número da versão, 2.0,
%% se refere ao histórico da classe pgesde.cls, embora seja o primeiro 
%% release da classe com este nome - pgeec.cls.
%%
%% Atualizações frente a versão anterior (1.2) 
%% - Alteração do nome da classe
%% - Inserção de link remissivo na bibliografia. Cada item da bibliografia
%%   contém, ao final, número e link para as páginas onde aquele item é citado.
%%
%% --------------------------------------------------------------------------
%%
%% A versão 1.2 da classe pgesde.cls modifica o tratamento dado
%% à ficha catalográfica. Esta ficha deve ser reproduzida diretamente
%% da original enviado pela biblioteca, e não mais digitada como uma
%% tabela no latex.
%% Também foi corrigido um erro na importação da folha de avaliação assinada.
%%
%% Romeu Reginatto, 11 de março de 2014
%%
%% ---------------------------------------------------------------------------
%%
%% Esta é a classe pgesde.cls, modelo que segue as resoluções
%% internas do PGESDE que definem as normas técnicas
%% para a apresentação de dissertações de mestrado.
%% 
%% Esta classe foi produzida a partir da classe sbatex.cls 
%% da SBA -- Sociedade Brasileira de Automática, elaborado 
%% por Mauricio C. de Oliveira, mcdeoliveira@ieee.org, 18/12/2000
%%
%% Romeu Reginatto, 25 de agosto de 2011
%%

\usepackage{comment}
\usepackage{float}

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{pgeec}[2019/07/24 v4.4 
    Dissertacao de Mestrado 
    PGEEC/UNIOESTE/Foz do Iguacu]

\RequirePackage{ifthen,calc}

%%
%% Declaração e inicialização de variáveis específicas desta classe
%%
\newboolean{isOptRevisao}
\setboolean{isOptRevisao}{false}
\newboolean{isOptBanca}
\setboolean{isOptBanca}{false}
\newboolean{isOptFinal}
\setboolean{isOptFinal}{false}
\newboolean{isOptDigital}
\setboolean{isOptDigital}{false}
\newboolean{isAprovacao}
\setboolean{isAprovacao}{false}
\newboolean{isEpigrafe}
\setboolean{isEpigrafe}{false}
\newboolean{isDedicatoria}
\setboolean{isDedicatoria}{false}
\newboolean{isListaFiguras}
\setboolean{isListaFiguras}{false}
\newboolean{isListaTabelas}
\setboolean{isListaTabelas}{false}
\newboolean{isListaSimbolos}
\setboolean{isListaSimbolos}{false}
\newboolean{isListaSiglas}
\setboolean{isListaSiglas}{false}
\newboolean{isArquivoSimbolos}
\setboolean{isArquivoSimbolos}{false}
\newboolean{isArquivoSiglas}
\setboolean{isArquivoSiglas}{false}
\newboolean{isLatin1}
\setboolean{isLatin1}{false}

\DeclareOption{rascunho}{
  \setboolean{isOptRevisao}{true}
  \setboolean{isOptBanca}{false}
}

\DeclareOption{banca}{
  \setboolean{isOptBanca}{true}
}

\DeclareOption{final}{
  \setboolean{isOptFinal}{true}
  \setboolean{isOptBanca}{false}
}

\DeclareOption{digital}{
  \setboolean{isOptDigital}{true}
  \setboolean{isOptBanca}{false}
}

\DeclareOption{latin1}{
	\setboolean{isLatin1}{true}
}

%%
%% Executa opção padrão e carrega classe base (book)
%%
\ExecuteOptions{banca}
\ProcessOptions

\LoadClass[a4paper,12pt,twoside,onecolumn,final,openright]{book}


%%
%% Definições dos espaçamentos fundamentais
%%
 
% Recuo dos parágrafos
\newlength{\mainparindent}
\setlength{\mainparindent}{1cm} % \parindent padrao da dissertacao 

% Espaçamento entre parágrafos
\newlength{\mainparskip}
\setlength{\mainparskip}{6pt}  % \parskip padrão da dissertacao

%  Espaco entre linhas
\newcommand{\mainlinestretch}{1.2}


% Comando de controle do espaçamento entre linhas e parágrafos
\newcommand{\espacotexto}{
	\renewcommand\baselinestretch{\mainlinestretch}
	\setlength{\parskip}{\mainparskip}}

\newcommand{\espacosimples}{
            \renewcommand\baselinestretch{1}
            \setlength{\parskip}{0pt}}

% Configuração do recuo do parágrafo
\setlength\parindent{\mainparindent}



%%
%% Alterações sobre o padrão da classe book
%%

%\newcommand{\titleseries}{\bfseries} % Titulos em bold
\newcommand{\titleseries}{\mdseries} % Titulos em fonte regular

\renewcommand{\@makechapterhead}[1]{%
  \setbox1=\hbox{\huge\titleseries \@chapapp}
  \vspace*{-\ht1}
  \vspace*{-\baselinestretch\baselineskip} 
  \vspace*{1cm}
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \huge\titleseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 34\p@
      \fi
    \fi
    \interlinepenalty\@M
    \huge \titleseries #1\par\nobreak
    \vskip 40\p@
  }}
 
\renewcommand{\@makeschapterhead}[1]{%
  \setbox1=\hbox{\huge\titleseries \@chapapp}
  \vspace*{-\ht1}
  \vspace*{-\baselinestretch\baselineskip} 
  \vspace*{1cm} 
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \huge \titleseries #1 \par\nobreak
    \vskip 40\p@
  }}
  

\renewcommand\section{
   \@startsection {section} % name
      {1} % Level
      {\z@} % Indent
      {-24pt}%   {-3.5ex \@plus -1ex \@minus -.2ex}% beforeskip
      {18pt}%  {2.3ex \@plus.2ex}% after skip
      {\normalfont\Large\titleseries } % style
   }
\renewcommand\subsection{
   \@startsection{subsection}
	    {2}
	    {\z@}%
      {-24pt}% {-3.25ex\@plus -1ex \@minus -.2ex}
      {18pt}% {1.5ex \@plus .2ex}
      {\normalfont\large\titleseries} % style
	 }
\renewcommand\subsubsection{
   \@startsection{subsubsection}
      {3}
      {\z@}%
      {-24pt}%{-3.25ex\@plus -1ex \@minus -.2ex}
      {18pt}%1.5ex \@plus .2ex}
      {\normalfont\normalsize\titleseries}
   }

  
\newbox\fnb
\setbox\fnb=\hbox{\normalfont Figura }
\renewcommand*\l@figure{\@dottedtocline{1}{0pt}{2.5em}}    	
\def\@dottedtoclineFigure#1#2#3#4#5{%
 	\ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
 	{\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
 		\parindent #2\relax\@afterindenttrue
 		\interlinepenalty\@M
 		\leavevmode
 		\@tempdima #3\relax
 		\advance\leftskip \@tempdima \advance\leftskip \wd\fnb \null\nobreak\hskip -\leftskip
 		{\renewcommand{\baselinestretch}{1} #4} \nobreak
 		\leaders\hbox{$\m@th
 			\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
 			mu$}\hfill
 		\nobreak
 		\hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor {#5}}%
 		\par}%
 	\fi} 
\newcommand{\numberlineFigure}[1]{Figura \makebox[2.5em]{{#1}:\hfill}}
\newcommand{\makelistoffigures}{
       \cleardoublepage
       \begingroup
          \renewcommand{\baselinestretch}{1}
          \renewcommand*{\addvspace}[1]{}             
          \let\numberline\numberlineFigure
          \let\@dottedtocline\@dottedtoclineFigure  
          \begin{spacing}{1}        
             \listoffigures
          \end{spacing}
       \endgroup}


\newbox\tnb 
\setbox\tnb=\hbox{\normalfont Tabela }
\renewcommand*\l@table{\@dottedtocline{1}{0pt}{2.5em}}    	
\def\@dottedtoclineTable#1#2#3#4#5{%
	\ifnum #1>\c@tocdepth \else
	\vskip \z@ \@plus.2\p@
	{\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
		\parindent #2\relax\@afterindenttrue
		\interlinepenalty\@M
		\leavevmode
		\@tempdima #3\relax
		\advance\leftskip \@tempdima \advance\leftskip \wd\tnb \null\nobreak\hskip -\leftskip
		{#4} \nobreak
		\leaders\hbox{$\m@th
			\mkern \@dotsep mu\hbox{.}\mkern \@dotsep
			mu$}\hfill
		\nobreak
		\hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor {#5}}%
		\par}%
	\fi} 
\newcommand{\numberlineTable}[1]{Tabela \makebox[2.5em]{{#1}:\hfill}}
\newcommand{\makelistoftables}{
	\cleardoublepage
	\begingroup
	  \renewcommand*{\addvspace}[1]{}             
	  \let\numberline\numberlineTable
	  \let\@dottedtocline\@dottedtoclineTable 
  	  \begin{spacing}{1}      
	    \listoftables
      \end{spacing}
	\endgroup}
   
  
%----------------------------------------------------------  
% atbeginend.sty 
%
% defines
% \BeforeBegin{environment}{code-to-execute}
% \BeforeEnd  {environment}{code-to-execute}
% \AfterBegin {environment}{code-to-execute}
% \AfterEnd   {environment}{code-to-execute}
%
% Save \begin and \end to \BeginEnvironment and \EndEnvironment
\let\BeginEnvironment=\begin
\let\EndEnvironment=\end

\def\IfUnDef#1{\expandafter\ifx\csname#1\endcsname\relax}

% Null command needed to for \nothing{something}=.nothing.
\def\NullCom#1{}

\def\begin#1{%
%
% if defined \BeforeBeg for this environment, execute it
\IfUnDef{BeforeBeg#1}\else\csname BeforeBeg#1\endcsname\fi%
%
%
%
\IfUnDef{AfterBeg#1}% This is done to skip the command for environments
		     % which can take arguments, like multicols; YOU MUST NOT
		     % USE \AfterBegin{...}{...} for such environments!
	\let\SaveBegEng=\BeginEnvironment%
\else%
	% Start this environment
		\BeginEnvironment{#1}%
	% and execute code after \begin{environment}
		\csname AfterBeg#1\endcsname%
	% 
	\let\SaveBegEng=\NullCom%
\fi%
\SaveBegEng{#1}%
}


\def\end#1{%
%
% execute code before \end{environment}
\IfUnDef{BeforeEnd#1}\else\csname BeforeEnd#1\endcsname\fi%
%
% close this environment
\EndEnvironment{#1}%
%
% and execute code after \begin{environment}
\IfUnDef{AfterEnd#1}\else\csname AfterEnd#1\endcsname\fi%
}


%% Now, define commands
% \BeforeBegin{environment}{code-to-execute}
% \BeforeEnd  {environment}{code-to-execute}
% \AfterBegin {environment}{code-to-execute}
% \AfterEnd   {environment}{code-to-execute}

\def\BeforeBegin#1#2{\expandafter\gdef\csname BeforeBeg#1\endcsname
{#2}}
\def\BeforeEnd  #1#2{\expandafter\gdef\csname BeforeEnd#1\endcsname
{#2}}
\def\AfterBegin #1#2{\expandafter\gdef\csname AfterBeg#1\endcsname {#2}}
\def\AfterEnd   #1#2{\expandafter\gdef\csname AfterEnd#1\endcsname{#2}}

\AfterBegin{itemize}{\setlength{\itemsep}{0pt}} 
%--------------------------------------------------  


%%
%% Declaração de comandos e environments específicos desta classe
%%

% Identificacao do Trabalho e Autores
\newcommand{\autor}[1]{\newcommand{\NomeAutor}{#1}}
\newcommand{\titulo}[1]{\newcommand{\TituloDissertacao}{#1}} 
\newcommand{\ano}[1]{\newcommand{\AnoDefesa}{#1}} 
\newcommand{\orientador}[1]{\newcommand{\NomeOrientador}{#1}}
\newcommand{\datadefesa}[1]{\newcommand{\DataDefesa}{#1}}

% Identificacao de Coorientadores
\newcounter{coorientador}
\newcommand\coorientadores{\@starttoc{loa}}
\newcommand{\l@cadv}[2]{#1}
\newcommand{\newcoorientador}[1]{
   \stepcounter{coorientador}
   \addcontentsline{loa}{cadv}{Co-orientador: #1}
 }
\let\coorientador\newcoorientador

% Identificação de membros da banca e formato da folha de aprovação
\newcounter{cbanca}
\newcommand\membrosbanca{\@starttoc{lom}}
\newcommand{\l@members}[2]{
\vspace*{1.7cm} 
\rule{10cm}{1pt} \\
 #1 \\ 
}
\newcommand{\banca}[4]{
   \stepcounter{cbanca}
   \addcontentsline{lom}{members}
   { \protect\begin{tabular}{c}   #1 \protect\textbf{#2} \\ 
      #3 - \protect\uppercase{#4} \protect\end{tabular} } 
}
\newcommand{\bancaorientador}[4]{
   \stepcounter{cbanca}
   \addcontentsline{lom}{members}
   { \protect\begin{tabular}{c} #1 \protect\textbf{#2} - (Orientador) \\ 
      #3 - \protect\uppercase{#4}\protect\end{tabular} } 
}
\newcommand{\bancacoorientador}[4]{
   \stepcounter{cbanca}
   \addcontentsline{lom}{members}
   { \protect\begin{tabular}{c} #1 \protect\textbf{#2} - (Co-orientador)\\ 
      #3 - \protect\uppercase{#4}\protect\end{tabular} } 
}
\newcommand{\ArquivoFolhaAprovacao}[1]{
        \setboolean{isAprovacao}{true}
        \newcommand{\@FolhaAprovacao}{#1}}

% Ficha catalográfica
\newcommand{\ArquivoFicha}[1]{\newcommand{\@Ficha}{#1}}

% Arquivo Resumo e Abstract
\newcommand{\ArquivoResumo}[1]{\newcommand{\@Resumo}{#1}}

% Arquivo Agradecimentos
\newcommand{\ArquivoAgradecimentos}[1]{\newcommand{\@Agradecimentos}{#1}}

% Epígrafe de Dedicatória
\newcommand{\epigrafe}[1]{
        \setboolean{isEpigrafe}{true}
        \newcommand{\@Epigrafe}{#1}}
\newcommand{\dedicatoria}[1]{
        \setboolean{isDedicatoria}{true}
        \newcommand{\@Dedicatoria}{#1}}

% Comandos de inclusão de Listas Opcionais (Figuras, Tabelas, etc)
\newcommand{\IncluiListaFiguras}{
        \setboolean{isListaFiguras}{true}}
\newcommand{\IncluiListaTabelas}{
        \setboolean{isListaTabelas}{true}}
\newcommand{\IncluiListaSimbolos}{
	\setboolean{isListaSimbolos}{true}}
\newcommand{\IncluiListaSiglas}{
	\setboolean{isListaSiglas}{true}}

% Lista de Símbolos: Arquivo e Construção por \simbolo
\newcommand{\ArquivoSimbolos}[1]{
	\setboolean{isArquivoSimbolos}{true}
	\setboolean{isListaSimbolos}{true}
	\newcommand{\@Simbolos}{#1}}
\newcommand{\listadesimbolos}{
	\chapter*{Lista de S\'imbolos}
    \addcontentsline{toc}{chapter}{Lista de S\'imbolos}
	\@starttoc{lsb}}
\newcommand{\simbolo}[2]{\addcontentsline{lsb}{simb}{
		\protect\makebox[0.15\textwidth][l]{#1}{#2}
	  }}
\newcommand{\l@simb}[2]{
	\setlength{\parskip}{\mainparskip} 
    \leftskip 0.15\textwidth \relax \addtolength{\leftskip}{\fboxsep}
    \parindent 0em \relax \@afterindenttrue
    \interlinepenalty\@M
    \leavevmode \advance\leftskip 0pt \null \nobreak 
    \hskip -\leftskip \hskip -0.5\fboxsep 
    {#1} \par }
\newcommand{\makelistadesimbolos}{
	\begin{spacing}{1}
       \listadesimbolos
    \end{spacing}
   }

% Lista de Siglas e Abreviaturas: Arquivo e Construção por \sigla e \abreviatura
\newcommand{\ArquivoSiglas}[1]{
	\setboolean{isArquivoSiglas}{true}
	\setboolean{isListaSiglas}{true}
	\newcommand{\@Siglas}{#1}}
\newcommand{\listadesiglas}{
	\chapter*{Lista de Siglas e Abreviaturas}
	\addcontentsline{toc}{chapter}{Lista de Siglas e Abreviaturas}
	\@starttoc{lsa}}
\newcommand{\sigla}[2]{\addcontentsline{lsa}{sigla}{
		\protect\makebox[0.15\textwidth][l]{#1}{{#2}}
}}
\newcommand{\abreviatura}[2]{\sigla{#1}{#2}}
\newcommand{\l@sigla}[2]{
	\setlength{\parskip}{\mainparskip} 
	\leftskip 0.15\textwidth \relax \addtolength{\leftskip}{\fboxsep}
	\parindent 0em \relax \@afterindenttrue
	\interlinepenalty\@M
	\leavevmode \advance\leftskip 0pt \null \nobreak 
	\hskip -\leftskip \hskip -0.5\fboxsep 
	{#1} \par }
\newcommand{\makelistadesiglas}{
	\begin{spacing}{1}
	   \listadesiglas
	\end{spacing}
}


% Comando para inclusão de Fonte em Figuras  
\newcommand{\fonte}[1]{
	\vskip -\belowcaptionskip
	%\vskip 6pt
	\centering{#1} 
	\vskip \belowcaptionskip}



%%
%% Declaração de comandos de formatação pré-textuais
%%

% Capa da Dissertação
\newcommand{\capa}{  
 \thispagestyle{empty}
 \espacosimples
 
 \begin{center}
 \large \uppercase{Universidade Estadual do Oeste do Paran\'{a}} \\
 \vspace{1ex} 
 \large \uppercase{Campus de Foz do Igua\c{c}u} \\
 \vspace{1ex} 
 \large \uppercase{Programa de P\'os-Gradua\c{c}\~ao em } \\
 \uppercase{Engenharia El\'etrica e Computa\c{c}\~ao}
 \end{center}
 
 \vspace{2cm}
 \begin{center}
 \large \uppercase{Disserta\c{c}\~ao de Mestrado}
 \end{center}
 
 \vspace*{2cm}

 \begin{center}
 \parbox{\textwidth}{
      \Large
      \begin{center}
         \textbf{\MakeUppercase{\TituloDissertacao}}
      \end{center}
    }
    
 \vspace{2cm}
 {\Large \MakeUppercase{\NomeAutor}}
 \end{center}

 \vspace{\fill}
 \begin{center}
 \large \uppercase{Foz do Igua\c{c}u}\\
 \uppercase{\AnoDefesa} \\
 \vspace*{1cm}
 \end{center}

 \clearpage
 \thispagestyle{empty}
 \rule{0pt}{10cm}
 \clearpage
 \setcounter{page}{1}
 \espacotexto
}


% Folha de rosto da dissertação  
\newcommand{\rosto}{
 \thispagestyle{empty}
 \begin{center}
  \vspace*{1cm}
  {\large \NomeAutor}
 
  \vspace{2cm}
  \parbox{\textwidth}{
      \Large 
      \begin{center}
         \textbf{\TituloDissertacao}
      \end{center}
     }

  \vspace{2in}

  \begin{flushright}
  \parbox{3.50in}{
  Disserta\c{c}\~ao de Mestrado apresentada ao Programa de P\'os-Gradua\c{c}\~ao
  em Engenharia El\'etrica e Computa\c{c}\~ao
  como parte dos requisitos para obten\c{c}\~ao do t\'{\i}tulo de 
  Mestre em Engenharia El\'etrica e Computa\c{c}\~ao.
  \'Area de concentra\c{c}\~ao: Sistemas Din\^amicos e Energ\'eticos.}
  \end{flushright}

  \vspace{0.2in}
  \begin{flushright}
  \parbox{3.50in}{
   Orientador: \NomeOrientador \\ 
  \coorientadores
  }
  \end{flushright}

  \vspace{\fill}
  Foz do Igua\c{c}u \\
  \AnoDefesa
  \vspace*{1cm}
 \end{center}
} 
 

% Folha de aprovação da dissertação
\newcommand{\folhaaprovacao}{
 \thispagestyle{empty}
 \vspace*{0.1cm}
 \begin{center}
    \parbox{\textwidth}{
      \Large 
      \begin{center}
         \textbf{\TituloDissertacao}
      \end{center}
    }

    \vspace{1cm}
    {\large \NomeAutor}
 \end{center}

 \vspace*{\fill}
 
 \begin{center}
 Esta Disserta\c{c}\~ao de Mestrado foi apresentada ao Programa de   P\'os-Gradua\c{c}\~ao em \\
 Engenharia  El\'etrica e Computa\c{c}\~ao e aprovada pela Banca Examinadora: \\
 Data da defesa p\'ublica: \DataDefesa.
 \end{center}

 \vspace*{\fill}
  
 \begin{center}
    \membrosbanca
 \end{center}

 \vspace*{1cm}
}


% Folha de Dedicatória
\newcommand{\MakeDedicatoria}{
 \vspace*{\fill}
 \begin{flushright}
  \@Dedicatoria
 \end{flushright} \normalsize
 \vspace*{1in}
 \newpage \thispagestyle{plain} 
}
 
% Folha de Epígrafe
\newcommand{\MakeEpigrafe}{
 \vspace*{\fill}
 \begin{flushright}
  \@Epigrafe
 \end{flushright} \normalsize
 \vspace*{1in}
 \newpage \thispagestyle{plain} 
}

% Resumo e Abstract
\newenvironment{resumo}{\@makeschapterhead{Resumo}\noindent}{}
\newcommand{\palavraschave}[1]{\vspace*{1.5ex}\noindent{\bf Palavras-chave}: #1.}

\newenvironment{abstract}{\@makeschapterhead{Abstract}\noindent}{}
\newcommand{\keywords}[1]{\vspace*{1.5ex}\noindent{\bf Keywords}: #1.}




%%
%% Declaração comando MakePreTextuais
%%
\newcommand{\MakePreTextuais}{
 \capa
 
 \ifthenelse{\boolean{isOptRevisao}}{}{
    \cleardoublepage
    \rosto

    %% Ficha Catalográfica (*** DADOS FORNECIDOS PELA BAE ***)
     \ifthenelse{\boolean{isOptDigital}}{ \vspace*{\fill}
                \rule{5mm}{0pt}\includegraphics[width=12.1cm]{\@Ficha} \vspace*{2.3cm}}{}
    %% Aprocacao
    \cleardoublepage
    \ifthenelse{\boolean{isOptDigital}}{
         \ifthenelse{\boolean{isAprovacao}}{
             \begin{center}           
               \includegraphics[width=0.98\textwidth,height=0.98\textheight]{\@FolhaAprovacao}
             \end{center}
         }{
             {\huge Escaneie a folha de aprova\c{c}\~ao assinada, \\
              converta o arquivo para .eps e informe o \\
              nome do arquivo com o comando \\
              {\tt ArquivoFolhaAprovacao}}
         } 
    }{
         \folhaaprovacao
    } % isOptDigital

    %% Resumo & Abstract
    \cleardoublepage
    \input{\@Resumo}

    %% Dedicatória
    \ifthenelse{\boolean{isDedicatoria}}
    {\cleardoublepage\MakeDedicatoria}{}

    %% Agradecimentos
    \cleardoublepage
    \input{\@Agradecimentos}

    %% Epígrafe
    \ifthenelse{\boolean{isEpigrafe}}
    {\cleardoublepage\MakeEpigrafe}{}
  }
 %% Lista de conteúdo (sumário)
 \def\contentsname{Sum\'ario}
 \begin{spacing}{1}
   \tableofcontents
 \end{spacing}

 \ifthenelse{\boolean{isOptRevisao}}{}{
    %% Lista de figuras (gerada automaticamente)
    \ifthenelse{\boolean{isListaFiguras}}{ 
        \makelistoffigures}{}

    %% Lista de tabelas (gerada automaticamente)
    \ifthenelse{\boolean{isListaTabelas}}{ 
        \makelistoftables}{}

    %% Lista de Simbolos (gerada manualmente)
    \ifthenelse{\boolean{isListaSimbolos}}{
    	\ifthenelse{\boolean{isArquivoSimbolos}}{
    	   \input{\@Simbolos}}{   
           \makelistadesimbolos}}{}
    
    %% Lista de Siglas (gerada manualmente)
    \ifthenelse{\boolean{isListaSiglas}}{
    	\ifthenelse{\boolean{isArquivoSiglas}}{
    		\input{\@Siglas}}{
    	    \makelistadesiglas}}{}

  }
}


%%
%% Declaração comando bibliograpypgeec
%%
\newcommand{\bibliographypgeec}[1]{
 \begin{spacing}{1} 
 \bibliography{#1}
 \end{spacing}
}



\AtEndOfClass{
    \RequirePackage[T1]{fontenc}
    \ifthenelse{\boolean{isLatin1}}{
        \RequirePackage[latin1]{inputenc}}{
        \RequirePackage[utf8]{inputenc}}
    \RequirePackage{times}
    
    \RequirePackage[portuges, brazil]{babel}    % hiphenação em portugues
    
    \RequirePackage{indentfirst}        % indenta primeiro parágrafo

    \RequirePackage{wasysym}
    \RequirePackage{multirow}    
    \RequirePackage{longtable}
    \RequirePackage{graphicx}
             
    \RequirePackage{setspace}
    \RequirePackage{geometry}
    \geometry{top=3cm, bottom=2cm, left=3cm, right=2cm}
   
    % Para incluir Referencias Bibliográficas no TOC
    \usepackage[nottoc]{tocbibind}
    
    % Configuração do caption de figuras e tabelas
    \PassOptionsToPackage{
    	format=plain,labelsep=colon,textformat=simple, 	
    	indention=0pt,justification=centering,
    	font={stretch=1},labelfont=bf,skip=0pt,
     figureposition=bottom,tableposition=top}{caption}
    \RequirePackage{caption}
    \setlength{\floatsep}{12pt} % vskip entre floats sucessivos (soma com belowcaption)
    \setlength{\textfloatsep}{12pt} % vskip entre float e texto (soma tb)
    \setlength{\intextsep}{12pt}
    \setlength{\belowcaptionskip}{3pt} % depois da legenda
    
    % Padrão de referências bibliogáficas e citações
    % Passou a ser utilizado natbib + har2nat
	%  para ser possível a compatibilidade com backref
	\RequirePackage[longnamesfirst]{natbib}
% 	\RequirePackage{natbib}
	\RequirePackage{har2nat}
    \bibpunct{(}{)}{;}{a}{,}{,}\gdef\harvardand{\&}
    \setlength{\bibhang}{0.85cm}
	\setlength{\bibsep}{6pt}
		
	% Trecho descontinuado em Mar/19
	% Comandos para inclusão do pacote Harvard
	% Caso queira retomar o pacote Harvard, descomentar este trecho e 
	%   comentar o trecho acima relativo ao natbib + har2nat
    %\RequirePackage{harvard}    
	%\citationmode{abbr}
    %\citationstyle{dcu}
    %\renewcommand{\harvardand}{\&}
    %\renewcommand{\harvardurl}[1]{Disponível em: \textit{#1}}

    \bibliographystyle{dcu}
				
    % Hyperlinks no PDF e Backrefs das Referências Bibliográficas
    \RequirePackage[linktocpage,pagebackref,breaklinks]{hyperref}
    \renewcommand*{\backreftwosep}{ e } % traduzindo para portugues, do default "and"
    \renewcommand*{\backreflastsep}{ e } % traduzindo para portugues, do default "and"
    % Define os textos nas backrefs 
    \renewcommand*{\backrefalt}[4]{
	    \ifcase #1 %
		     N\~{a}o citado.%
	    \or
		     Citado na p\'agina #2.%
	    \else
		     Citado #1 vezes nas p\'aginas #2.%
	   \fi}%
    

    % Estilo da página corrente e demais páginas
    \pagestyle{myheadings}
    \markboth{}{}
    
    \espacotexto
}

\endinput
%%
%% End of file `pgeec.cls'.
