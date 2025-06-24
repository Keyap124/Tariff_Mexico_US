

mexico2 <- read.csv("C:/Users/keyapatel/Desktop/data101spring/mexico2.csv")
mexico2 <- read.csv("C:\\Users\\keyapatel\\Desktop\\data101spring\\mexico2.csv")
read.csv(mexico2)
mexico2 <- read.csv("C:/Users/keyapatel/Desktop/data101spring/mexico2.csv")
"~/Desktop/data101spring/mexico2.csv"
mexico2 <- read.csv("~/Desktop/data101spring/mexico2.csv")




write.csv(summary_table, "tariff_summary_output.csv", row.names = FALSE)

# Visual 1: Line chart - U.S. vs. Mexico Tariff Revenue
plot(summary_table$US_Tariff_Revenue, type = "o", col = "blue",
     xaxt = "n", ylim = range(c(summary_table$US_Tariff_Revenue, summary_table$Mexico_Tariff_Revenue)),
     xlab = "Product Group", ylab = "Tariff Revenue ($)",
     main = "Tariff Revenue by Country and Product Group")
lines(summary_table$Mexico_Tariff_Revenue, type = "o", col = "red")
axis(1, at = 1:length(summary_table$Product_Group), labels = summary_table$Product_Group, las = 2)
legend("topright", legend = c("U.S.", "Mexico"), col = c("blue", "red"), lty = 1)

# Visual 2 Bar chart alternative to pie
barplot(summary_table$US_Imports,
        names.arg = summary_table$Product_Group,
        horiz = TRUE,
        las = 1,
        col = "skyblue",
        main = "U.S. Imports from Mexico by Product Group",
        xlab = "Import Value ($)")


# Plot 3 (Clean): Grouped Bar Chart - Imports vs Exports
barplot(height = rbind(summary_table$US_Imports, summary_table$US_Exports),
        beside = TRUE,
        names.arg = summary_table$Product_Group,
        col = c("forestgreen", "orange"),
        legend.text = c("U.S. Imports from Mexico", "U.S. Exports to Mexico"),
        main = "U.S.–Mexico Trade by Product Group",
        ylab = "Trade Value ($)",
        las = 2)




