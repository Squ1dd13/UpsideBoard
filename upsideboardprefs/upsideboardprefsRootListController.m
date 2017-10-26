#include "upsideboardprefsRootListController.h"

@implementation upsideboardprefsRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

-(void)save
{
    [self.view endEditing:YES];
}
-(void)respring {
    system("killall -9 SpringBoard");
}

@end
