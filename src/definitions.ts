export interface LaunchNativePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
