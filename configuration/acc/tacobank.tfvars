# aws_account_id = "" # set through env vars 
stage         = "acc"
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
