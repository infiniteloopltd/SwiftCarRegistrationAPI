# SwiftCarRegistrationAPI

A wrapper for the Car Registration API in Swift. You will require a username and password from http://www.vehicleregistrationapi.com
This API returns car details from a car number plate in many countries worldwide, including the UK, USA, Australia, India. A full list is shown below.

## Usage

Package.swift
````swift
import PackageDescription

let package = Package(
    name: "MyApp",
    targets: [],
    dependencies: [
        .Package(url: "https://github.com/infiniteloopltd/SwiftCarRegistrationAPI.git",
                  "1.0.1")
    ]
)
````

main.swift
```swift
import car_registration

let dict = australia_lookup(registrationNumber: "YHC14Y", state: "NSW", username:"***your username***", password:"*** password ***")

print(dict["Description"] ?? "error");
```

Other members of the car_registration package are 
* australia_lookup
* usa_lookup
* europe_lookup

Both australia and usa accept four parameters, registrationNumber, state, username and password, and returns a [String: Any]
europe_lookup does not require the state parameter, but instead, requires a endpoint parameter, which can be one of the following strings;

* Check (UK)
* CheckBelgium 
* CheckCroatia 
* CheckCzechRepublic 
* CheckDenmark 
* CheckEstonia 
* CheckFinland 
* CheckFrance 
* CheckHungary 
* CheckIndia 
* CheckIreland 
* CheckItaly 
* CheckNetherlands 
* CheckNewZealand 
* CheckNigeria 
* CheckNorway 
* CheckPortugal 
* CheckRussia 
* CheckSlovakia 
* CheckSouthAfrica 
* CheckSpain 
* CheckSriLanka 
* CheckSweden 
* CheckUAE 
* CheckUSA 
* CheckAustralia
