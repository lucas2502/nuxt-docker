// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  ssr: true,
  runtimeConfig: {
    public: {
      api: {
        apiBaseUrl: process.env.API_BASE_URL || "",
      },
    },
    env: process?.env ?? "",
    apiBaseUrl: process.env.API_BASE_URL || "",
  },
});
