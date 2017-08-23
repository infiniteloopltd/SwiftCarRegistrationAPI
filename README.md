# SwiftCarRegistrationAPI
A wrapper for the Car Registration API in Swift. You will require a username and password from http://www.vehicleregistrationapi.com

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

```swift
import car_registration
print(hiThere())

let dict = australia_lookup(registrationNumber: "YHC14Y", state: "NSW", username:"***your username***", password:"*** password ***")

print(dict["Description"] ?? "error");
```
