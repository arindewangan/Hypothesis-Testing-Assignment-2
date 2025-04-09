# Miles driven by vehicle type

a <- c(19.9, 15.3, 2.2, 6.8, 34.2, 8.3, 12.0, 7.0, 9.5, 1.1)
b <- c(1.8, 24.6, 7.2, 37.0, 7.2, 21.2, 6.5, 23.6)
c <- c(13.3, 23.0, 25.4, 15.3, 57.1, 14.5, 26.0)

miles <- c(a, b, c)
vehicle <- factor(c(rep("Cars", length(a)),
                    rep("Buses", length(b)),
                    rep("Trucks", length(c))))

model <- aov(miles ~ vehicle)
summary(model)

p_value <- summary(model)[[1]][["Pr(>F)"]][1]
alpha <- 0.07  # 93% confidence level

if (p_value < alpha) {
  cat("p-value =", p_value, "<", alpha, "\nSignificant difference in miles driven among vehicle types.\n")
} else {
  cat("p-value =", p_value, ">=", alpha, "\nNo significant difference in miles driven among vehicle types.\n")
}
