# air-station
Air weather station

Saves readings from a weather station and uploads them to Amazon S3.

## config

air.config.json example

```
{
  "aws": {
    "accessKeyId": "abc123",
    "secretAccessKey": "def456"
  },
  "s3": {
    "bucket": "weather-log-store"
  }
}
```
