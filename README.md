# MicroServicesContainer_Demo

This is a demo of webMethods Microservices Runtime (MSR) running in a container with a invocable API.

## What it contains

This demo contains a MSR with a custom package with an API. The API can be invoked via cURL or other similar method. Alongside MSR there is a MySQL container with a Database with dummy data. The API will read from that Database.

## Dependencies
- Docker


## How to run

- To run the container use the following command on the working directory

```
docker compose up
```
<img src="https://github.com/FindmoreDigital/MicroServicesContainer_Demo/assets/160241395/8e2b157a-5c01-4e55-8c41-79d6a19819ac" width="60%" height="60%">

## How to test

After container start up, invoke the API
- Request:
```
curl --location 'http://localhost:5555/rad/MyPackage:MyService_rad/MyService' \
--header 'Accept: application/json' \
--header 'Authorization: Basic QWRtaW5pc3RyYXRvcjptYW5hZ2U='
```
- Response
```
{
    "MyServiceOutput": {
        "results": [
            {
                "ID": "1",
                "dummydata1": "dummydata1",
                "dummydata2": "dummydata2",
                "timestampInserted": "2024-06-05 09:36:43.0"
            }
        ]
    }
}
```
