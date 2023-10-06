library(ggplot2)
library(ggpubr)
library(ggthemes)
library(reshape)

# change the file path to reflect your path
od <- read.csv("C:\\Users\\Your\\Path\\Here\\du_od.csv", header = T, sep = ",")

od$intensity <- (od$R + od$G + od$B)/3
od$absorption <- -log(od$intensity)
line <- lm(absorption ~ Day, od)
od$ODapprox <- od$absorption - line$coefficients[1]

head(od)
ggplot(od, aes(Day,OD750)) +
  geom_point() + 
  geom_smooth(method = lm, col = "green") +
  stat_cor(aes(label=..rr.label..)) +
  theme_bw()
ggsave("od-day.png", width=8, height=6, dpi=300)

ggplot(od, aes(Day,ODapprox)) +
  geom_point() + 
  geom_smooth(method = lm, col = "green") +
  stat_cor(aes(label=..rr.label..)) +
  theme_bw()
ggsave("odapprox-day.png", width=8, height=6, dpi=300)

ggplot(od, aes(OD750,ODapprox)) +
  geom_point() + 
  geom_smooth(method = lm, formula = y~x+0, col = "green") +
  theme_bw()
ggsave("odapprox-od.png", width=8, height=6, dpi=300)

odRGB <- melt(od[1:4], id = "Day")
ggplot(odRGB, aes(Day, value, col = variable)) +
  geom_point() + 
  theme_bw()
ggsave("rgb-day.png", width=8, height=6, dpi=300)
