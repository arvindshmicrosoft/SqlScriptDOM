ALTER WORKLOAD GROUP wgAllParamsImportanceLow
    WITH  (
            MIN_PERCENTAGE_RESOURCE = 8,
            REQUEST_MIN_RESOURCE_GRANT_PERCENT = 2,
            CAP_PERCENTAGE_RESOURCE = 100,
            REQUEST_MAX_RESOURCE_GRANT_PERCENT = 3.5,
            IMPORTANCE = LOW,
            QUERY_EXECUTION_TIMEOUT_SEC = 1
          );


GO
ALTER WORKLOAD GROUP wgAllParamsImportanceBelowNormal
    WITH  (
            MIN_PERCENTAGE_RESOURCE = 8,
            REQUEST_MIN_RESOURCE_GRANT_PERCENT = 2,
            CAP_PERCENTAGE_RESOURCE = 100,
            REQUEST_MAX_RESOURCE_GRANT_PERCENT = 3.5,
            IMPORTANCE = BELOW_NORMAL,
            QUERY_EXECUTION_TIMEOUT_SEC = 1
          );


GO
ALTER WORKLOAD GROUP wgAllParamsImportanceNormal
    WITH  (
            MIN_PERCENTAGE_RESOURCE = 8,
            REQUEST_MIN_RESOURCE_GRANT_PERCENT = 2,
            CAP_PERCENTAGE_RESOURCE = 100,
            REQUEST_MAX_RESOURCE_GRANT_PERCENT = 3.5,
            IMPORTANCE = NORMAL,
            QUERY_EXECUTION_TIMEOUT_SEC = 1
          );


GO
ALTER WORKLOAD GROUP wgAllParamsImportanceAboveNormal
    WITH  (
            MIN_PERCENTAGE_RESOURCE = 8,
            REQUEST_MIN_RESOURCE_GRANT_PERCENT = 2,
            CAP_PERCENTAGE_RESOURCE = 100,
            REQUEST_MAX_RESOURCE_GRANT_PERCENT = 3.5,
            IMPORTANCE = ABOVE_NORMAL,
            QUERY_EXECUTION_TIMEOUT_SEC = 1
          );


GO
ALTER WORKLOAD GROUP wgAllParamsImportanceHigh
    WITH  (
            MIN_PERCENTAGE_RESOURCE = 8,
            REQUEST_MIN_RESOURCE_GRANT_PERCENT = 2,
            CAP_PERCENTAGE_RESOURCE = 100,
            REQUEST_MAX_RESOURCE_GRANT_PERCENT = 3.5,
            IMPORTANCE = HIGH,
            QUERY_EXECUTION_TIMEOUT_SEC = 1
          );


GO
ALTER WORKLOAD GROUP wgDefaultParams
    WITH  (
            MIN_PERCENTAGE_RESOURCE = 8,
            REQUEST_MIN_RESOURCE_GRANT_PERCENT = 2,
            CAP_PERCENTAGE_RESOURCE = 50
          );
