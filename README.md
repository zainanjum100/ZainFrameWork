# ZainFramework

[![CI Status](https://img.shields.io/travis/zainanjum100/ZainFramework.svg?style=flat)](https://travis-ci.org/zainanjum100/ZainFramework)
[![Version](https://img.shields.io/cocoapods/v/ZainFramework.svg?style=flat)](https://cocoapods.org/pods/ZainFramework)
[![License](https://img.shields.io/cocoapods/l/ZainFramework.svg?style=flat)](https://cocoapods.org/pods/ZainFramework)
[![Platform](https://img.shields.io/cocoapods/p/ZainFramework.svg?style=flat)](https://cocoapods.org/pods/ZainFramework)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Xcode 10 or later
Mac OS X Mojave

## Installation

ZainFramework is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ZainFramework'
```

## Usage

#TableView Extention 

Handling an empty UITableView. Print a friendly message. 
```
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          if numberOfItems == 0{
              tableView.setEmptyMessage("We could not found any posts")
          }
        return numberOfItems.count
    }

```
TableView Loading Extention
```
\\Use anywhere you want in tableview
\\this loading is a refreshControl so no need to write all the old code :)

tableView.beginRefreshing()
tableView.endRefreshing()
```
#ImageVIew Download image from url and cache image
```
let urlString = "https://www.google.com/"
ImageView.cacheImage(urlString: urlString)

\\you can change the url and enjoy
```
#SomeStandard Extentions for UIView are added to make things easier in Storyboard

![alt demo image](https://imgur.com/hTaIyrc)

#Most Important ViewController Extentions

```
\\Activity Indicator Extention
\\Use inside of a ViewController function
self.startActivityIndicator()
self.stopActivityIndicator()

self.showAlert(text: "Replace Text here")

self.showLoadingAlert(text: "Replace Text here")

\\a bit tricky extention but if you get it your code will be a lot easier
\\modern code

let viewController = StandardVC.instantiate() \\Class name must be same in 
pushVC(viewController)
```
![alt text](https://i.imgur.com/hTaIyrc.png)
```
\\old code

let viewController = storyboard?.instantiateViewController(withIdentifier: "StandardVC")
self.navigationController?.pushViewController(viewController, animated: true)

\\new code
self.dismissVC()
\\old code
self.navigationController?.dismiss(animated: true, completion: nil)


```

## Author

zainanjum100, zainanjum100@gmail.com

## License

ZainFramework is available under the MIT license. See the LICENSE file for more info.
