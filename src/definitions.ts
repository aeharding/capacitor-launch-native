export interface LaunchNativePlugin {
  attempt(options: { url: string }): Promise<{ completed: boolean }>;
}
