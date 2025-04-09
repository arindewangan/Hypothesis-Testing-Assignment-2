# Energy consumption across US regions

a <- c(13, 8, 11, 12, 11)
b <- c(15, 10, 16, 11, 13, 10)
c <- c(5, 11, 9, 5)
d <- c(8, 10, 6, 5, 7)

consumption <- c(a, b, c, d)
region <- factor(c(rep("Northeast", length(a)), 
                   rep("Midwest", length(b)), 
                   rep("South", length(c)), 
                   rep("West", length(d))))

model <- aov(consumption ~ region)
summary(model)

p_value <- summary(model)[[1]][["Pr(>F)"]][1]
alpha <- 0.05

if (p_value < alpha) {
  cat("p-value =", p_value, "<", alpha, "\nSignificant difference in mean energy consumption among regions.\n")
} else {
  cat("p-value =", p_value, ">=", alpha, "\nNo significant difference in mean energy consumption among regions.\n")
}
