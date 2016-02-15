# summit_timefor

This is the [Summit](https://developers.corvisa.com/) app companion for [TimeFor](https://github.com/gilomen2/timefor). This app performs the telephony portion of TimeFor.

## Proper formatting of POST to Summit Call Scheduling Endpoint

```JSON
{
    "destinations": "15555555555",
    "internal_caller_id_number":"15555551234",
    "internal_caller_id_name": "TimeFor",
    "destination_type": "outbound",
    "application": "time_for",
    "application_data": "{\"message\": \"This is my message text.\", \"contactName\": \"Kevin\", \"senderName\": \"Beth\"}",
    "external_caller_id_number": "15555551234"
}
```
``internal_caller_id_number`` and ``external_caller_id_number`` must be numbers registered within Summit account. See Summit's [Call Scheduling Endpoint documentation](https://code.corvisacloud.com/restapi/call_scheduling.html) for additional information.
