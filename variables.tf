# variables.tf

variable "project_id" {
  description = "The Google Cloud Project ID."
  type        = string
  default     = "world-learning-400909"
}

variable "region" {
  description = "The region where resources will be deployed."
  type        = string
  default     = "us-central1"
}

variable "bucket_name" {
  description = "The name of the Google Cloud Storage bucket."
  type        = string
  default     = "test-az-test"
}

variable "app_version" {
  description = "The version of the application."
  type        = string
  default     = "v4"
}

variable "service_name" {
  description = "The name of the App Engine service."
  type        = string
  default     = "my-test-service"  #we can also use "default" service here... when you say default it will create new version in default service. when you give name other then default it will create a new service in app engine... with that name and add version there... you can delete the default version with gcloud command " gcloud app versions delete v2 --service=default"(V2 is default version here)  but you cannot delete default once you create default service.. other service can be deleted...
}

variable "bucket_object_name" {
  description = "The name of the Google Cloud Storage bucket object."
  type        = string
  default     = "my-app-1.zip"
}

variable "source_path" {
  description = "The local path to the source code."
  type        = string
  default     = "./my-app-1.zip"
}

variable "entrypoint_shell" {
  description = "The shell command for the App Engine entrypoint."
  type        = string
  default     = "node ./index.js"
}

variable "environment_port" {
  description = "The port to be used in the environment variables."
  type        = string
  default     = "8080"
}

variable "runtime" {
  description = "The runtime for the App Engine."
  type        = string
  default     = "nodejs18"
}

variable "automatic_scaling_min_instances" {
  description = "The minimum number of instances for automatic scaling."
  type        = number
  default     = 1
}

variable "automatic_scaling_max_instances" {
  description = "The maximum number of instances for automatic scaling."
  type        = number
  default     = 10
}
