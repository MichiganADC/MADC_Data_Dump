# MADC_Data_Dump.R

source("~/Box Sync/Documents/R_helpers/config.R")
source("~/Box Sync/Documents/R_helpers/helpers.R")


# MiNDSET REgistry

json_ms <-
  export_redcap_records(token = REDCAP_API_TOKEN_MINDSET,
                        raw = TRUE,
                        vp = TRUE)
df_ms <-
  json_ms %>% 
  jsonlite::fromJSON() %>% 
  as_tibble %>% 
  na_if("")

readr::write_csv(df_ms, "df_ms.csv", na = "")
saveRDS(df_ms, "df_ms.Rds")


# UMMAP UDS 3 

json_u3 <-
  export_redcap_records(token = REDCAP_API_TOKEN_UDS3n,
                        raw   = TRUE,
                        vp    = TRUE)
df_u3 <-
  json_u3 %>% 
  jsonlite::fromJSON() %>% 
  as_tibble %>% 
  na_if("")

readr::write_csv(df_u3, "df_u3.csv", na = "")
saveRDS(df_u3, "df_u3.Rds")


# UMMAP UDS 2

json_u2 <-
  export_redcap_records(token = REDCAP_API_TOKEN_UDS2,
                        raw   = TRUE,
                        vp    = TRUE)
df_u2 <-
  json_u2 %>% 
  jsonlite::fromJSON() %>% 
  as_tibble %>% 
  na_if("")

readr::write_csv(df_u2, "df_u2.csv", na = "")
saveRDS(df_u2, "df_u2.Rds")


# Studies Database

json_st <-
  export_redcap_records(token = REDCAP_API_TOKEN_STUDIES,
                        raw   = TRUE,
                        vp    = TRUE)
df_st <-
  json_st %>% 
  jsonlite::fromJSON() %>% 
  as_tibble %>% 
  na_if("")

readr::write_csv(df_st, "df_st.csv", na = "")
saveRDS(df_st, "df_st.Rds")






