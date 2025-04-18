# Generated by `rjournal_pdf_article()` using `knitr::purl()`: do not edit by hand
# Please edit texor.Rmd to modify this file

## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(echo = FALSE, warning = FALSE, message = FALSE)
library(plotly)
library(ggplot2)


## ----workflow, eval=FALSE-----------------------------------------------------
# library(DiagrammeR)
# wf <- create_node_df(
#         n=8,
#         type=c("a", "b", "a", "b",
#                "a", "b", "b", "a"),
#         label=c("original article", "pre-processing in R",
#                 "pre-processed article", "pandoc reader",
#                 "AST",
#                 "modify AST using lua filter",
#                 "pandoc writer",
#                 "converted article"
#                 ),
#         shape="rectangle",
#         width=c(1.3, 1.7, 1.9, 1.3, 0.5, 2.3, 1.2, 1.5),
#         fillcolor = c("darkseagreen2", "grey85", "darkseagreen2", "grey85", "darkseagreen2", "grey85", "grey85", "darkseagreen2"),
#         color = c("black", "grey85", "black", "grey85", "black", "grey85", "grey85", "black"),
#         fontcolor="black",
#         x=c(1,1,1,1,1,2,1,1),
#         y=c(1,2,3,4,5,5,6,6),
#         fontsize=14
#         )
# wf_arrows <- create_edge_df(from = c(1, 2, 3, 4, 5, 6, 5, 7),
#                             to = c(2, 3, 4, 5, 6, 5, 7, 8),
#                             color="black")
# wf_graph <- create_graph(wf, wf_arrows,
#                    directed = TRUE, attr_theme = "tb")
# set.seed(7)
# render_graph(wf_graph, layout="fr", height=500)


## ----wf-fig, fig.cap="Workflow of the document conversion conducted by texor. (Note: AST is pandoc's abstract syntax tree.)", out.width="100%", fig.align='center', fig.width=3, fig.height=5, layout="l-body", fig.alt="Flow diagram showing original article pre-processed in R passed to pandoc which creates the AST and modifies using many lua filters then passed to pacdoc writer to produce the converted article."----
knitr::include_graphics("figures/wf.png")


## ----alghow, fig.cap="How to write algorithms.", out.width="60%", fig.align='center', fig.alt="Illustration of an algorithm starting with Data and Result, followed by a while, and an if/else block."----
knitr::include_graphics("figures/alghow.png")


#> \begin{table*}[htbp]
#> \begin{center}
#> \begin{tabular}{l | llll }
#>  \hline
#>  \multicolumn{1}{c |}{EXAMPLE} & \multicolumn{2}{c}{$X$} &
#> \multicolumn{2}{c}{$Y$} \\
#>  \hline
#>   & 1 & 2 & 1 & 2 \\
#>  EX1  & X11 & X12 &  Y11  & Y12 \\
#>  EX2  & X21 & X22 &  Y21  & Y22 \\
#>  EX3  & X31 & X32 &  Y31  & Y32 \\
#>  EX4  & X41 & X42 &  Y41  & Y42\\
#>  EX5  & X51 & X52 &  Y51  & Y52 \\
#> \hline
#> \end{tabular}
#> \caption{An example multicolumn table.}
#> \label{table:2}
#> \end{center}
#> \end{table*}

#> ::: center
#> ::: {#table:2}
#>   -------------------------------------
#>   EXAMPLE   \(X\)         \(Y\)
#>   --------- ------- ----- ------- -----
#>             1       2     1       2
#> 
#>   EX1       X11     X12   Y11     Y12
#> 
#>   EX2       X21     X22   Y21     Y22
#> 
#>   EX3       X31     X32   Y31     Y32
#> 
#>   EX4       X41     X42   Y41     Y42
#> 
#>   EX5       X51     X52   Y51     Y52
#>   -------------------------------------
#> 
#>   : Table 2: An Example Table with Multicolumn
#> :::
#> :::
