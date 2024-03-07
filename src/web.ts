import { WebPlugin } from '@capacitor/core';

import type { LaunchNativePlugin } from './definitions';

export class LaunchNativeWeb extends WebPlugin implements LaunchNativePlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
