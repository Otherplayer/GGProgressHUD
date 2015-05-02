# GGProgressHUD
A HUD inherit of MBProgressHUD


![image](https://github.com/Otherplayer/GGProgressHUD/raw/master/Others/screenshot.png)


## New  ##
```objective-c

typedef NS_ENUM(NSUInteger, GGProgressHUDMaskType) {
    GGProgressHUDMaskTypeNone = 1,    // allow user interactions while HUD is displayed
    GGProgressHUDMaskTypeClear = 2,   // don't allow user interactions
};

@property (nonatomic, assign) GGProgressHUDMaskType maskType;


```

## [CocoaPods](http://cocoapods.org/)

Add TTSwitch to your `Podfile` and `pod install`.

```ruby
pod 'GGProgressHUD', '~> 0.0.2'
```

## License

These specifications and CocoaPods are available under the [MIT license](http://www.opensource.org/licenses/mit-license.php).
