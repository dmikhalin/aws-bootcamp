AWS_TOPIC_ARN=$(aws sns create-topic --name billing-alarm --query TopicArn --output text)
aws sns subscribe \
    --topic-arn=$AWS_TOPIC_ARN \
    --protocol=email \
    --notification-endpoint=dmitry.everywhere@gmail.com
