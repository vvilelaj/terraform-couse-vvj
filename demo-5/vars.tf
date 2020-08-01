variable AWS_REGION {
    default = "us-west-1"
}
variable AWS_ACCESS_KEY {}
variable AWS_SECRET_KEY {}
variable AMIS {
    type = map
    default = {
        "us-west-1" = "ami-01b4538323eb79a76"
        "us_west-2" = "ami-06b94666"
        "eu-west-1" = "ami-0d729a60"
    }
}