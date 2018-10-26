## Titulaciones UPNA
library(tidyverse)
library(extrafont)
library(grid)
library(RColorBrewer)
loadfonts(device = "win")
gradoplazas_graph <- read_csv("data/gradoplazas_graph.csv")
View(gradoplazas_graph)

gradoplazas_graph$Centro<-factor(gradoplazas_graph$Centro,
                                 levels=c("FCCEE","FCJ/FCCEE",
                                          "FCJ", "ETSIIT",
                                          "ETSIA", "FHHSS", "FCS"))

gradoplazas_graph$Titulo<-factor(gradoplazas_graph$CentroTitul, 
            levels=c("Enfermería","Fisioterapia",
                     "Maestro en Educación Primaria",
                     "Maestro en Educación Infantil",
                     "Trabajo Social",
                     "Sociología Aplicada",
                     "Ingeniería Agroalimentaria y del Medio Rural",
                     "DG Ing. Agroalimentaria Medio Rural y Innovación Procesos y Productos Alimentarios",
                     "Innovación de Procesos y Productos Alimentarios",
                     "Ingeniería en Tecnologías Industriales",
                     "Ingeniería Mecánica",
                     "Ingeniería Informática",
                     "Ingeniería Eléctrica y Electrónica",
                     "Ingeniería Tecnologías de Telecomunicación",
                     "Ingeniería Diseño Mecánico",
                     "Derecho",
                     "Relaciones Laborales y Recursos Humanos",     
                     "DG Administración y Dirección Empresas y  Derecho",
                      "Administración y Dirección de Empresas",
                     "Economía",
                     "DG Int.  Administración y Dirección Empresas y Economía"

))


g<-ggplot(gradoplazas_graph)+
      geom_bar(alpha=1/3,mapping=(aes(x=Titulo, y=Plazas, fill=Centro)), stat="identity")+
      geom_bar(alpha=2/3, mapping=(aes(x=Titulo, y=Matriculadas, fill=Centro)), stat="identity")+
      coord_flip()+
      theme_minimal()+
      labs(y = "Número de Plazas (ofertadas/matriculadas) 2016/2017") +
      xlab(NULL)+ 
      theme(text=element_text(size=14,  family="Roboto"))+
      theme(title=element_text(size=14,  family="Roboto"))+
      theme(legend.position=c(-0.65,0.85))+
      scale_fill_brewer(palette="Set1")


svg(filename="gradoplazas_graph.svg", 
    width=12, 
    height=14, 
    pointsize=12)
ggplot(gradoplazas_graph)+
      geom_bar(alpha=1/3,mapping=(aes(x=Titulo, y=Plazas, fill=Centro)), stat="identity")+
      geom_bar(alpha=2/3, mapping=(aes(x=Titulo, y=Matriculadas, fill=Centro)), stat="identity")+
      coord_flip()+
      theme_minimal()+
      ylab(NULL) +
      xlab(NULL)+ 
      theme(text=element_text(size=16,  family="Roboto"))+
      theme(title=element_text(size=16,  family="Roboto"))+
      theme(legend.position=c(-1.2,0.9))+
      scale_fill_brewer(palette="Dark2")
dev.off()

g<- ggplot(gradoplazas_graph)+
      geom_bar(alpha=1/3,mapping=(aes(x=Titulo, y=Plazas, fill=Centro)), stat="identity")+
      geom_bar(alpha=2/3, mapping=(aes(x=Titulo, y=Matriculadas, fill=Centro)), stat="identity")+
      coord_flip()+
      theme_minimal()+
      ylab(NULL) +
      xlab(NULL)+ 
      theme(text=element_text(size=16,  family="Roboto"))+
      theme(title=element_text(size=16,  family="Roboto"))+
      theme(legend.position=c(-1.2,0.9))

library(plotly)

ggplotly(g)
