PP1_Heights_by_date <- PP1_H %>%
  group_by(Year, Month, Day, Variety)
PP1_Heights_by_date <- PP1_H %>% 
  mutate(Date = make_date(Year, Month, Day))
PP1_FinalHeights <- PP1_Heights_by_date %>%
  filter(Date == "2019-07-19" | Date == "2019-07-24" | Date == "2019-08-20")%>%
  filter(Height_cm > 1)%>%
  select(Height_cm, Variety, Date)%>%
  filter((Date == "2019-07-19" & Variety == "Tygra")|
           (Date == "2019-07-24" & Variety %in% c("CarmagnolaSelezionata", "Eletta"))|
           (Date == "2019-08-20"))
resultsPP1 <- aov(Height_cm ~ Variety, data=PP1_FinalHeights)
summary(resultsPP1)

install.packages("agricolae")
library(agricolae)
HSD_resultsPP1 <- HSD.test(resultsPP1, "Variety", group = TRUE, console = TRUE, main = "Comparison of Final Plant Heights across varieties - 05/01/2019")

lm_resultsPP1 <- lm(Height_cm ~ Variety, data = PP1_FinalHeights)
summary(lm_resultsPP1)