---
address: |
  Abhishek Ulayil\
  Student, Institute of Actuaries of India\
  Mumbai, India\
  ORCiD: 0009-0000-6935-8690\
author:
- by Abhishek Ulayil
- This is a small sample article to demonstrate usage of texor to
  convert figure environments.
bibliography:
- figure-example.bib
title: Working with figure environments in texor
---

::: article
# Introduction

Images are an essential component in any article, However due to the
differences in the support for various graphic formats between LaTeX and
markdown/HTML we need to fallback on raster graphics. It is well
summarized in the table [1](#table:1)

::: {#table:1}
  -------------------------------------------------------
  Graphics Format   LaTeX   Markdown   Rmarkdown   HTML
  ----------------- ------- ---------- ----------- ------
  PNG               Yes     Yes        Yes         Yes

  JPG               Yes     Yes        Yes         Yes

  PDF               Yes     No         No          No

  SVG               No      Yes        Yes         Yes

  Tikz              Yes     No         Yes         No

  Algorithm         Yes     No         No          No
  -------------------------------------------------------

  : Table 1: Image Format support in various Markup/Typesetting
  Languages
:::

# Image with width parameters

This section may contain a figure such as Figure [1](#figure:rlogo).
This is the most basic example of figure.

``` r
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.35\textwidth]{Rlogo-5.png}
  \caption{The logo of R.}
  \label{figure:rlogo}
\end{figure}
```

![Figure 1: The logo of R.](Rlogo-5.png){#figure:rlogo width="35.0%"}

# Images in PDF format

Image [2](#fig:normal) is a graphical representation of normal
distribution.

``` r
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.5\textwidth]{normal}
  \caption{PDF of a normal distribution}
  \label{fig:normal}
\end{figure}
```

![Figure 2: PDF of a normal distribution](normal.png){#fig:normal
width="50.0%"}

# Multiple images

Pandoc v3 and above now supports a new Figure object [@pandoc] which
supports multiple images side by side or in a grid format.

### Two or more Images side by side

``` r
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.45\textwidth]{Rlogo-5.png}\includegraphics[width=0.45\textwidth]{normal}
  \caption{Images side by side}
  \label{fig:twoimages}
\end{figure}
```

<figure id="fig:twoimages">
<p><img src="Rlogo-5.png" style="width:45.0%" alt="image" /><img
src="normal.png" style="width:45.0%" alt="image" /></p>
<figcaption>Figure 3: Images side by side</figcaption>
</figure>

### Four Images in a grid

``` r
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.45\textwidth]{Rlogo-5.png}\includegraphics[width=0.45\textwidth]{normal}
 

  \includegraphics[width=0.45\textwidth]{normal}\includegraphics[width=0.45\textwidth]{Rlogo-5.png}
  \caption{Multiple images in a grid}
  \label{fig:fourimages}
\end{figure}
```

<figure id="fig:fourimages">
<p><img src="Rlogo-5.png" style="width:45.0%" alt="image" /><img
src="normal.png" style="width:45.0%" alt="image" /></p>
<p><img src="normal.png" style="width:45.0%" alt="image" /><img
src="Rlogo-5.png" style="width:45.0%" alt="image" /></p>
<figcaption>Figure 4: Multiple images in a grid</figcaption>
</figure>

# Tikz images

Here is a tikz image example in fig [5](#fig:tikz) adapted from
[@casflow].

Another interesting aspect of including tikz image here is that you can
modify the source and re-convert without making any other changes.
Figure will get updated in the generated html article.

### Tikz Code:

``` r
\begin{figure}
\includegraphics{tikz/figtikz.png}


%% Generated Image will included as a PNG above automatically
  \centering
\tikzstyle{process} = [rectangle, rounded corners,
minimum width=3cm, 
minimum height=1cm,
text centered, 
draw=black]
\tikzstyle{arrow} = [thick,->,>=stealth]
\begin{tikzpicture}[node distance=4cm]
%Nodes
\node (start) [process] {LaTeX Source with Tikz Image};
\node (isolate) [process, below right of=start] {Isolated tikz env};
\node (pro1) [process, below left of=isolate] {Standalone PDF file};
\node (pro2) [process, below right of=pro1, yshift=-0.5cm] {PNG file};
\node (link) [process, below left of=pro2] {Include PNG in article};
\node (stop) [process, below right of=link] {Convert To RJ-web-article};
% arrows
\draw [arrow] (start) -- node[anchor=east] {Extract Figure Block} (isolate);
\draw [arrow] (isolate) -- node[anchor=east] {Compile} (pro1);
\draw [arrow] (pro1) -- node[anchor=east] {Convert to raster} (pro2);
\draw [arrow] (pro2) -- node[anchor=east] {Include back to source as image} (link);
\draw [arrow] (link) -- node[anchor=east] {Using Pandoc} (stop);
\end{tikzpicture}
\caption{Tikz Image example}
  \label{fig:tikz}
\end{figure}
```

### Resultant Figure :

<figure id="fig:tikz">
<img src="tikz/figtikz.png" style="width:100.0%" />

<figcaption>Figure 5: Tikz Image example</figcaption>
</figure>

# Algorithm2e diagrams

we do support algorithm2e diagrams and images, these will be numbered
differently and we strongly suggest to use \"alg:\" in labels for best
results. Here is an example of algorithm [6](#alg:how), referenced from
[@algoexample]

``` r
\begin{figure}[htbp]
\includegraphics{alg/alghow.png}

\SetAlgoLined
\KwData{this text}
\KwResult{how to write algorithm with \LaTeX2e }
initialization\;
\While{not at end of this document}{
read current\;
\eIf{understand}{
go to next section\;
current section becomes this one\;
}{
go back to the beginning of current section\;
}
}
\caption{How to write algorithms}
  \label{alg:how}
\end{figure}
```

<figure id="alg:how">
<img src="alg/alghow.png" style="width:100.0%" />
<p>initialization</p>
<figcaption>Algorithm 1: How to write algorithms</figcaption>
</figure>

# Summary

In summary the [*texor*](https://CRAN.R-project.org/package=texor)
package supports:

-   Almost all image formats in LaTeX.

-   Algorithm and tikz as well in some capacity.

-   Multiple images in grid,side-by-side configuration.

-   Image Captions with Numbering and Labelling.
:::
