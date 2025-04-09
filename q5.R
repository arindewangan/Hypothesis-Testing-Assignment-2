# Height comparison among adult groups

a <- c(71, 62, 63, 59, 67, 68, 63, 62, 66, 65, 61, 60)
b <- c(67, 68, 72, 66, 65, 69, 71, 70, 65, 64, 68)
c <- c(68, 67, 66, 68, 69, 70, 71, 69, 66, 67)

height <- c(a, b, c)
group <- factor(c(rep("College", length(a)),
                  rep("Athletes", length(b)),
                  rep("Army", length(c))))

model <- aov(height ~ group)
summary(model)

p_value <- summary(model)[[1]][["Pr(>F)"]][1]
alpha <- 0.01

if (p_value < alpha) {
  cat("p-value =", p_value, "<", alpha, "\nSignificant difference in mean height among the groups.\n")
} else {
  cat("p-value =", p_value, ">=", alpha, "\nNo significant difference in mean height among the groups.\n")
}
