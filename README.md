"# ag-problems-semester" 

## Hemp Metadata and Field Notes

Dates and season of each hemp trial conducted at TREC, Homestead, FL.
- `PilotPlot1`; May 1st, 2019 (`Summer`)
- `PilotPlot2`; June 21st, 2019 (`Summer`)
- `VarietyTrial1`; May 22nd, 2019 (`Summer`)
- `PilotPlotPlus8`; July 18th, 2019 (`Summer`)

`PilotPlot1_summer_2019_PlantHeight-SexRatio.csv`: Plant height and sex ratio file of the first pilot plot.
- `Block`: Block composed of 8 varieties, which was replicated 4 times
- `Row`: Field rows numbered ascendingly from south to north.
- `Column`: Field columns ordered alphabetically from east to west.
- `Rep`: Individuals within the measurement zone of each experimental unit.
- `Height_cm`: Stem length in centimeters from plant base to apex.
- `Sex`: Sexual identification of the plant.
	- `V`: Vegetative stage
	- `M`: Male
	- `F`: Female
	- `C`: Monoecious (`0`: undetermined; `1`: 80 % male; `2`: 60% male; `3`: 50% male; `4`: 60% female; `5`: 80% female)
- Notes:   - Blanks due to missing data
	- Block 3 - Row 2 - Column A: Plants did not emerge.
	- Block 3 - Row 2 - Column C: Experimental unit was mixed with adjacent variety.
	- Due to the CBD planting design, numbers in the following experimental units represent the total amounts of CBD plants in it. No measurement zone was established for them unlike the other varieties.
		- Block 1: Row 1 - Column D, Row 2 - Column A
		- Block 2: Row 3 - Column D, Row 4 - Column D
		- Block 4: Row 3 - Column A, Row 4 - Column C
	- From July 24th on, the following blocks were not measured for height and ratio because they reached 100% seed hardness.
		- Block 1: Row 2 - Column B and C.
		- Block 2: Row 4 - Column A
		- Block 3: Row 1 - Column D, Row 2 - Column D
		- Block 4: Row 3 - Column B, Row 4 - Column A
	- From July 31st on, the additional following varieties were not measured for height and sex ratio because they reached 100% seed hardness.
		- Block 1: Row 2 - Column D
		- Block 2: Row 3 - Column B and C
		- Block 3: Row 1 - Column A
		- Block 4: Row 4 - Column B

`VarietyTrial1_summer_2019_ PlantHeight.csv`: Plant Height data of the first variety trial. 4 data points were taken in the whole each experimental unit regardless of the measurement zone as emergence was scattered.
- `Block`: Block composed of 19 varieties, which was replicated 4 times
	- Block 9 is composed of 4 additional fiber varieties replicated 4 times in the same block.
- `Row`: Field rows numbered ascendingly from south to north.
- `Column`: Field columns ordered alphabetically from east to west.
- `Rep`: Individuals within the measurement zone of each experimental unit.
- `Height_cm`: Stem length in centimeters from plant base to apex.
- Notes:   - Blanks due to missing data
	-Block 6, 7, and 8 - Row 5 - Column D: Left blank on purpose.
	- On June 19th, Block 7 - Row 2 - Column A: Data might be representative of a mixed planting.
	- From June 26th on, Block 7 - Row 3 - Column A: Mixed planting/missed data.
	- From July 24th on, the following blocks were not measured for plant height because they reached 100% seed hardness.
		- Block 5: 
			- Row 1 - Column B and C
			- Row 2 - Column B
			- Row 4 - Column B and D
			- Row 5 - Column B
		- Block 6
			- Row 1 - Column A and C
			- Row 2 - Column B
			- Row 3 - Column B and D (Unit D was 90% seed hardness on July 26th, 29th, 31th)
			- Row 5 - Column A and B
		- Block 7
			- Row 2 - Column D
			- Row 3 - Column A
			- Row 4 - Column B and C
			- Row 5 - Column B and C
		- Block 8
			- Row 2 - Column D
			- Row 3 - Column A and D
			- Row 4 - Column D
			- Row 5 - Column A and B
	- From August 9th on, the following blocks were not measured for plant height because they reached 100% seed hardness.
		- Block 7
			- Row 1 - Column B
		- Block 8
			- Row 4 - Column B
	- From August 20th on, the following blocks were not measured for plant height because they reached 100% seed hardness.
		- Block 5
			- Row 1 - Column A
			- Row 3 - Column A and B
		- Block 6
			- Row 3 - Column A
			- Row 4 - Column C
		- Block 7
			- Row 2 - Column B and C
		- Block 8
			- Row 2 - Column C
			- Row 5 - Column C

`VarietyTrial1_summer_2019_PlanHeight-SexRatioPP.csv`: Plant height and sex ratio file of the first variety trial. Data was only taken for the varieties studied in the pilot plot.
- `Block`: Block composed of 19 varieties, which was replicated 4 times
	- Block 9 is composed of 4 additional fiber varieties replicated 4 times in the same block.
- `Row`: Field rows numbered ascendingly from south to north.
- `Column`: Field columns ordered alphabetically from east to west.
- `Rep`: Individuals within the measurement zone of each experimental unit.
- `Height_cm`: Stem length in centimeters from plant base to apex.
- `Sex`: Sexual identification of the plant.
	- `V`: Vegetative stage
	- `M`: Male
	- `F`: Female
	- `C`: Monoecious (`0`: undetermined; `1`: 80 % male; `2`: 60% male; `3`: 50% male; `4`: 60% female; `5`: 80% female)
- Notes:   - Blanks due to missing data
	- Due to the CBD planting design, numbers in the following experimental units represent the total amounts of CBD plants in it. No measurement zone was established for them unlike the other varieties.
		- Block 5: Row 2 - Column C, and D.
		- Block 6: Row 1 - Column B, Row 2 - Column D
		- Block 7: Row 3 - Column C, Row 4 - Column A
		- Block 8: Row 3 - Column C, Row 4 - Column C
	- From July 31st on, the following blocks were not measured for plant height because they reached 100% seed hardness.
		- Block 5: Row 4 - Column D
		- Block 6: Row 1 - Column C
		- Block 7: Row 5 - Column C 
		- Block 8: Row 3 - Column D
	- On August 8th, data was recorded on Block 5 - Row 4 - Column D. Need to be deleted?

`PilotPlot2_summer_2019_PlantHeight-SexRatio.csv`: Plant height and sex ratio file of the second pilot plot.
- `Block`: Block composed of 8 varieties, which was replicated 4 times
- `Row`: Field rows numbered ascendingly from south to north.
- `Column`: Field columns ordered alphabetically from east to west.
- `Rep`: Individuals within the measurement zone of each experimental unit.
- `Height_cm`: Stem length in centimeters from plant base to apex.
- `Sex`: Sexual identification of the plant.
	- `V`: Vegetative stage
	- `M`: Male
	- `F`: Female
	- `C`: Monoecious (`0`: undetermined; `1`: 80 % male; `2`: 60% male; `3`: 50% male; `4`: 60% female; `5`: 80% female)
- Notes:   - Blanks due to missing data
	- Block 1 - Row 1 - Column D: Plants did not emerge.
	- Block 3 - Row 2 - Column C: Plants did not emerge.
	- Due to the CBD planting design, numbers in the following experimental units represent the total amounts of CBD plants in it. No measurement zone was established for them unlike the other varieties.
		- Block 1: Row 1 - Column D, Row 2 - Column A
		- Block 2: Row 3 - Column D, Row 4 - Column D
		- Block 3: Row 2 - Column A, and C
		- Block 4: Row 3 - Column A, Row 4 - Column C

`PilotPlotPlus8_summer_2019_PlantHeight-SexRatio.csv`: Plant height and sex ratio file of the fourth planting.
- `Block`: Block composed of 8 varieties, which was replicated 4 times
	- ONLY Block 10-13: Set of pilot plot varieties
- `Row`: Field rows numbered ascendingly from south to north.
- `Column`: Field columns ordered alphabetically from east to west.
- `Rep`: Individuals within the measurement zone of each experimental unit.
- `Height_cm`: Stem length in centimeters from plant base to apex.
- `Sex`: Sexual identification of the plant.
	- `V`: Vegetative stage
	- `M`: Male
	- `F`: Female
	- `C`: Monoecious (`0`: undetermined; `1`: 80 % male; `2`: 60% male; `3`: 50% male; `4`: 60% female; `5`: 80% female)
- Notes:   - Blanks due to missing data
	- Block 12 - Row 1 - Column D: Plants did not emerge
	- On Oct 15th, Block 10 - Row 2 - Column C was not measured because of no plants.

`PilotPlotPlus8_summer_2019_PlantHeight.csv`: Plant height file of the fourth planting.
- `Block`: Block composed of 8 varieties, which was replicated 4 times
	- ONLY Block 14-17: Set of varieties from variety trial
- `Row`: Field rows numbered ascendingly from south to north.
- `Column`: Field columns ordered alphabetically from east to west.
- `Rep`: Individuals within the measurement zone of each experimental unit.
- `Height_cm`: Stem length in centimeters from plant base to apex.
- Notes:   - Blanks due to missing data
	- The following observational units were not measured because of no plants.
		- Block 14
			- Row 1 - Column A and B
			- Row 2 - Column B and D
		- Block 15
			- Row 3 - Column A, B, and D
		- Block 16
			- Row 1 - Column A
			- Row 2 - Column C and D
		- Block 17
			- Row 3 - Column C
			- Row 4 - Column B
			
`PilotPlot1_summer_2019_Flowering.csv`: Flowering data file of the first pilot plot.
- `Block`: Block composed of 8 varieties, which was replicated 4 times
- `Row`: Field rows numbered ascendingly from south to north.
- `Column`: Field columns ordered alphabetically from east to west.
- `Induc_perc`: Percentage of flowering induction
- `MaleOpen_perc`: Percent of male plants with over half of flowers opened.
- `FemaleOpen_perc`: Percent of female plants with over half of flowers opened
- `MonoOpen_perc`: Percent of monoecious plants with over half of female flowers opened.
- `SeedHard_perc`: Percent of seed hardening.
- Notes:   - Blanks due to missing data
	- Block 3 - Row 2 - Column A: Plants did not emerge.
	- Block 3 - Row 2 - Column C: Experimental unit was mixed with adjacent variety.

`VarietyTrial1_summer_2019_Flowering.csv`: Flowering data of the first variety trial
- `Block`: Block composed of 19 varieties, which was replicated 4 times
	- Block 9 is composed of 4 additional fiber varieties replicated 4 times in the same block.
- `Row`: Field rows numbered ascendingly from south to north.
- `Column`: Field columns ordered alphabetically from east to west.
- `Induc_perc`: Percentage of flowering induction
- `MaleOpen_perc`: Percent of male plants with over half of flowers opened.
- `FemaleOpen_perc`: Percent of female plants with over half of flowers opened
- `MonoOpen_perc`: Percent of monoecious plants with over half of female flowers opened.
- `SeedHard_perc`: Percent of seed hardening.
- Notes:   - Blanks due to missing data
	- Block 6, 7, and 8 - Row 5 - Column D: Left blank on purpose
	- From Jun 19th on, Block 7 - Row 2 - Column A: Experimental unit looked as mixed planting/missed data
	- On June 26th, Block 7 - Row 3 - Column A : Missed data
	- On Aug 12th, Block 6 - Row 4 - Column B and C: Missed data on SeedHard_perc.
	
`PilotPlot2_summer_2019_Flowering.csv`: Flowering data file of the second pilot plot.
- `Block`: Block composed of 8 varieties, which was replicated 4 times
- `Row`: Field rows numbered ascendingly from south to north.
- `Column`: Field columns ordered alphabetically from east to west.
- `Induc_perc`: Percentage of flowering induction
- `MaleOpen_perc`: Percent of male plants with over half of flowers opened.
- `FemaleOpen_perc`: Percent of female plants with over half of flowers opened
- `MonoOpen_perc`: Percent of monoecious plants with over half of female flowers opened.
- `SeedHard_perc`: Percent of seed hardening.
-Notes:   -Blanks due to missing data
	- From Jun 19th on, the following blocks were not measured due to  
		- Block 1 - Row 1 - Column D 
		- Block 3 - Row 2 - Column C
	-On July 29th, Block 3 - Row 1 - Column A: Missed data
	
