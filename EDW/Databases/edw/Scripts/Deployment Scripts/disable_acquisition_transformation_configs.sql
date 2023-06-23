UPDATE edw_etl_control.etl.acquisition_configuration
SET active_ind = 0
OUTPUT 'UPDATE' AS Change INTO @SummaryOfChanges
WHERE source_system_nm IN ('BOW','DOMAIN','INVEST','INVEST SCORE','WORKDAY','GIT','NTTA_EDW')

UPDATE edw_etl_control.etl.transformation_configuration
SET active_ind = 0
OUTPUT 'UPDATE' AS Change INTO @SummaryOfChanges
WHERE source_system_nm IN ('BOW','DOMAIN','INVEST','INVEST SCORE','GIT')

UPDATE edw_etl_control.[etl].[dataset_configuration]
SET active_ind = 0
OUTPUT 'UPDATE' AS Change INTO @SummaryOfChanges
WHERE pipeline_nm IN ('PL_INVESTMENT_REFRESH_PBI_DATASET','PL_INVESTMENT_REFRESH_SNAPSHOT_DATASET','PL_FINANCIAL_REFRESH_PBI_DATASET')
