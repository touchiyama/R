library(ggpubr)

df2 <- data.frame(strain=rep(c("B", "O"), each=6), time=rep(c("1WK", "6WK"),2),psi=c(0.969,1.0,1.0,0.792,0.873,0.59,0.992,1.0,1.0,0.893,0.872,1.0))
ggline(df2, x="time", y="psi", ylim=c(0,1), add="mean_se", color = "strain", palette = c("blue", "green"), shape = "strain", linetype = "strain")
