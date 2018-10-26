library(tidyverse)
library(extrafont)
library(grid)
library(RColorBrewer)
loadfonts(device = "win")

data<-tibble(Tipo = c("U. Públicas", "U. Púb. Presenciales", "UPNA","U. Públicas", "U. Púb. Presenciales", "UPNA"),
             Porcentaje=c("46%", "46%", "50%", "54%", "54%", "50%"),
             Origen2=c("95%", "95%", "97%", "95%", "95%", "97%"),
             Sexo=c("Hombres", "Hombres", "Hombres", "Mujeres","Mujeres","Mujeres"),
            Origen=c("Origen España","Origen España", "Origen España", 
                     "Origen España", "Origen España", "Origen España" ))
            
colors<- brewer.pal(8,"Set2")
            
            
pdf("estudiantes.pdf")
ggplot(data)+
            geom_bar(mapping=(aes(x=Tipo, y=Porcentaje, fill=Sexo)), stat="identity", position="dodge")+
            geom_point(mapping=(aes(x=Tipo, y=Origen2, color=Origen)),shape=15,size=4)+
            geom_line(mapping=(aes(x=Tipo, y=Origen2, color=Origen)))+
            ggtitle("Estudiantes de Nuevo Acceso")+
            theme_minimal()+
            scale_fill_manual(values=c(colors[3],colors[4]))+
            scale_color_manual(values=c(colors[5]))+
            theme(legend.position="bottom")
dev.off()
svg(filename="estudiantes.svg", 
                width=12, 
                height=6, 
                pointsize=12)
      ggplot(data)+
      geom_bar(mapping=(aes(x=Tipo, y=Porcentaje, fill=Sexo)), stat="identity", position="dodge")+
      geom_point(mapping=(aes(x=Tipo, y=Origen2, color=Origen)),size=3)+
      geom_line(mapping=(aes(x=Tipo, y=Origen2, color=Origen)))+
      ggtitle("Estudiantes de Nuevo Acceso")+
      theme_minimal()+
            theme(text=element_text(size=16,  family="Roboto"))+
            theme(title=element_text(size=16,  family="Roboto"))+
      scale_fill_brewer(palette="Set1")+
      scale_color_brewer(palette="Dark2")
dev.off()

svg(filename="gradoplazas_graph.svg", 
    width=12, 
    height=14, 
    pointsize=12)
ggsave("estudiantes.pdf", plot = g, device = NULL, path = NULL,
       scale = 1, width = NA, height = NA, units = c("in", "cm", "mm"),
       dpi = 300, limitsize = TRUE)

p <- ggplotly(g)

if ( !require(RSelenium) ) {
    install.packages("RSelenium", repos = "https://cloud.r-project.org/")
}

p %>%
    export(file = "estudiantes.svg",
           selenium = RSelenium::rsDriver(browser = "chrome"))


