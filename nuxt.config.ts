// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  runtimeConfig: {
    public: {
      api: {
        apiBaseUrl: process.env.API_BASE_URL || "",
        env: process?.env,
      },
    },
  },
});
