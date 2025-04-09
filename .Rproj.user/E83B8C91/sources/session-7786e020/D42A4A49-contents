# Battery life across mobile brands

a <- c(19.60, 18.82, 19.00, 18.45, 19.79, 19.03, 17.89, 19.42)
b <- c(21.10, 20.00, 20.43, 19.67, 18.99, 19.98, 20.14, 19.78)
c <- c(10.31, 10.02, 9.41, 9.89, 10.05, 10.52, 11.02, 10.42)
d <- c(17.02, 16.71, 17.78, 18.65, 15.98, 17.63, 17.00, 16.78, 16.92, 17.14)

battery <- c(a, b, c, d)
brand <- factor(c(rep("Brand_A", length(a)),
                  rep("Brand_B", length(b)),
                  rep("Brand_C", length(c)),
                  rep("Brand_D", length(d))))

model <- aov(battery ~ brand)
summary(model)

p_value <- summary(model)[[1]][["Pr(>F)"]][1]
alpha <- 0.02

if (p_value < alpha) {
  cat("p-value =", p_value, "<", alpha, "\nSignificant difference in mean battery life among brands.\n")
} else {
  cat("p-value =", p_value, ">=", alpha, "\nNo significant difference in mean battery life among brands.\n")
}
