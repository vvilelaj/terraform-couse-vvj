module "consul" {
    source = "github.com/wardviaene/terraform-consul-module.git"
    key_name = aws_key_pair.key.key_name
    key_path = var.PATH_TO_PRIVATE_KEY
    subnets = {
        "0" = "subnet-600cf93a",
        "1" = "subnet-9f7fa6f9"
     }
    vpc_id = "vpc-d46688b2"
}
output "consul-output" {
    value = module.consul.server_address
}