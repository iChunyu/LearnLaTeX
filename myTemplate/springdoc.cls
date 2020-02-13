\ProvidesClass{springdoc}[2020/02/13 SpringMan's document template v1.0]

\LoadClass{ctexart}

% 设置页边距的宏包
\RequirePackage{geometry}
\geometry{ % 设置整体页面格式
	a4paper,
	left = 2.1cm,
	right = 2.1cm,
	bottom = 2.5cm,
	top = 2.5cm
}

% 页眉页脚
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\setlength{\headheight}{1cm}
\renewcommand{\headrule}
{
	\makebox[0pt][l]{\rule[1.15em]{\textwidth}{0.4pt}}%
	\rule[1em]{\textwidth}{0.4pt}
} 
\renewcommand{\footrulewidth}{0.4pt}

% 目录和超链接
\RequirePackage{tocbibind}					% 添加参考文献到目录
\RequirePackage{hyperref}					% 构造引用超链接
\hypersetup{colorlinks = true}				% 超链接用彩色显示但不要边框

% AMS数学包
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\numberwithin{equation}{section}			% 设置公式编号包含节编号

% XeLaTeX logo
\RequirePackage{metalogo}	

% 使用颜色并添加预定义名和表格支持
\RequirePackage[dvipsnames,table]{xcolor}

% 支持语法高亮的代码环境：lstlisting
\RequirePackage{listings}
\lstset{ % 代码环境整体设置
	basicstyle = \ttfamily,
	keywordstyle = \bfseries,
	commentstyle = \rmfamily\upshape,
	stringstyle = \ttfamily\slshape,
	tabsize = 4,
	backgroundcolor = \color{lightgray},	% 需先引入颜色宏包
	frame = single,
	language = TeX							% 设置默认语言
}

% 优化脚注
\RequirePackage[perpage]{footmisc}			% 脚注每页清零
\RequirePackage{pifont}						% 优化带圈的数字
\renewcommand{\thefootnote}{\ding{\numexpr171+\value{footnote}}}

% 图表宏包
\RequirePackage{graphicx}					% 插图宏包\includegraphics
\RequirePackage{tabularx}					% 定宽表格
\RequirePackage{multirow}					% 合并行
\RequirePackage{booktabs}					% 三线表
\RequirePackage{longtable}					% 跨页长表格
\RequirePackage{float}						% 图表浮动体控制

% 参考文献宏包
\RequirePackage[super,square]{natbib}
\bibliographystyle{unsrtnat}				% 设置参考文献按引用顺序排序

\renewcommand{\title}[1]{\newcommand{\thetitle}{#1}}
\renewcommand{\author}[1]{\newcommand{\theauthor}{#1}}
\newcommand{\version}[1]{\newcommand{\theversion}{#1}}
\newcommand{\finishdate}[1]{\newcommand{\thefinishdate}{#1}}
\newcommand{\lastupdate}[1]{\newcommand{\thelastupdate}{#1}}
\newcommand{\email}[1]{\newcommand{\theemail}{#1}}

\renewcommand{\maketitle}
{
	\begin{titlepage}
		\zihao{4}	% 设置封面采用四号字
		\ % 产生空格占位
		
		\vspace{\fill}
		
		\begin{flushright}
			{\Huge\bfseries \thetitle} \\
			\rule[1em]{\linewidth}{0.5ex}
			
			\begin{tabular}{rr}
				作者 & \theauthor \\
				版本 & \theversion \\
				完成日期 & \thefinishdate \\
				最后修改 & \thelastupdate \\
			\end{tabular}
		\end{flushright}
		
		\vspace{\stretch{4}}
		
		{\noindent\slshape Email: 
			\href{mailto:\theemail}
			{\theemail}
		}
	\end{titlepage}
}

\newenvironment{vertab}{
	\begin{longtable}{|p{0.05\textwidth}|p{0.2\textwidth}|p{0.65\textwidth}|}
		\multicolumn{3}{l}{（续表）} \\
		\hline
		\endhead
		\hline
		\endfirsthead
		\hline
		\endfoot
		\hline
		\endlastfoot
		\multicolumn{3}{|c|}{\cellcolor{BlueGreen!60}版本控制} \\
		\hline
		序号 & 修改日期 & 备注 \\ \hline
	}
{\end{longtable}}

\newenvironment{abbrtab}{
	\begin{longtable}{|p{0.05\textwidth}|p{0.2\textwidth}|p{0.65\textwidth}|}
		\multicolumn{3}{l}{（续表）} \\
		\hline
		\endhead
		\hline
		\endfirsthead
		\hline
		\endfoot
		\hline
		\endlastfoot
		\multicolumn{3}{|c|}{\cellcolor{BlueGreen!60}简称说明} \\
		\hline
		序号 & 简称 & 备注 \\ \hline
	}
	{\end{longtable}}

\newenvironment{symtab}{
	\begin{longtable}{|p{0.05\textwidth}|p{0.2\textwidth}|p{0.65\textwidth}|}
		\multicolumn{3}{l}{（续表）} \\
		\hline
		\endhead
		\hline
		\endfirsthead
		\hline
		\endfoot
		\hline
		\endlastfoot
		\multicolumn{3}{|c|}{\cellcolor{BlueGreen!60}符号说明} \\
		\hline
		序号 & 符号 & 备注 \\ \hline
	}
	{\end{longtable}}