provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAZH76EJCH7ALOMWF4"
  secret_key = "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"
}

# data "aws_iam_role" "AWS_EMR_SL_S3" {
#   name = var.service_role
# }


# EMR Studio
module "aws_emr_studio" {
 source                      = "../modules/emr_studio"
 for_each                    = var.aws_emr_studio
 auth_mode                   = each.value.auth_mode
 default_s3_location         = each.value.default_s3_location
 engine_security_group_id    = each.value.engine_security_group_id
 name                        = each.key
 description                 = each.value.description
 service_role                = each.value.service_role
 subnet_ids                  = each.value.subnet_ids
 vpc_id                      = each.value.vpc_id
 workspace_security_group_id = each.value.workspace_security_group_id
 release_label               = each.value.release_label
 application_type            = each.value.application_type
 tags                        = var.tags
}


# EMR Serverless Application
module "aws_emrserverless_application" {
      source  = "../module/application"
      # for_each   = var.application
      application_name    = "EMR_SL_testing"
      release_label       = each.value.release_label
      application_type    = each.value.application_type
      worker_cpu          = each.value.worker_cpu
      worker_memory       = each.value.worker_memory
      worker1_cpu         = each.value.worker1_cpu
      worker1_memory      = each.value.worker1_memory
      work_count_for_driver     = each.value.work_count_for_driver
      work_count_for_Executor   = each.value.work_count_for_Executor
      maximum_cpu         = each.value.maximum_cpu
      maximum_memory      = each.value.maximum_memory
      tags = var.tags
      }
