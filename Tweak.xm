static BOOL enable;

#import <UIKit/UIApplication.h>

%hook UIViewController

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
if (enable) {
    return (%orig | UIInterfaceOrientationMaskPortraitUpsideDown);
}
}
%end

static void loadPrefs()
{
NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.squ1dd13.upsideboardprefs.plist"];
if(prefs)
{
    enable = ( [prefs objectForKey:@"enable"] ? [[prefs objectForKey:@"enable"] boolValue] : enable );
[prefs release];
}
}

%ctor
{
CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.squ1dd13.upsideboardprefs/settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
loadPrefs();
}
