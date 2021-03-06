# Common definitions and packages

# Load packages
suppressMessages({
  library(data.table)
  library(bit64)
  library(PEcAn.DB)
  library(RPostgreSQL)
})
  
# Database parameters
user_id <- "1000000013"     # Alexey Shiklomanov
dbparms <- list(driver="PostgreSQL" , user = "ashiklom", dbname = "bety_ashiklom")
con <- db.open(dbparms)

fixquote <- function(x){
  x <- str_trim(gsub("'", "''", x))
  return(x)
}