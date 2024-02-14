import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:http/http.dart' as http;
import 'location.dart';
import 'weather.dart';

Future<Weather> forecast() async {
  const url = 'https://data.tmd.go.th/nwpapi/v1/forecast/location/hourly/at';
  const token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6ImUyOTAxMGU0YmIxNzAzMjlmMzYxMmVkNTY5ZmVhNzBlNzU3NTA3ZWU3ZDM5MjFkOTZiMDdhOWQ5MjU2MWU2MzhmM2FjY2I1ZGI1MDcyMGQwIn0.eyJhdWQiOiIyIiwianRpIjoiZTI5MDEwZTRiYjE3MDMyOWYzNjEyZWQ1NjlmZWE3MGU3NTc1MDdlZTdkMzkyMWQ5NmIwN2E5ZDkyNTYxZTYzOGYzYWNjYjVkYjUwNzIwZDAiLCJpYXQiOjE3MDc4ODIyODYsIm5iZiI6MTcwNzg4MjI4NiwiZXhwIjoxNzM5NTA0Njg2LCJzdWIiOiIzMDEzIiwic2NvcGVzIjpbXX0.u0xxsvpenTX_ZSnISJCcCBjul4so0GmyQxm9MPxtzi1kVu7Er_6ZwAeurGMA1_MoA6fh9XQ0z_wjDO5x0-ls4cC97ZKgV1zMtdqrIT6VSYbczX5kY5axC2AtbnSBm8mVU5okRtUtAARboM0ZzdbHhgSaxtYI9WqfSmZPar1t5Q72-HO0gpqd3aPZpLmDrsoz2vImvrHK-hdkukzVlslW22D8qnmz63BF6MQxJDdu53Nl-sBzhQK43TmoZOYuXphmZFyKSJDd-5o3RfpVcSs5mbVYvKrxRXk6dCPN48amzAVcgh_JGA2v_2uZVol2_j6JnHpaxHSgq-KkByS18qvJx2s8vwl2ltqRplXYgNFA9GU2DY4ciAtQbVqXxjP2dPqT5TVJ9Mz9SRmoWsiDIvXaPMalZgPXt0Ms-1SGMqqIBhC3L63akhzMzZJ2WOUDLLGM_juOFH0lWqV5LPjqxAK9J_PdQNi1ZiOi2euKnyBh1CVV1ASzV4t31SwPkTZsAYZli7iPqkLY55e09gkXoiOjlGYfE7-wpSDRqNX4X10-6lstT5eIfrm0i6UFcwsIdkNo7ZvOCRX8Dt8a7OTGpPyR1b2_1saCqhmdxrOGa8xevWiczl9A9o6asp1o0Hiaaw_clB_GyaTdgrOoYqlW1OajBJGKZKGPLUQnGh-KaFWr1yw';
  try {
    Position location = await getCurrentLocation();
    http.Response response = await http.get(
        Uri.parse(
            '$url?lat=${location.latitude}&lon=${location.longitude}&fields=tc,cond'),
        headers: {
          'accept': 'application/json',
          'authorization': 'Bearer $token',
        });
    return Weather(address: response.body, temperature: 0, cond: 0);
  } catch (e) {
    return Future.error(0);
  }
}
