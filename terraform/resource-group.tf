locals {
  resource_groups = {
    main = {
      name        = local.resources_prefix
      description = "resources for the service ${local.service_name}"
      query = {
        "ResourceTypeFilters" : [
          "AWS::AllSupported"
        ],
        "TagFilters" : [
          {
            "Key" : "Stage",
            "Values" : ["${local.tags.Stage}"]
          },
          {
            "Key" : "Client",
            "Values" : ["${local.tags.Client}"]
          },
          {
            "Key" : "Service",
            "Values" : ["${local.tags.Service}"]
          },
          {
            "Key" : "ServiceGroup",
            "Values" : ["${local.tags.ServiceGroup}"]
          },
        ]
      }
    }
  }
}

resource "aws_resourcegroups_group" "main" {
  for_each = local.resource_groups

  name        = each.value.name
  description = each.value.description
  resource_query {
    query = jsonencode(each.value.query)
  }
}
