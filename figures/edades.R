library(plotly)
library(tidyverse)
library(extrafont)
library(grid)
library(RColorBrewer)
loadfonts(device = "win")
data<-tibble(Tipo=c("U. Públicas", "U. Púb. Presenciales", "UPNA",
                    "U. Públicas", "U. Púb. Presenciales", "UPNA",
                    "U. Públicas", "U. Púb. Presenciales", "UPNA",
                    "U. Públicas", "U. Púb. Presenciales", "UPNA"),
             Grupo=c("De 18 a 21 años","De 18 a 21 años","De 18 a 21 años",
                     "De 22 a 25 años","De 22 a 25 años","De 22 a 25 años",
                     "De 26 a 30 años","De 26 a 30 años","De 26 a 30 años",
                     "Más de 30 años","Más de 30 años","Más de 30 años"),
             Porcentaje=c(0.51, 0.579418354, 0.65,
                          0.27, 0.293859339, 0.27,
                          0.09, 0.076547323, 0.05,
                          0.13, 0.050174984, 0.03))
data$Tipo <- factor(data$Tipo, levels = c("U. Públicas", "U. Púb. Presenciales", "UPNA"))
data$Grupo <- factor(data$Grupo, levels = c("De 18 a 21 años",
                                            "De 22 a 25 años",
                                            "De 26 a 30 años",
                                            "Más de 30 años"))



pdf("edades.pdf")
ggplot(data)+
      geom_col(aes(x=Tipo, y=Porcentaje, fill=Grupo),position = position_stack(reverse = TRUE)) +
      ggtitle("Porcentaje de Estudiantes con Origen Navarra-UPNA y FCCEE")+
      xlab("Ámbito")+
      theme_minimal()+
      scale_fill_brewer(palette ="GnBu")+
      theme(legend.position="bottom")+
      theme(axis.text.x = element_text( hjust=1)) +
      coord_flip()
dev.off()

g<-ggplot(data)+
      geom_col(aes(x=Tipo, y=Porcentaje, fill=Grupo),position = position_stack(reverse = TRUE)) +
      ggtitle("Edad de los estudiantes. Upna frente a otras universidades")+
      xlab("Ámbito")+
      theme_minimal()+
      scale_fill_brewer(palette ="GnBu")+
      theme(legend.position="bottom")+
      theme(axis.text.x = element_text( hjust=1)) +
      coord_flip()

p <- ggplotly(g)

p <- plot_ly()
p <- add_trace(p, x=trace1$x, y=trace1$y, marker=trace1$marker, name=trace1$name, orientation=trace1$orientation, type=trace1$type, uid=trace1$uid, xsrc=trace1$xsrc, ysrc=trace1$ysrc)
p <- add_trace(p, x=trace2$x, y=trace2$y, marker=trace2$marker, name=trace2$name, orientation=trace2$orientation, type=trace2$type, uid=trace2$uid, xsrc=trace2$xsrc, ysrc=trace2$ysrc)
p <- add_trace(p, x=trace3$x, y=trace3$y, marker=trace3$marker, name=trace3$name, type=trace3$type, uid=trace3$uid, xsrc=trace3$xsrc, ysrc=trace3$ysrc)
p <- add_trace(p, x=trace4$x, y=trace4$y, marker=trace4$marker, name=trace4$name, type=trace4$type, uid=trace4$uid, xsrc=trace4$xsrc, ysrc=trace4$ysrc)
p <- layout(p, autosize=layout$autosize, bargap=layout$bargap, bargroupgap=layout$bargroupgap, font=layout$font, hovermode=layout$hovermode, legend=layout$legend, margin=layout$margin, showlegend=layout$showlegend, title=layout$title, titlefont=layout$titlefont, xaxis=layout$xaxis, yaxis=layout$yaxis)

p %>%
      export(file = "edades.svg",
             selenium = RSelenium::rsDriver(browser = "chrome"))

