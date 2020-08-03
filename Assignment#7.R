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
data2 <- read_csv("~/GitHub/ag-problems-semester/PlotVarietyFile.csv")
TotalData <- merge(data, data2, by=c("Column", "Row", "Block"))
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
ggplot(data = PP1_H_by_date, mapping = aes (x = Date , y = Average)) +
  geom_point() +
  geom_smooth() +
  facet_wrap(~Variety, nrow = 2) +
  labs(title = "Average plant height over time", subtitle = "Planted on May 1st, 2019", x = "Date", y = "Plant Height (cm)" ) +
  theme_linedraw(base_size = 12,  base_family = "Times", base_line_size = 12/22, base_rect_size = 12/22) +
  theme(panel.background = element_rect(fill = "white"), 
        panel.grid = element_line(color = "grey90",linetype = "solid", size = 1),
        axis.title = element_text(family = "Times", face = "plain", size = 16), 
        title = element_text(family = "Times", face = "plain", size = 20), 
        plot.subtitle = element_text(family = "Times", face = "plain", size = 14))
PP2data <- read_csv("~/GitHub/ag-problems-semester/VarietyTrial1_summer_2019_PlantHeight-SexRatioPP.csv")
PP2_TotalData <- merge(PP2data, data2, by = c("Column", "Row", "Block"))
PP2_H <- select(PP2_TotalData, Year, Month, Day, Block, Row, Column, Rep, Height_cm, Variety)
PP2_H_by_day <- PP2_H %>%
  group_by(Year, Month, Day, Variety) %>%
  summarize(Average = mean(Height_cm, na.rm = TRUE), SD = sd(Height_cm, na.rm = TRUE))
PP2_H_by_date <- PP2_H_by_day %>% 
  mutate(Date = make_date(Year, Month, Day))
ggplot(data = PP2_H_by_date, mapping = aes (x = Date , y = Average)) +
  geom_point() +
  geom_smooth()+
  facet_wrap(~Variety, nrow = 2)
ggplot(data = PP2_H_by_date, mapping = aes (x = Date , y = Average)) +
  geom_point() +
  geom_smooth() +
  facet_wrap(~Variety, nrow = 2) +
  labs(title = "Average plant height over time", subtitle = "Planted on May 22nd, 2019", x = "Date", y = "Plant Height (cm)" ) +
  theme_linedraw(base_size = 12,  base_family = "Times", base_line_size = 12/22, base_rect_size = 12/22) +
  theme(panel.background = element_rect(fill = "white"), 
        panel.grid = element_line(color = "grey90",linetype = "solid", size = 1),
        axis.title = element_text(family = "Times", face = "plain", size = 16), 
        title = element_text(family = "Times", face = "plain", size = 20), 
        plot.subtitle = element_text(family = "Times", face = "plain", size = 14))
VTdata <- read_csv("~/GitHub/ag-problems-semester/VarietyTrial1_summer_2019_PlantHeight.csv")
VT_TotalData <- merge(VTdata, data2, by = c("Column", "Row", "Block"))
VT_H <- select(VT_TotalData, Year, Month, Day, Block, Row, Column, Rep, Height_cm, Variety)
VT_H_by_day <- VT_H %>%
  group_by(Year, Month, Day, Variety) %>%
  summarize(Average = mean(Height_cm, na.rm = TRUE), SD = sd(Height_cm, na.rm = TRUE))
VT_H_by_date <- VT_H_by_day %>% 
  mutate(Date = make_date(Year, Month, Day))
ggplot(data = VT_H_by_date, mapping = aes (x = Date , y = Average)) +
  geom_point() +
  geom_smooth()+
  facet_wrap(~Variety, nrow = 2)
ggplot(data = VT_H_by_date, mapping = aes (x = Date , y = Average)) +
  geom_point() +
  geom_smooth() +
  facet_wrap(~Variety, nrow = 2) +
  labs(title = "Average plant height over time", subtitle = "Planted on May 22nd, 2019", x = "Date", y = "Plant Height (cm)" ) +
  theme_linedraw(base_size = 12,  base_family = "Times", base_line_size = 12/22, base_rect_size = 12/22) +
  theme(panel.background = element_rect(fill = "white"), 
        panel.grid = element_line(color = "grey90",linetype = "solid", size = 1),
        axis.title = element_text(family = "Times", face = "plain", size = 16), 
        title = element_text(family = "Times", face = "plain", size = 20), 
        plot.subtitle = element_text(family = "Times", face = "plain", size = 14))