library(plotly)
library(tidyverse)
library(extrafont)
library(grid)
library(RColorBrewer)
loadfonts(device = "win")

data <- tibble(Ambito=c("Total nacional","Total nacional",
                        "Navarra", "Navarra",
                        "UPNA", "UPNA"),
               Tipo=c("Sociales y Jurídicas", "Otros ámbitos",
                      "Sociales y Jurídicas", "Otros ámbitos",
                      "Sociales y Jurídicas", "Otros ámbitos"),
               Estudiantes=c(0.4621499, 0.5378501,
                             0.6166438, 0.3833562,
                             0.541844, 0.458156))
data$Ambito <- factor(data$Ambito, levels = c("Total nacional",
                                              "Navarra", 
                                              "UPNA"))
data$Tipo <- factor(data$Tipo, levels = c("Sociales y Jurídicas", "Otros ámbitos"))

colors <- brewer.pal(3,"Paired")

pdf("sociales.pdf")
ggplot(data)+
      geom_col(aes(x="Tipo", y=Estudiantes, fill=Tipo),position = position_stack(reverse = TRUE)) +
      facet_grid(. ~ Ambito)+
      xlab(NULL)+
      ylab("Porcentaje de Estudiantes")+
      theme_minimal()+
      theme(axis.text.x = element_blank())+
      scale_fill_manual(values=c(colors[2],colors[1]))+
      theme(legend.position="bottom")
dev.off()
p <- layout(p, annotations=layout$annotations, legend=layout$legend, title=layout$title, titlefont=layout$titlefont)

p %>%
      export(file = "sociales.svg",
             selenium = RSelenium::rsDriver(browser = "chrome"))
