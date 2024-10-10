variable "vpc_cidr" {
  type = string
}

variable "env" {
    type = string
}
  
  #################### Subnet Variables ####################
  variable "public_subnets" {
    type = map(object({
      cidr = string
      azs = string
      tags = map(string) 
    }))
}


variable "staging_env" {
  description = "The environment name for staging"
  type        = string
}

variable "alb_port_https" {
  description = "The port for HTTPS traffic"
  type        = number
  default     = 443
}

variable "alb_proto_https" {
  description = "The protocol for HTTPS traffic"
  type        = string
  default     = "HTTPS"
}

variable "alb_sss_profile" {
  description = "The SSL policy for the load balancer"
  type        = string
  default     = "ELBSecurityPolicy-2016-08"
}

variable "alb_port_http" {
  description = "The port for HTTP traffic"
  type        = number
  default     = 80
}

variable "alb_proto_http" {
  description = "The protocol for HTTP traffic"
  type        = string
  default     = "HTTP"
}
