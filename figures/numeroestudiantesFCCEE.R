# Get this figure: fig <- get_figure("mcortinas", 18)
# Get this figure's data: data <- get_figure("mcortinas", 18)$data
# Add data to this figure: p <- add_trace(p, x=c(4, 5), y=c(4, 5), kwargs=list(filename="estudiante", fileopt="extend"))
# Get y data of first trace: y1 <- get_figure("mcortinas", 18)$data[[1]]$y

# Get figure documentation: https://plot.ly/r/get-requests/
# Add data documentation: https://plot.ly/r/file-options/

# You can reproduce this figure in R with the following code!

# Learn about API authentication here: https://plot.ly/r/getting-started
# Find your api_key here: https://plot.ly/settings/api

library(plotly)
trace1 <- list(
      x = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      y = c("5113", "5196", "5426", "5396", "5395", "5244"), 
      marker = list(color = "rgb(48, 147, 158)"), 
      name = "RestoUPNANavarra", 
      type = "bar", 
      uid = "4c0e33", 
      xsrc = "mcortinas:17:cae1b2", 
      ysrc = "mcortinas:17:e76651"
)
trace2 <- list(
      x = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      y = c("801", "752", "738", "722", "763", "738"), 
      marker = list(color = "rgb(77, 237, 255)"), 
      name = "RestoUpnaEspaña", 
      type = "bar", 
      uid = "4e35ad", 
      xsrc = "mcortinas:17:cae1b2", 
      ysrc = "mcortinas:17:2e46c1"
)
trace3 <- list(
      x = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      y = c("153", "158", "165", "155", "188", "182"), 
      marker = list(color = "rgb(19, 59, 64)"), 
      name = "RestoUPNAExtranjero", 
      type = "bar", 
      uid = "80f438", 
      xsrc = "mcortinas:17:cae1b2", 
      ysrc = "mcortinas:17:7e7116"
)
trace4 <- list(
      x = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      y = c("1413", "1311", "1258", "1199", "1129", "1109"), 
      marker = list(color = "rgb(226, 82, 61)"), 
      name = "FCCEENavarra", 
      type = "bar", 
      uid = "d32251", 
      xsrc = "mcortinas:17:cae1b2", 
      ysrc = "mcortinas:17:89ac3b"
)
trace5 <- list(
      x = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      y = c("118", "110", "116", "109", "96", "85"), 
      marker = list(color = "rgb(127, 46, 34)"), 
      name = "FCCEE-Resto España", 
      type = "bar", 
      uid = "fb0132", 
      xsrc = "mcortinas:17:cae1b2", 
      ysrc = "mcortinas:17:ffeb5a"
)
trace6 <- list(
      x = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      y = c("63", "63", "66", "58", "65", "72"), 
      marker = list(color = "rgb(250, 201, 87)"), 
      name = "FCCEE-Extranjero", 
      type = "bar", 
      uid = "868b55", 
      xsrc = "mcortinas:17:cae1b2", 
      ysrc = "mcortinas:17:9e4a3a"
)
trace7 <- list(
      x = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      y = c("55", "77", "102", "136", "167", "176"), 
      marker = list(color = "rgb(64, 64, 64)"), 
      name = "ADE-DchoNavarra", 
      type = "bar", 
      uid = "87785c", 
      xsrc = "mcortinas:17:cae1b2", 
      ysrc = "mcortinas:17:8e7678"
)
trace8 <- list(
      x = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      y = c("10", "20", "27", "33", "38", "38"), 
      name = "ADE-Dcho-RestoEspaña", 
      type = "bar", 
      uid = "f112dd", 
      xsrc = "mcortinas:17:cae1b2", 
      ysrc = "mcortinas:17:3b8be8"
)
trace9 <- list(
      x = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      y = c("1", "1", "3", "2", "3", "2"), 
      marker = list(color = "rgb(197, 197, 197)"), 
      name = "Ade-Dcho-Extranjero", 
      type = "bar", 
      uid = "1cd7bd", 
      xsrc = "mcortinas:17:cae1b2", 
      ysrc = "mcortinas:17:3175a9"
)
data <- list(trace1, trace2, trace3, trace4, trace5, trace6, trace7, trace8, trace9)
layout <- list(
      autosize = TRUE, 
      barmode = "stack", 
      hovermode = "closest", 
      legend = list(
            orientation = "h", 
            traceorder = "normal"
      ), 
      margin = list(
            r = 90, 
            t = 180, 
            b = 100, 
            l = 110, 
            pad = 15
      ), 
      showlegend = TRUE, 
      title = "Estudiantes según origen geográfico", 
      titlefont = list(family = "Roboto"), 
      xaxis = list(
            autorange = TRUE, 
            range = c(-0.5, 5.5), 
            showgrid = TRUE, 
            showline = TRUE, 
            side = "top", 
            title = "Año", 
            type = "category", 
            zeroline = TRUE
      ), 
      yaxis = list(
            autorange = TRUE, 
            range = c(0, 8316.84210526), 
            title = "Número de Estudiantes Matriculados", 
            type = "linear"
      )
)
p <- plot_ly()
p <- add_trace(p, x=trace1$x, y=trace1$y, marker=trace1$marker, name=trace1$name, type=trace1$type, uid=trace1$uid, xsrc=trace1$xsrc, ysrc=trace1$ysrc)
p <- add_trace(p, x=trace2$x, y=trace2$y, marker=trace2$marker, name=trace2$name, type=trace2$type, uid=trace2$uid, xsrc=trace2$xsrc, ysrc=trace2$ysrc)
p <- add_trace(p, x=trace3$x, y=trace3$y, marker=trace3$marker, name=trace3$name, type=trace3$type, uid=trace3$uid, xsrc=trace3$xsrc, ysrc=trace3$ysrc)
p <- add_trace(p, x=trace4$x, y=trace4$y, marker=trace4$marker, name=trace4$name, type=trace4$type, uid=trace4$uid, xsrc=trace4$xsrc, ysrc=trace4$ysrc)
p <- add_trace(p, x=trace5$x, y=trace5$y, marker=trace5$marker, name=trace5$name, type=trace5$type, uid=trace5$uid, xsrc=trace5$xsrc, ysrc=trace5$ysrc)
p <- add_trace(p, x=trace6$x, y=trace6$y, marker=trace6$marker, name=trace6$name, type=trace6$type, uid=trace6$uid, xsrc=trace6$xsrc, ysrc=trace6$ysrc)
p <- add_trace(p, x=trace7$x, y=trace7$y, marker=trace7$marker, name=trace7$name, type=trace7$type, uid=trace7$uid, xsrc=trace7$xsrc, ysrc=trace7$ysrc)
p <- add_trace(p, x=trace8$x, y=trace8$y, name=trace8$name, type=trace8$type, uid=trace8$uid, xsrc=trace8$xsrc, ysrc=trace8$ysrc)
p <- add_trace(p, x=trace9$x, y=trace9$y, marker=trace9$marker, name=trace9$name, type=trace9$type, uid=trace9$uid, xsrc=trace9$xsrc, ysrc=trace9$ysrc)
p <- layout(p, autosize=layout$autosize, barmode=layout$barmode, hovermode=layout$hovermode, legend=layout$legend, margin=layout$margin, showlegend=layout$showlegend, title=layout$title, titlefont=layout$titlefont, xaxis=layout$xaxis, yaxis=layout$yaxis)


if ( !require(RSelenium) ) {
      install.packages("RSelenium", repos = "https://cloud.r-project.org/")
}

p %>%
      export(file = "estudiantes.svg",
             selenium = RSelenium::rsDriver(browser = "chrome"))
plotly_IMAGE(p, format = "pdf", out_file = "output.pdf")
