import json
import datetime

def lambda_handler(event, context):
    current_time = datetime.datetime.now().isoformat()
    return {
        "statusCode": 200,
        "body": json.dumps(f"Lambda executed at {current_time}")
    }
