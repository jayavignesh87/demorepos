
output "vpc_id" {
  value = aws_vpc.dep1.id
}


output "bkt_id" {
  value = aws_s3_bucket.dep2.id
}


