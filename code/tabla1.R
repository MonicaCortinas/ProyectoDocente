library(knitr)   
library(kableExtra)
library(formattable)

year <- c("1983","2001", "2007", "2012") 
nombre <- c("Ley Orgánica 11/1983 de Reforma Universitaria (LRU)", "Ley Orgánica 6/2001 de Universidades (LOU)","Ley Orgánica 4/2007,de 12 de abril, por la que se modifica la Ley Orgánica 6/2001 de Universidades","Real Decreto-ley 14/2012, de 20 de abril que afecta a la Ley Orgánica 4/2007,de 12 de abril" )
partido<-c("PSOE", "PP", "PSOE", "PP")
etapa <- c("1982-1996", "1996-2004", "2004-2011", "2011-")
tabla <- data.frame("Año"=year,"Nombre"=nombre, "Partido"=partido, "Periodo"=etapa)
knitr::kable(tabla, row.names = FALSE, format = "latex", booktabs = T, 
             caption = "\\label{tabla01}Normas Legales sobre Universidad posteriores a 1978") %>% 
      column_spec(2, width = "13em")
