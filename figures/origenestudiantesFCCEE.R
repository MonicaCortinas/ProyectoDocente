library(tidyverse)
library(extrafont)
library(grid)
library(RColorBrewer)
loadfonts(device = "win")
library(plotly)

data<-tibble(Curso=c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017(A)",
                     "2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017(A)",
                     "2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017(A)",
                     "2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017(A)",
                     "2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017(A)"),
             Porcentaje= c(85, 86, 86, 86, 85, 85, 
                         89, 88, 87, 88, 88, 88,
                        83, 79, 77, 80, 80, 81,
                        87.2, 89.9, 89.8, 91.3, 92.0,91.8,
                        83.8, 74.1, 78.9, 69.8, 69.2, 68.1),
             "Ambito"=c("UPNA","UPNA", "UPNA", "UPNA", "UPNA", "UPNA",
                      "FCCEE", "FCCEE", "FCCEE", "FCCEE", "FCCEE", "FCCEE",
                     "ADE_DCHO","ADE_DCHO", "ADE_DCHO", "ADE_DCHO", "ADE_DCHO", "ADE_DCHO",
                     "ADE","ADE", "ADE", "ADE", "ADE", "ADE",
                     "ADE_ECO", "ADE_ECO", "ADE_ECO", "ADE_ECO", "ADE_ECO", "ADE_ECO"))

data$Curso <- factor(data$Curso, levels = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017(A)"))
data$Ambito <- factor(data$Ambito, levels = c("ADE_DCHO","ADE_ECO","ADE","FCCEE","UPNA"))


pdf("origenestudiantes.pdf")
ggplot(data)+
      geom_bar(mapping=(aes(x=Ambito, y=Porcentaje, fill=Curso)), stat="identity", position="dodge")+
      ggtitle("Porcentaje de Estudiantes con Origen Navarra-UPNA y FCCEE")+
      xlab("Ámbito")+
      theme_minimal()+
      scale_fill_brewer(palette ="GnBu")+
      theme(legend.position="bottom")+
      theme(axis.text.x = element_text( hjust=1)) +
      coord_flip()
dev.off()

g<-ggplot(data)+
      geom_bar(mapping=(aes(x=Ambito, y=Porcentaje, fill=Curso)), stat="identity", position="dodge")+
      ggtitle("Porcentaje de Estudiantes con Origen Navarra-UPNA y FCCEE")+
      xlab("Ámbito")+
      theme_minimal()+
      scale_fill_brewer(palette ="GnBu")+
      theme(legend.position="bottom")+
      theme(axis.text.x = element_text( hjust=1)) +
      coord_flip()

p <- ggplotly(g)
p <- add_trace(p, x=trace1$x, y=trace1$y, name=trace1$name, orientation=trace1$orientation, showlegend=trace1$showlegend, type=trace1$type, uid=trace1$uid, xsrc=trace1$xsrc, ysrc=trace1$ysrc)
p <- add_trace(p, x=trace2$x, y=trace2$y, name=trace2$name, orientation=trace2$orientation, showlegend=trace2$showlegend, type=trace2$type, uid=trace2$uid, xsrc=trace2$xsrc, ysrc=trace2$ysrc)
p <- add_trace(p, x=trace3$x, y=trace3$y, name=trace3$name, orientation=trace3$orientation, showlegend=trace3$showlegend, type=trace3$type, uid=trace3$uid, xsrc=trace3$xsrc, ysrc=trace3$ysrc)
p <- add_trace(p, x=trace4$x, y=trace4$y, name=trace4$name, orientation=trace4$orientation, showlegend=trace4$showlegend, type=trace4$type, uid=trace4$uid, xsrc=trace4$xsrc, ysrc=trace4$ysrc)
p <- add_trace(p, x=trace5$x, y=trace5$y, name=trace5$name, orientation=trace5$orientation, showlegend=trace5$showlegend, type=trace5$type, uid=trace5$uid, xsrc=trace5$xsrc, ysrc=trace5$ysrc)
p <- layout(p, bargap=layout$bargap, bargroupgap=layout$bargroupgap, barmode=layout$barmode, font=layout$font, hovermode=layout$hovermode, legend=layout$legend, margin=layout$margin, showlegend=layout$showlegend, title=layout$title, titlefont=layout$titlefont, xaxis=layout$xaxis, yaxis=layout$yaxis)

if ( !require(RSelenium) ) {
      install.packages("RSelenium", repos = "https://cloud.r-project.org/")
}

p %>%
      export(file = "origenestudiantes.svg",
             selenium = RSelenium::rsDriver(browser = "chrome"))
