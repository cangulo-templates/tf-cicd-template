# aws_account_id = "" # set through env vars 
stage         = "dev"
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

# dev_refresh_workspace: 20231008-1
