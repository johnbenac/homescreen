import { defineConfig } from "vite";

export default defineConfig({
  server: {
    port: 5174,
    host: '0.0.0.0',
    strictPort: true,
    allowedHosts: [
      'johnsbox.techofourown.com',
      'localhost',
      '192.168.29.136',
      '.techofourown.com'
    ],
    hmr: {
      clientPort: 443,
      protocol: 'wss',
    },
  },
  build: { outDir: "dist" },
});
