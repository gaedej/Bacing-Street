library("RMySQL", lib.loc="/Library/Frameworks/R.framework/Versions/2.15/Resources/library")
drv = dbDriver("MySQL")
con = dbConnect(drv, user="gaedej", password="Fcgdaeb1", dbname="server_forcast",
                host="inuinv001.corporate.act.org")
dbListTables(con)
dbListFields(con, "ossec_alerts")
OA_Rule <- dbReadTable(con, "ossec_alerts", row.names = "oa_rule")
summary(OA_Rule)