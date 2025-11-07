export interface AppNavigation {
  toHome: () => Promise<{ success: boolean; error?: string }>;
  toLogin: () => Promise<{ success: boolean; error?: string }>;
}

declare global {
  interface Window {
    appNav: AppNavigation;
  }
}