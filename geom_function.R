library(tidyverse)

# geom_function() ---------------------------------------------------------

set.seed(1492)
random <- data.frame(x = rnorm(n = 100))


ggplot(random, aes(x = x))+
  geom_density()+
  geom_function(fun = dnorm, color = "red")


plot_base <- ggplot()+
  xlim(c(-5, 5))

plot_base +
  geom_function(fun = dnorm)+
  geom_function(fun = function(x){x + 2}, aes(color = "x + 2"))


plot_base +
  geom_function(fun = function(x){x + 2}, aes(color = "x + 2"))+
  geom_function(fun = function(x){x * 2}, aes(color = "x * 2"))+
  geom_function(fun = function(x){x ^ 2}, aes(color = "x ^ 2"))
