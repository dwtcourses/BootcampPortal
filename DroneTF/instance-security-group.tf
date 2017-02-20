resource "aws_security_group" "web_sg" {
  name = "${var.user}-${var.environment}-web-sg"
  description = "Only allow traffic via the Drone load balancer."

  vpc_id = "${var.vpc_id}"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
  }

}

