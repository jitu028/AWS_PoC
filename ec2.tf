
## Will update Data source, once I get which image to use. 

# Auto scaling group 
resource "aws_instance" "awspoc_web" {
  ami = "ami-0f511ead81ccde020"
  instance_type = "t2.micro"
  count = "2"
  availability_zone = var.availability_zone[count.index]
  # subnet_id = aws_subnet.poc_private_subnet[count.index].id

  tags =  {
    Name = "webASG${count.index + 1}"
  } 

}

/*
variable "app_instance_number" {
  default = {
    "0" = "03"
    "1" = "04"
  }
} */

resource "aws_instance" "awspoc_app" {
  ami = "ami-0f511ead81ccde020"
  instance_type = "t2.micro"
  count = "2"
  availability_zone = var.availability_zone[count.index]
 # subnet_id = aws_subnet.poc_private_subnet${lookup(var.app_instance_number, count.index)}.id

  tags =  {
    Name = "appASG${count.index + 1}"
  } 

}

/*
variable "db_instance_number" {
  default = {
    "0" = "05"
    "1" = "06"
  }
} */

# Change to RDS instance Not EC2  =>  Update
resource "aws_instance" "awspoc_db" {
  ami = "ami-0f511ead81ccde020"
  instance_type = "t2.micro"
  count = "2"
  availability_zone = var.availability_zone[count.index]
 # subnet_id = aws_subnet.poc_private_subnet${lookup(var.app_instance_number, count.index)}.id

    tags = {
    Name = "TRADEDB${count.index + 1}"
  }

}