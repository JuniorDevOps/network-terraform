
resource "aws_security_group" "allow_tls_http" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "alb_sg" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "app_sg" {
  ingress {
    from_port = 0
    to_port = 80
    protocol = "all"
    cidr_blocks = ["${aws_security_group.alb_sg.id}"]
  }

  egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
  }
}


resource "aws_security_group" "rds_sg" {
  ingress {
    from_port = 0
    to_port = 3306
    protocol = "all"
    cidr_blocks = ["${aws_security_group.app_sg.id}"]
  }

  egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
  }
}