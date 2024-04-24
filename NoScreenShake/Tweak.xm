#import <Foundation/Foundation.h>
#import <RemoteLog.h>
#include <cxxabi.h>

%hookf(void, target, void *self, float x, int y) {
	%orig(self, 0.0f, 0);
}

%ctor {
	%init(target = MSFindSymbol(NULL, "__ZN18TargetFollowCamera18setBoostPercentageEfi"));
}

