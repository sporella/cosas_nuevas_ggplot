library(tidyverse)

data <- read_csv("data/indice-libertad-prensa.csv") %>% 
  filter(region_bm2 == "South America") %>% 
  group_by(pais) %>% 
  mutate(promedio = mean(puntaje, na.rm = T))

ggplot(data, aes(x = anio, y = puntaje, color = pais))+
  geom_line(aes(size = promedio))+
  geom_point(aes(size = pib_percapita))

ggplot(data, aes(x = anio, y = puntaje, color = pais))+
  geom_line(aes(linewidth = promedio))+
  geom_point(aes(size = pib_percapita))+
  scale_linewidth(range = c(0.1,1))+
  scale_size(range = c(1, 10))

ggplot(data, aes(x = anio, y = puntaje, color = pais))+
  geom_line(aes(linewidth = promedio))+
  geom_point(aes(size = pib_percapita))+
  scale_linewidth(range = c(0.1,1))+
  scale_size(range = c(1, 10))+
  scale_color_viridis_d()+
  theme_void()+
  theme(legend.position = "none", panel.background = element_rect(fill = "black"))+
  coord_polar()
