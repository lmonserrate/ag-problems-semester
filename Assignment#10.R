ANOVA_analyze_PP1FH_by_Variety <- function(filename){
  PP1_Height_data <- read_csv(file = filename)
  PlotVariety <- read_csv("~/GitHub/ag-problems-semester/PlotVarietyFile.csv")
  PP1_Height_data <- merge(PP1_Height_data, PlotVariety, by = c("Column", "Row", "Block"))
  FlowerInduc_data <- read_csv("~/GitHub/ag-problems-semester/Flowering induction per variety_2019.csv")
  PP1_HeightInduc_data <- merge(PP1_Height_data, FlowerInduc_data, by = c("Variety"))
  PP1_HeightInduc_data_by_date <- PP1_HeightInduc_data %>%
    mutate(Date = make_date(Year, Month, Day))
  PP1_FinalHeightInduc_data_by_date <- PP1_HeightInduc_data_by_date %>%
    filter(Date == "2019-07-19" | Date == "2019-07-24" | Date == "2019-08-20")%>%
    filter(Height_cm > 1)%>%
    select(Height_cm, Variety, Date, induc_date)%>%
    filter((Date == "2019-07-19" & Variety == "Tygra")|
             (Date == "2019-07-24" & Variety %in% c("CarmagnolaSelezionata", "Eletta"))|
             (Date == "2019-08-20"))
  resultsPP1 <- aov(Height_cm ~ Variety, data=PP1_FinalHeightInduc_data_by_date)
  summary(resultsPP1)
}
ANOVA_analyze_PP1FH_by_Variety("~/GitHub/ag-problems-semester/PilotPlot1_summer_2019_PlantHeight-SexRatio.csv")
#
ANOVA_analyze_VTFH_by_Variety <- function(filename) {
  VT_Height_data <- read_csv(file = filename)
  FlowerInduc_data <- read_csv("~/GitHub/ag-problems-semester/Flowering induction per variety_2019.csv")
  PlotVariety <- read_csv("~/GitHub/ag-problems-semester/PlotVarietyFile.csv")
  VT_Height_data <- merge(VT_Height_data, PlotVariety, by = c("Column", "Row", "Block"))
  VT_HeightInduc_data <- merge(VT_Height_data, FlowerInduc_data, by = c("Variety"))
  VT_HeightInduc_data_by_date <- VT_HeightInduc_data %>%
    mutate(Date = make_date(Year, Month, Day))
  VT_FinalHeightInduc_data_by_date <- VT_HeightInduc_data_by_date %>%
    filter(Height_cm > 1)%>%
    select(Height_cm, Variety, Date, induc_date) %>%
    filter((Date == "2019-07-17" & Variety == "Tygra")|
             (Date == "2019-07-12" & Variety %in% c("CFX-1", "CFX-2", "CRS-1", "Canda", "Joey"))|
             (Date == "2019-08-09" & Variety %in% c("HanFNQ", "HanFN-H", "Helena"))|
             (Date == "2019-08-20"))
  resultsVT_HeightsPerVar <- aov(Height_cm ~ Variety, data = VT_FinalHeightInduc_data_by_date)
  summary(resultsVT_HeightsPerVar)
}
ANOVA_analyze_VTFH_by_Variety("~/GitHub/ag-problems-semester/VarietyTrial1_summer_2019_PlantHeight.csv")
#
LM_analyze_PP1H_by_Variety <- function(filename){
  PP1_Height_data <- read_csv(file = filename)
  PlotVariety <- read_csv("~/GitHub/ag-problems-semester/PlotVarietyFile.csv")
  PP1_Height_data <- merge(PP1_Height_data, PlotVariety, by = c("Column", "Row", "Block"))
  FlowerInduc_data <- read_csv("~/GitHub/ag-problems-semester/Flowering induction per variety_2019.csv")
  PP1_HeightInduc_data <- merge(PP1_Height_data, FlowerInduc_data, by = c("Variety"))
  PP1_HeightInduc_data_by_date <- PP1_HeightInduc_data %>%
    mutate(Date = make_date(Year, Month, Day))
  PP1_FinalHeightInduc_data_by_date <- PP1_HeightInduc_data_by_date %>%
    filter(Date == "2019-07-19" | Date == "2019-07-24" | Date == "2019-08-20")%>%
    filter(Height_cm > 1)%>%
    select(Height_cm, Variety, Date, induc_date)%>%
    filter((Date == "2019-07-19" & Variety == "Tygra")|
             (Date == "2019-07-24" & Variety %in% c("CarmagnolaSelezionata", "Eletta"))|
             (Date == "2019-08-20"))
  resultsPP1_HeightsPerInduc <- lm(Height_cm ~ induc_date, data = PP1_FinalHeightInduc_data_by_date)
  summary(resultsPP1_HeightsPerInduc)
}
LM_analyze_PP1H_by_Variety("~/GitHub/ag-problems-semester/PilotPlot1_summer_2019_PlantHeight-SexRatio.csv")
#
LM_analyze_VTFH_by_Variety <- function(filename){
  VT_Height_data <- read_csv(file = filename)
  FlowerInduc_data <- read_csv("~/GitHub/ag-problems-semester/Flowering induction per variety_2019.csv")
  PlotVariety <- read_csv("~/GitHub/ag-problems-semester/PlotVarietyFile.csv")
  VT_Height_data <- merge(VT_Height_data, PlotVariety, by = c("Column", "Row", "Block"))
  VT_HeightInduc_data <- merge(VT_Height_data, FlowerInduc_data, by = c("Variety"))
  VT_HeightInduc_data_by_date <- VT_HeightInduc_data %>%
    mutate(Date = make_date(Year, Month, Day))
  VT_FinalHeightInduc_data_by_date <- VT_HeightInduc_data_by_date %>%
    filter(Height_cm > 1)%>%
    select(Height_cm, Variety, Date, induc_date) %>%
    filter((Date == "2019-07-17" & Variety == "Tygra")|
             (Date == "2019-07-12" & Variety %in% c("CFX-1", "CFX-2", "CRS-1", "Canda", "Joey"))|
             (Date == "2019-08-09" & Variety %in% c("HanFNQ", "HanFN-H", "Helena"))|
             (Date == "2019-08-20"))
  resultsVT_HeightsPerInduc <- lm(Height_cm ~ induc_date, data = VT_FinalHeightInduc_data_by_date)
  summary(resultsVT_HeightsPerInduc)
}
LM_analyze_VTFH_by_Variety("~/GitHub/ag-problems-semester/VarietyTrial1_summer_2019_PlantHeight.csv")

FH_Hemp_selection <- function(data, variety, height_cm){
  sdata <- select(data, Variety, Height_cm)
  fdata <- filter(sdata, Variety == variety)
  for (i in 1:dim(fdata)[1]){
    if (fdata$Height_cm[i] >= height_cm){
      print("YES")
    } else {
      print("NO")
    }
  }
}

FH_Hemp_selection(PP1_FinalHeightInduc_data_by_date, "Yuma-2", 300)

FH_Hemp_selection(VT_FinalHeightInduc_data_by_date, "Eletta", 300)
