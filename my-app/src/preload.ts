// See the Electron documentation for details on how to use preload scripts:
// https://www.electronjs.org/docs/latest/tutorial/process-model#preload-scripts
import { contextBridge, ipcRenderer } from 'electron';

contextBridge.exposeInMainWorld('appNav', {
  toHome: () => ipcRenderer.invoke('nav:toHome'),
  toLogin: () => ipcRenderer.invoke('nav:toLogin'),
});