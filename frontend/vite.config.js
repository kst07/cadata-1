import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    allowedHosts: [
      '3cb1-2403-6200-8833-bb2f-81f7-7d71-284b-9142.ngrok-free.app',  // URL ใหม่จาก ngrok
      '192.168.1.9'
      
    ]
  }
})
