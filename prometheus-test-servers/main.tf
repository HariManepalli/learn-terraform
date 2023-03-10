resource "aws_spot_instance_request" "node1" {
  ami           = "ami-065978add90d876d2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c59953308f220e16"]
  wait_for_fulfillment = true
  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_spot_instance_request" "node2" {
  ami           = "ami-065978add90d876d2"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c59953308f220e16"]
  tags = {
    Name = "prom-test-node"
  }
}