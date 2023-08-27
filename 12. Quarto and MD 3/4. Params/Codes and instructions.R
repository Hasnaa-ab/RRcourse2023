# Rendering
library(quarto)
library(reticulate)

quarto_render("QMD_class_3_4.qmd", execute_params = list(
  year = 2017,
  region = "Asia",
  printcode = FALSE,
  data = "file.csv"
))

# Name change

for (i in 1:length(season_data$no_season)) {
  


dt <- load("../../Data/season_1.RData")
s = season_data$no_season[1]
v = season_data$viewers[1]
d = season_data$description[1]
ax1 = season_data$no_season
ax2 = season_data$viewers
quarto_render("Assignment.qmd", execute_params = list(
  season = s,
  viewers = v,
  desc = d,
  y = ax2,
  x = ax1
), output_file = paste0("Season ", i , " Report", ".html"))

}
