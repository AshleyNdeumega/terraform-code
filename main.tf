resource "aws_sns_topic" "demo" {
  name = "sns-dev"
  tags = {
    team = "DevOps"
  }
}
resource "aws_sns_topic_subscription" "email-target" {
  topic_arn = aws_sns_topic.demo.arn
  protocol  = "email"
  endpoint  = "ashleyndeumega@gmail.com"
}