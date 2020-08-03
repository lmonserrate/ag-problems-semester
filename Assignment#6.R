library(tidyverse)
data <- read_csv("~/GitHub/ag-problems-semester/PilotPlot1_summer_2019_PlantHeight-SexRatio.csv")
PP1_H <- select(data, Year, Month, Day, Block, Row, Column, Rep, Height_cm)
Puma3_PP1_H <- filter (PP1_H, Block %in% c(1, 2, 3, 4), Row %in% c(1, 4, 1, 4) & Column %in% c("B", "C", "B", "D"))
Puma3_PP1_HO <- filter (Puma3_PP1_H, Row %in% c(1, 4, 1, 4), Column %in% c("B", "C", "B", "D"))
by_day <- group_by(PP1_H, Year, Month, Day)
Height_Over_Time <- summarize(by_day, Average = mean(Height_cm, na.rm = TRUE), SD = sd(Height_cm, na.rm = TRUE))
library(lubridate)
Height_Over_Time <- Height_Over_Time %>% 
  mutate(Date = make_date(Year, Month, Day))
ggplot(data = Height_Over_Time, mapping = aes (x = Date , y = Average)) +
  geom_point() +
  geom_smooth()
data2 <- read_csv("~/ag-problems-semester/PlotVarietyFile.csv")
TotalData <- merge(data, data2, by = c("Column", "Row", "Block"))
PP1_H <- select(TotalData, Year, Month, Day, Block, Row, Column, Rep, Height_cm, Variety)
Puma3_PP1_H <- filter(PP1_H, Variety == "Puma-3")
Puma3_by_day <- group_by(Puma3_PP1_H, Year, Month, Day)
Puma3_Height_Over_Time <- summarize(Puma3_by_day, Average = mean(Height_cm, na.rm = TRUE), SD = sd(Height_cm, na.rm = TRUE))
Puma3_Height_Over_Time <- Puma3_Height_Over_Time %>% 
  mutate(Date = make_date(Year, Month, Day))
ggplot(data = Puma3_Height_Over_Time, mapping = aes (x = Date , y = Average)) +
  geom_point() +
  geom_smooth()
PP1_H <- select(TotalData, Year, Month, Day, Block, Row, Column, Rep, Height_cm, Variety)
PP1_H_by_day <- PP1_H %>%
  group_by(Year, Month, Day, Variety) %>%
  summarize(Average = mean(Height_cm, na.rm = TRUE), SD = sd(Height_cm, na.rm = TRUE))
PP1_H_by_date <- PP1_H_by_day %>% 
  mutate(Date = make_date(Year, Month, Day))
ggplot(data = PP1_H_by_date, mapping = aes (x = Date , y = Average)) +
  geom_point() +
  geom_smooth()+
  facet_wrap(~Variety, nrow = 2)