## Titulaciones UPNA

gradoplazas_graph <- read_csv("data/gradoplazas_graph.csv")
View(gradoplazas_graph)

gradoplazas_graph$Titulo<-factor(gradoplazas_graph$CentroTitul)

gradoplazas_graph$Titulo<-factor(gradoplazas_graph$Titulo, 
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

ggplot(gradoplazas_graph)+
      geom_bar(alpha=1/3,mapping=(aes(x=Titulo, y=Plazas, fill=Centro)), stat="identity")+
      geom_bar(alpha=2/3, mapping=(aes(x=Titulo, y=Matriculadas, fill=Centro)), stat="identity")+
      coord_flip()+
      theme(legend.position = "bottom")+
      theme_minimal()+
      labs(x = "", y = "Plazas Ofertadas y Matriculadas") +
      theme(text=element_text(size=16, 
                              family="OpenSans"))
      
