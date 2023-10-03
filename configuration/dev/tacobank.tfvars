# aws_account_id = "" # set through env vars 
stage         = "tst"
service_group = "main"
client        = "tacobank"

payments = {
  enabled = true
}
crm = {
  enabled = true
}
transactions = {
  enabled = false
}

# refresh_tst: 20231003-1
