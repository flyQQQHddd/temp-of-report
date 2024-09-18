\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\RequirePackage{expl3 , xparse , l3keys2e}
\ProvidesClass{rs}[2024/09/18 v3 Standard LaTeX Template for RS]

\LoadClass[a4paper,oneside]{article}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[UTF8]{ctex}
\RequirePackage{amsmath, amsthm, amssymb, graphicx}
\RequirePackage{graphicx}% 图片插入宏包
\RequirePackage{subfigure}% 并排子图
\RequirePackage{float}% 浮动环境，用于调整图片位置
\RequirePackage[export]{adjustbox}% 防止过宽的图片
\RequirePackage[dvipsnames, svgnames, x11names]{xcolor}

\RequirePackage{amssymb}
\RequirePackage{unicode-math}
% \RequirePackage[tbtags]{amsmath}
\RequirePackage{mathtools}
\RequirePackage{extarrows}
\RequirePackage{ragged2e} % for \RaggedRight macro
\RequirePackage{booktabs}
\RequirePackage[normalem]{ulem}
\RequirePackage{physics}
\RequirePackage{supertabular}
\RequirePackage{multirow}
\RequirePackage[amsmath,thmmarks]{ntheorem}% AMSLaTeX宏包.
\RequirePackage{gbt7714}
\RequirePackage{graphicx}                 % 图形
\RequirePackage { tikz, pgfplots } % 绘图
\pgfplotsset { compat = 1.17 }
\RequirePackage{color}             %支持彩色
\RequirePackage{listings}
%\RequirePackage{mathrsfs}   % 不同于\mathcal or \mathfrak 之类的英文花体字体
\RequirePackage{url}
\RequirePackage{enumerate}
\RequirePackage{CJKfntef}
\RequirePackage{natbib}
\RequirePackage{hhline, boldline}
\RequirePackage{seqsplit, caption} %for table spacing to second row
\RequirePackage{siunitx} %for table spacing to second row
\RequirePackage{threeparttable} %to add footnote below table
\RequirePackage{enumitem} % 设置 enumerate 环境

\RequirePackage{booktabs}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 页面设置
\RequirePackage{fancyhdr,hyperref}
\RequirePackage{float}
\RequirePackage{subcaption}

% 消除预览PDF时超链接的红色边框
\hypersetup{pdfencoding=auto}
\hypersetup{hidelinks}


% 页边距
\RequirePackage[
    top=2.5truecm,
    bottom=2truecm,
    left=3truecm,
    right=3truecm,
    includefoot,
    xetex
]{geometry}

% 设置字号
\fontsize{9pt}{11pt}\selectfont

% 设置行距
\RequirePackage{setspace}
\setstretch{1.5}


\newcommand{\sectionbreak}{\clearpage}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 使用 tabularx 创建占满宽度的表格
\RequirePackage{tabularx}
\newcolumntype{L}{>{\RaggedRight\hangafter=1\hangindent=0em}X}
\newcolumntype{C}{>{\Centering\hangafter=1\hangindent=0em}X}
\newcolumntype{R}{>{\RaggedLeft\hangafter=1\hangindent=0em}X}
\ProvideDocumentCommand { \tabularxcolumn } { m }
  { m { #1 } }  % 使表格内容垂向居中

  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 封面页
\newtoks\mytitle    %标题
\newtoks\Ccollege   %学院
\newtoks\Cclass     %班级
\newtoks\CstudentNum%学号
\newtoks\Cname      %姓名
\newtoks\Cplace     %实习地点
\newtoks\Cteacher   %指导老师
\newtoks\Cdate      %日期

% 定长下划线
\newcommand\ful[2][7cm]{\underline{\makebox[#1][c]{#2}}}
% 基本信息行
\newcommand\infoline[2]{
    \raisebox{-3ex}[0pt]{\makebox[2cm][s]{\textbf{#1}}} & 
    {{}\raisebox{-3ex}[0pt]{\ful{\textbf{#2}}}\hfill{}} & 
    \\[-2ex]
}
% 仓颉造字
\newcommand\createHanzi[2]{
    \hbox{\scalebox{0.6}[1]{#1}\kern-.1em\scalebox{0.6}[1]{#2}}
}

% 不能删掉这段代码中的空行！
\def\maketitle{
  \thispagestyle{empty}
  \begin{center}\leavevmode
  
    % 标题
    \vspace{1.7cm}
    \linespread{2}
    {\heiti \zihao{1} \textbf{\the\mytitle} \par}
    % 信息
    
    \vspace{6cm}
    {\songti\zihao{-3}
        \begin{tabular}{p{3cm}<{\centering}p{3cm}<{\centering}p{3.9cm}}
        \infoline{学\hfill \quad\hfill \quad\hfill 院\hfill:\hfill}{\the\Ccollege}
        \infoline{班\hfill \quad\hfill \quad\hfill 级\hfill:\hfill}{\the\Cclass}
        \infoline{学\hfill \quad\hfill \quad\hfill 号\hfill:\hfill}{\the\CstudentNum}
        \infoline{姓\hfill \quad\hfill \quad\hfill 名\hfill:\hfill}{\the\Cname}
        \infoline{实\hfill 习\hfill 地\hfill 点\hfill:\hfill}{\the\Cplace}
        \infoline{指\hfill 导\hfill 教\hfill 师\hfill:\hfill}{\the\Cteacher}
        \end{tabular}
    }

    % 日期
    \vspace{3cm}
    {\songti \zihao{3} \textbf{\the\Cdate} \par}
  \end{center}%
  \newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 设置章节序号为中文
\RequirePackage{zhnumber} % change section number to chinese
\renewcommand\thesection{\zhnum{section}、}
\renewcommand\thesubsection{\arabic{subsection}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 目录页
\RequirePackage{tocloft} %目录设置
\ctexset{contentsname={目\qquad 录}}
\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{4}

\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}} % 目录后一行连续的点

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 添加插入代码的函数

\RequirePackage{minted}
\RequirePackage{mdframed}

\newenvironment{mintedframe}{%
    \begin{mdframed}[
        linewidth=0.5pt, % 外边框的线宽
        roundcorner=3pt, % 边框的圆角程度
        innerleftmargin=6pt, % 代码与边框的距离
        innerrightmargin=6pt, % 代码与边框的距离
        innertopmargin=6pt, % 代码与边框的距离
        innerbottommargin=6pt, % 代码与边框的距离
        
    ]
}{%
    \end{mdframed}
}

% command: addcode
% param 1: code type
% param 2: code filename
\newcommand{\addcode}[2]{
    \begin{mintedframe}
    \inputminted[linenos, breaklines, fontsize=\small]{#1}{#2}
    \end{mintedframe}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\endinput % End Of File!