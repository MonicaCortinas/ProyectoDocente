
library(plotly)
trace1 <- list(
      x = c("A2011_12", "A2012_13", "A2013_14", "A2014_15", "A2015_16", "A2016_17 (A)"), 
      y = c("87", "83", "82", "80", "85", "73"), 
      name = "Mat 1ª Opción ADE", 
      type = "bar", 
      uid = "297288", 
      xsrc = "mcortinas:27:1b117d", 
      ysrc = "mcortinas:27:54888b"
)
trace2 <- list(
      x = c("A2011_12", "A2012_13", "A2013_14", "A2014_15", "A2015_16", "A2016_17 (A)"), 
      y = c("91", "83", "100", "100", "100", "100"), 
      marker = list(color = "rgb(214, 39, 40)"), 
      name = "Mat 1ª Opción ADE-ECO", 
      type = "bar", 
      uid = "04b78d", 
      xsrc = "mcortinas:27:1b117d", 
      ysrc = "mcortinas:27:3b88de"
)
trace3 <- list(
      x = c("A2011_12", "A2012_13", "A2013_14", "A2014_15", "A2015_16", "A2016_17 (A)"), 
      y = c("100", "100", "100", "100", "100", "100"), 
      marker = list(color = "rgb(148, 103, 189)"), 
      name = "Mat 1ª Opción ADE_Dcho", 
      type = "bar", 
      uid = "62c2f9", 
      xsrc = "mcortinas:27:1b117d", 
      ysrc = "mcortinas:27:7c1cc2"
)
trace4 <- list(
      x = c("A2011_12", "A2012_13", "A2013_14", "A2014_15", "A2015_16", "A2016_17 (A)"), 
      y = c("5.992", "6.67", "6.543", "5.62", "6.172", "6.31"), 
      connectgaps = FALSE, 
      line = list(
            color = "rgb(31, 119, 180)", 
            shape = "spline"
      ), 
      marker = list(size = 8), 
      mode = "lines+markers", 
      name = "Nota Corte Ade", 
      type = "scatter", 
      uid = "2199e2", 
      xsrc = "mcortinas:27:1b117d", 
      yaxis = "y2", 
      ysrc = "mcortinas:27:1ff661"
)
trace5 <- list(
      x = c("A2011_12", "A2012_13", "A2013_14", "A2014_15", "A2015_16", "A2016_17 (A)"), 
      y = c("9.064", "9.367", "9.703", "10.902", "10.028", "10.85"), 
      line = list(
            color = "rgb(214, 39, 40)", 
            shape = "spline"
      ), 
      marker = list(size = 8), 
      mode = "lines+markers", 
      name = "Nota corte ADE_Eco", 
      type = "scatter", 
      uid = "1b5ab6", 
      xaxis = "x", 
      xsrc = "mcortinas:27:1b117d", 
      yaxis = "y2", 
      ysrc = "mcortinas:27:bfbea2"
)
trace6 <- list(
      x = c("A2011_12", "A2012_13", "A2013_14", "A2014_15", "A2015_16", "A2016_17 (A)"), 
      y = c("9.619", "10.78", "9.804", "10.792", "9.907", "10.94"), 
      line = list(
            color = "rgb(148, 103, 189)", 
            shape = "spline"
      ), 
      marker = list(size = 8), 
      mode = "lines+markers", 
      name = "Nota Corte ADE_Dcho", 
      type = "scatter", 
      uid = "034582", 
      xaxis = "x", 
      xsrc = "mcortinas:27:1b117d", 
      yaxis = "y2", 
      ysrc = "mcortinas:27:c32348"
)
data <- list(trace1, trace2, trace3, trace4, trace5, trace6)
layout <- list(
      bargap = 0.34, 
      bargroupgap = 0.09, 
      font = list(family = "Roboto"), 
      hovermode = "closest", 
      legend = list(
            font = list(family = "Roboto"), 
            orientation = "h"
      ), 
      margin = list(
            r = 100, 
            b = 160, 
            pad = 2
      ), 
      showlegend = TRUE, 
      title = "Porcentaje de Matrícula en Primera Opción", 
      titlefont = list(family = "Roboto"), 
      xaxis = list(
            autorange = TRUE, 
            range = c(-0.5, 5.5), 
            titlefont = list(size = 16), 
            type = "category"
      ), 
      yaxis = list(
            autorange = TRUE, 
            domain = c(0, 0.45), 
            range = c(0, 105.263157895), 
            title = "% Matrícula", 
            titlefont = list(size = 16), 
            type = "linear"
      ), 
      yaxis2 = list(
            anchor = "x", 
            autorange = FALSE, 
            domain = c(0.55, 1), 
            range = c(5, 14), 
            ticks = "", 
            title = "Nota de Corte", 
            titlefont = list(size = 16), 
            type = "linear"
      )
)
p <- plot_ly()
p <- add_trace(p, x=trace1$x, y=trace1$y, name=trace1$name, type=trace1$type, uid=trace1$uid, xsrc=trace1$xsrc, ysrc=trace1$ysrc)
p <- add_trace(p, x=trace2$x, y=trace2$y, marker=trace2$marker, name=trace2$name, type=trace2$type, uid=trace2$uid, xsrc=trace2$xsrc, ysrc=trace2$ysrc)
p <- add_trace(p, x=trace3$x, y=trace3$y, marker=trace3$marker, name=trace3$name, type=trace3$type, uid=trace3$uid, xsrc=trace3$xsrc, ysrc=trace3$ysrc)
p <- add_trace(p, x=trace4$x, y=trace4$y, connectgaps=trace4$connectgaps, line=trace4$line, marker=trace4$marker, mode=trace4$mode, name=trace4$name, type=trace4$type, uid=trace4$uid, xsrc=trace4$xsrc, yaxis=trace4$yaxis, ysrc=trace4$ysrc)
p <- add_trace(p, x=trace5$x, y=trace5$y, line=trace5$line, marker=trace5$marker, mode=trace5$mode, name=trace5$name, type=trace5$type, uid=trace5$uid, xaxis=trace5$xaxis, xsrc=trace5$xsrc, yaxis=trace5$yaxis, ysrc=trace5$ysrc)
p <- add_trace(p, x=trace6$x, y=trace6$y, line=trace6$line, marker=trace6$marker, mode=trace6$mode, name=trace6$name, type=trace6$type, uid=trace6$uid, xaxis=trace6$xaxis, xsrc=trace6$xsrc, yaxis=trace6$yaxis, ysrc=trace6$ysrc)
p <- layout(p, bargap=layout$bargap, bargroupgap=layout$bargroupgap, font=layout$font, hovermode=layout$hovermode, legend=layout$legend, margin=layout$margin, showlegend=layout$showlegend, title=layout$title, titlefont=layout$titlefont, xaxis=layout$xaxis, yaxis=layout$yaxis, yaxis2=layout$yaxis2)

htmlwidgets::saveWidget(p, paste0("p.html"))

p %>%
      export(file = "indicadores.svg",
             selenium = RSelenium::rsDriver(browser = "chrome"))
