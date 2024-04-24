#import <Foundation/Foundation.h>

%hookf(void, target, void *self, float x, int y) {
	%orig(self, 0.0f, 0);
}

%ctor {
	%init(target = MSFindSymbol(NULL, "__ZN18TargetFollowCamera18setBoostPercentageEfi"));
}

