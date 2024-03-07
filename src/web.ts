import { WebPlugin } from '@capacitor/core';

import type { LaunchNativePlugin } from './definitions';

export class LaunchNativeWeb extends WebPlugin implements LaunchNativePlugin {
  async attempt(): Promise<{ completed: boolean }> {
    return { completed: false };
  }
}
