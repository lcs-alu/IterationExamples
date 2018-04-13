//: [Previous](@previous) / [Next](@next)
//: # Exercise
//: Say that we want to create an output image like this on a 300x300 canvas:
//:
//: ![example](example.png "Example")
//:
//: At first glance this may seem like a complicated image.
//:
//: However, if we break down, or *decompose* the problem, into smaller, more easily completed tasks, it's not so bad.
//:
//: Take a look at this storyboard:
//:
//:![storyboard](storyboard.png "Storyboard")
//:
//: Do you think you could combine:
//: * a single loop
//: * a single statement that draws a line
//:
//: ... to create this image?  Give it a try!
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create a canvas
let canvas = Canvas(width: 300, height: 300)

// right down corner
for i in stride(from: 0, to: 300, by: 20) {
    canvas.drawLine(fromX: i, fromY:0, toX: 300, toY:i )
}

// left up corner
for i in stride(from: 0, to: 300, by: 20) {
    canvas.drawLine(fromX: i, fromY: 300, toX: 0, toY: i)
}

//right up corner
for i in stride(from: 0, to: 300, by: 20) {
    canvas.drawLine(fromX: 300, fromY: i, toX: 300-i, toY: 300)
}

//left down corner
for i in stride(from: 0, to: 300, by: 20) {
    canvas.drawLine(fromX: i, fromY: 0, toX: 0, toY: 300-i)
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
