# GGProgressHUD
A HUD inherit of MBProgressHUD


![image](https://github.com/Otherplayer/GGProgressHUD/raw/master/Others/screenshot.png)


## Use  ##
```objective-c

[GGShowTip setMaskType:GGProgressHUDMaskTypeNone];

[GGProgressHUD showTip:@"请点击下面按钮" afterDelay:30];

[GGShowTip showTipTextOnly:@"请点击下面按钮" dealy:50 position:GGProgressHUDPosition_top];


```

## [CocoaPods](http://cocoapods.org/)

Add GGProgressHUD to your `Podfile` and `pod install`.

```ruby
pod 'GGProgressHUD', '~> 0.0.2'
```

## License

These specifications and CocoaPods are available under the [MIT license](http://www.opensource.org/licenses/mit-license.php).
