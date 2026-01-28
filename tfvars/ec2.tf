
resource "aws_instance" "this" {
  count = length(var.instances)
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    tags = {
      Name = "${var.project}-${var.environment}-${var.instances[count.index]}"
    }
}


resource "aws_security_group" "allow_tls" {
    name = "${var.project}-${var.environment}"
    description = "Allow TLS inbound traffic and all outbound traffic"

    ingress{
        from_port = 22
        to_port = 22
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
    }

    egress {
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "-1"
    }

    tags = {
      Name = "${var.project}-${var.environment}"
    }
}
