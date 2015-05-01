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
