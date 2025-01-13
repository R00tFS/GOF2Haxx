#import <Foundation/Foundation.h>
#import <substrate.h>

void *(*orig_PlayerEgo_ctor)(void *self, void *player);
void* hooked_PlayerEgo_ctor(void *self, void *player) {
    void *orig = orig_PlayerEgo_ctor(self, player);
    
    float* speed = (float*)(orig + 0xf8);
    *speed *= 2.0f;
    
    return orig;
}

__attribute((constructor)) void init() {
    void *playerego_ctor_ptr = MSFindSymbol(NULL, "__ZN9PlayerEgoC2EP6Player");
    MSHookFunction(playerego_ctor_ptr, (void*)hooked_PlayerEgo_ctor, (void **)&orig_PlayerEgo_ctor);
}