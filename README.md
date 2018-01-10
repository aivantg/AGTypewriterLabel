# AGTypewriterLabel ![Language](https://img.shields.io/badge/iOS-Swift4-orange.svg)

AGTypewriterLabel is a UI Label that can animate the display of it's text character by character. How fast it goes and when it pauses is completely up to you! It's perfect for use in games, instructional manuals, and anywhere else you can see fit!

<img src="/Assets/demo.gif?raw=true">

## Installation

### Manual

0. Copy and paste `AGTypewriterLabel.swift` to your xcode project.

### CocoaPods

1. Install the latest release of CocoaPods: `gem install cocoapods`
2. Add this line to your Podfile: `pod 'AGTypewriterLabel'`
3. Install the pod: `pod install`


## Usage

**1.**Change the class of a label from UILabel to AGTypewriterLabel in storyboard and create an outlet in your code. 

**2.** Use the `addAnimation` or `addAnimations` to add animations to the label. 

There are currently two types of animations supported: `.text(string: String, interval: TimeInterval)` (where the `interval` parameter determines the time between each character being displayed) and `.pause(length: TimeInterval)`

**3.** Call `AGTypewriterLabel.startAnimation()` to start the animation! Call `AGTypewriterLabel.clearAnimations()` to remove animations if needed.

**4. **Optional**: Implement `AGTypewriterLabelDelegate` and set your label's delegate to know when the label is done animating


## Sample Code

```swift

class StoryViewController: UIViewController, AGTypewriterLabelDelegate {

    @IBOutlet weak var typingLabel: AGTypewriterLabel!


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        typingLabel.delegate = self

        typingLabel.addAnimation(.text(string: "Hello...", interval: 0.2))
        typingLabel.addAnimation(.pause(length: 1.0))
        typingLabel.addAnimation(.text(string: "World", interval: 0.1))
        typingLabel.addAnimation(.pause(length: 1.0))
        typingLabel.addAnimation(.text(string: "?", interval: 0))
        
        typingLabel.startAnimation()
    }

    func didFinishAnimating(label: AGTypewriterLabel) {
        // Do Something
    }
}
```


