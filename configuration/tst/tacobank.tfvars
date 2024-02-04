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

# acc_refresh_workspace: 20240204-1
