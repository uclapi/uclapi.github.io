---
title: UCL API Reference

language_tabs:
  - shell
  - python
  - javascript

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - errors
  - contributing

---
# Introduction

The base url is `https://uclapi.com/api/v1`

# Get All Rooms
### `/rooms/all`

This endpoint gets a list of all available rooms and their metadata.

```shell
curl https://uclapi.com/api/v1/rooms/all
```

```python
import requests

requests.get("https://uclapi.com/api/v1/rooms/all")
```

```javascript
var xhr = new XMLHttpRequest();
xhr.open('GET', 'https://uclapi.com/api/v1/rooms/all', true);
xhr.send();

// response from the server
xhr.responseText;
```

**Restrictions:** `nil`

**Allowed request type:** `GET`

## Response

> Response

```json
[
  {
    "roomName":"Gustave Tuck Lecture Theater",
    "roomId": "abc123",
    "capacity": 200,
    "type": "Lecture theater"
  } 
]
```

Field | Type | Description
--------- | ---------- | -----------
roomName | `String` | The name of the room
roomId | `String` | The rooms id string
capacity | `Number` | The total capacity of the room 
type | `String` | The type of room

#Get Bookings for a Room

### `/bookings`

This endpoint shows the bookings for a room

## Query Parameters

Parameter | Type | Default Value | Description
----------|------|---------------|------------
roomId |  `String[]`  |  All room ids   | A list of the ids of rooms you want to see the bookings for
startDate | `date` | Current date and time rounded up to the nearest hour | The start date and time you want to search from
endDate | `date` | One week from the current date and time rounded up to the nearest hour | The end date and time you want to search to

**Restrictions:** `nil`

**Allowed request type:** `GET`

```shell
curl https://uclapi.com/api/v1/bookings?roomId=abc123&startDate=2016-10-23T11:00:00&endDate=2016-10-23T14:00:00
```

```python
import requests

requests.get("https://uclapi.com/api/v1/bookings?roomId=abc123&startDate=2016-10-23T11:00:00&endDate=2016-10-23T14:00:00")
```

```javascript
var xhr = new XMLHttpRequest();
xhr.open('GET', 'https://uclapi.com/api/v1/bookings?roomId=abc123&startDate=2016-10-23T11:00:00&endDate=2016-10-23T14:00:00', true);
xhr.send();

// response from the server
xhr.responseText;
```

## Response

> Response

```json
[
  {
    "bookingId": "def456",
    "roomId": "abc123",
    "roomName": "Gustave Tuck Lecture Theater",
    "startDate": "2016-10-23T12:00:00",
    "endDate": "2016-10-23T13:00:00"
  } 
]
```

Field | Type | Description
--------- | ---------- | -----------
bookingId | `String` | The id of the booking
roomId | `String` | The roomId of the room
roomName | `String` | The name of the room
startDate | `date` | Start date and time of the booking
endDate | `date` | End date and time of the booking
