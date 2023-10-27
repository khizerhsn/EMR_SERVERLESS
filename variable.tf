variable "auth_mode" {
 type        = string
 description = "auth_mode"
 default = "IAM"
}
variable "default_s3_location" {
 type        = string
 description = "default_s3_location"
 default = "s3://khizer-emr"
}
#
#variable "subnet_ids" {
#  description = "List of security group IDs"
#  type        = list(string)
#}
#
variable "description" {
 type        = string
 description = "description"
}
#
variable "service_role" {
 type        = string
 description = "service_role"
 default = "AWS_EMR_SL_S3"
}
##variable "engine_security_group_id" {
##  description = "List of security group IDs"
##  type        = string
##}
#
#
# variable "release_label" {
#  type        = string
#  description = "release_label"
# }
#
#variable "application_type" {
 #type        = string
 #description = "application_type"
#}

#variable "application_name" {
 # type        = string
  #description = "application_name"
#}
variable "name" {
 type        = string
  description = "description"
}

#variable "vpc_id" {
#  description = "List of security group IDs"
#  type        = string
#}
#
variable "workspace_security_group_id" {
 description = "List of security group IDs"
 type        = string
 default = "sg-0cce4d47f1ed3914f"
}
#
#variable "environment_type" {
#  type        = string
#  description = "description"
#}

# variable "application" {
#   type        = map
#   description = "description"
#   default     = {}
# }

variable "aws_emr_studio" {
  type        = map
  description = "description"
  default     = {}
}

# variable "maximum_cpu" {
#   type        = string
#   default     = "100 vCPU"
#   description = "description"
# }
# #
# #
# variable "maximum_memory" {
#   type        = string
#   default     = "1000 GB"
#   description = "description"
# }
#
#
#variable "worker_cpu" {
#  type        = string
#  default     = "4 vCPU"
#  description = "description"
#}
#
#
#variable "worker_memory" {
#  type        = string
#  default     = "20 GB"
#  description = "description"
#}
#
#
#variable "worker1_cpu" {
#  type        = string
#  default     = "4 vCPU"
#  description = "description"
#}
#
#
#variable "worker1_memory" {
#  type        = string
#  default     = "20 GB"
#  description = "description"
#}

variable "tags" {
  type    = map(string)
  default = {
    testing = "khizer"
  }
}

variable "subnet_ids" {
  description = "The IDs of the subnets"
  type        = string
  default = "subnet-4a48af31"
}

variable "engine_security_group_id" {
  description = "The ID of the engine security group"
  type        = string
  default     = "sg-0e8e54c796f90ce76"
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = "vpc-105d6878"
}


# variable "work_count_for_Executor" {
#   type = number
#   default = 2
# }

# variable "work_count_for_driver" {
#   type = number
#   default = 1
# }
