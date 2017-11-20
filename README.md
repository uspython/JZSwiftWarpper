----

# JZSwiftWarpper
+++++

## Requirements

iOS9+

## Installation

#### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ sudo gem install -n /usr/local/bin cocoapods
```

To integrate Frameworks into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'git@github.com:uspython/Specs.git'
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'

target 'Demo-Code' do
  use_frameworks!
  pod 'JZSwiftWarpper'
end

target 'Demo-DLL' do
    use_frameworks!
    pod 'JZSwiftWarpper/DLL'
end
```

Then, run the following command:

```bash
$ pod install
```


## Author

JeffZhao


## License

JZSwiftWarpper is available under the MIT license. See the LICENSE file for more info.
