KIF-Carthage-Example
=====================

This iOS8++ Xcode project is an an example to show how to use KIF as a framework with Carthage. 

## Intent

I created this repo to show people how to add KIFFramework to their iOS projects. You simply setup your Cartfile, let it do it's setup thing, and drag the freshly built framework into your project.

## Demo Instructions:

````
git clone http://github.com/lottadot/KIF-Carthage-Example
cd KIF-Carthage-Example
carthage checkout
````

You should see something like this:

```
$ carthage bootstrap
*** Checking out KIF at "79a1b9c1a45e20436fc99b48be9a43b035c2c798"
```

At that point you can run the Example App to see the Acceptance test run:

````
xcrun xcodebuild test -workspace KIF-Carthage-Example.xcworkspace -scheme ExampleAcceptanceTests -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 6,OS=latest'
````

The simulator should start and in the console "All tests pass":
````
Test Suite 'All tests' passed at 2015-04-12 15:01:18 +0000.
	 Executed 1 test, with 0 failures (0 unexpected) in 0.001 (0.004) seconds
	 
** TEST SUCCEEDED **
````

### Including KIFFramework in your own project

**[WARNING]** Carthage-built frameworks have issues when included in a binary submitted to the App Store. Therefore, until that is solved, we will create the depencies by hand:

1. Create the `~/.Cartfile` in your project.
2. `carthage bootstrap` or `carthage update`, or `carthage update --use-submodules`. If you have issues, add `--verbose` and try again. The important thing here is the checkout succeeds. If you see `CodeSign error: code signing is required for product type 'Unit Test Bundle' in SDK 'iOS 8.3'` this is directly related to [Carthage#188](https://github.com/Carthage/Carthage/issues/188), which is why you must do the following steps 3 & 4.
3. Drag-and-drop dependency xcodeproj files in `./Carthage/Checkouts` to your app project.
4. Go to Your project's Accteptance Test Target, in `Build Phases` `Link Binary with Libaries` add `KIFFramework.framework'.

Basically, you are including the build artifactsin`Carthage/Build` to your Xcode project, rather then lettting Carthage do it for you. 

For more information:

* [https://github.com/Carthage/Carthage](Carthage)
* [https://github.com/kif-framework/KIF](KIF)
* [KIF/KIF#522](https://github.com/kif-framework/KIF/issues/552)
* [Carthage/Carthage#188](https://github.com/Carthage/Carthage/issues/188)
* [Carthage/Adding frameworks to an application (ver 0.6.3)](https://github.com/Carthage/Carthage/tree/0.6.3#adding-frameworks-to-an-application)
* 