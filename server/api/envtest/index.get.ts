export default defineEventHandler(async (event): Promise<unknown> => {
  const runtimeConfig = useRuntimeConfig();
  return runtimeConfig;
});
