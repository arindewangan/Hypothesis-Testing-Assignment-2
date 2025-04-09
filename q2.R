# Book pages by rating

a <- c(382, 391, 335, 368, 400, 372)
b <- c(560, 343, 512, 329, 391, 367)
c <- c(384, 458, 409, 309, 374, 459)
d <- c(325, 390, 304, 240, 306, 169)
e <- c(360, 298, 272, 368, 320, 326)

pages <- c(a, b, c, d, e)
rating <- factor(c(rep("1_star", length(a)),
                   rep("2_star", length(b)),
                   rep("3_star", length(c)),
                   rep("4_star", length(d)),
                   rep("5_star", length(e))))

model <- aov(pages ~ rating)
summary(model)

p_value <- summary(model)[[1]][["Pr(>F)"]][1]
alpha <- 0.01

if (p_value < alpha) {
  cat("p-value =", p_value, "<", alpha, "\nSignificant difference in mean number of pages across ratings.\n")
} else {
  cat("p-value =", p_value, ">=", alpha, "\nNo significant difference in mean number of pages across ratings.\n")
}
