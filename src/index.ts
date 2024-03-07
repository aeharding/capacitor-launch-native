import { registerPlugin } from '@capacitor/core';

import type { LaunchNativePlugin } from './definitions';

const LaunchNative = registerPlugin<LaunchNativePlugin>('LaunchNative', {
  web: () => import('./web').then(m => new m.LaunchNativeWeb()),
});

export * from './definitions';
export { LaunchNative };
