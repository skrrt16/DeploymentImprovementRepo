UPDATE edw.etl.acquisition_configuration
SET active_ind = 1
OUTPUT 'UPDATE' AS Change INTO @SummaryOfChanges
WHERE source_system_nm IN ('BOW','DOMAIN','INVEST','WORKDAY','GIT','NTTA_EDW') 

UPDATE edw.etl.transformation_configuration
SET active_ind = 1
OUTPUT 'UPDATE' AS Change INTO @SummaryOfChanges
WHERE source_system_nm IN ('BOW','DOMAIN','INVEST','GIT')

UPDATE edw.[etl].[dataset_configuration]
SET active_ind = 0
OUTPUT 'UPDATE' AS Change INTO @SummaryOfChanges
WHERE pipeline_nm IN ('PL_INVESTMENT_REFRESH_PBI_DATASET','PL_INVESTMENT_REFRESH_SNAPSHOT_DATASET','PL_FINANCIAL_REFRESH_PBI_DATASET')
