library(tidyverse)

# guide_axis --------------------------------------------------------------

data <- read_csv("data/precios_dieta_saludable.csv") %>% 
  rename(costo = costo_dieta_saludable_2017_usd_dia) %>% 
  slice_min(n = 20, costo)

ggplot(data, aes( x = pais, y = costo, fill = continente))+
  geom_col()+
  coord_flip()

ggplot(data, aes( x = pais, y = costo, fill = continente))+
  geom_col()+
  scale_x_discrete(guide = guide_axis(check.overlap = T))

ggplot(data, aes( x = pais, y = costo, fill = continente))+
  geom_col()+
  scale_x_discrete(guide = guide_axis(angle = 90))

ggplot(data, aes( x = pais, y = costo, fill = continente))+
  geom_col()+
  scale_x_discrete(guide = guide_axis(n.dodge = 2))


ggplot(data, aes( x = pais, y = costo, fill = continente))+
  geom_col()+
  scale_x_discrete(guide = guide_axis(angle = 90))

ggplot(data, aes( x = pais, y = costo, fill = continente))+
  geom_col()+
  guides(x = guide_axis(angle = -90), 
         y = guide_axis(angle = 90))


ggplot(data, aes( x = pais, y = costo, fill = continente))+
  geom_col()+
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5))



# colores -----------------------------------------------------------------

colores <- c("dodgerblue3", "darkgoldenrod", "forestgreen", "deeppink3", "gold", "plum3")
names(colores) <- c("Europa", "África", "América del Norte", "América del Sur", "Asia", "Oceanía")


ggplot(data, aes( x = pais, y = costo, fill = continente))+
  geom_col()+
  scale_x_discrete(guide = guide_axis(angle = 90))+
  scale_fill_manual(values = colores)
