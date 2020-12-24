# floaters


<p><h1 align="left">Popup View</h1></p>

<p><h4>Toasts and popups library written with SwiftUI</h4></p>

___

[![Twitter](https://img.shields.io/github/followers/twentyone24?label=twentyone24)](http://twitter.com/twentyone24)

# Usage
1. Put all your body code into a ZStack
2. Add a binding bool to control popup presentation state
3. Add `.popup` modifier to your ZStack
```swift
@State var showingPopup = false

struct ContentView: View {
    var body: some View {
        ZStack {
            // your view
        }
        .popup(isPresented: $showingPopup, animation: Animation.spring(), autohideIn: 2) {
            Toast(image: "airpodspro", title: "AirPods Pro", subtitle: "Connected")
        }
    }
}
```

### Required parameters 
`presented` - binding to determine if the popup should be seen on screen or hidden     
`view` - view you want to display on your popup  

### Available customizations - optional parameters    
`animation` - custom animation for popup sliding onto screen  
`autohideIn` - time after which popup should disappear    

## Installation

### [Swift Package Manager](https://swift.org/package-manager/)

```swift
dependencies: [
    .package(url: "https://github.com/twentyone24/floaters.git", from: "0.0.1")
]
```

