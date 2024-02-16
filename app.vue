<template>
  <div>
    <NuxtWelcome />
  </div>
</template>
<script setup>
const runtimeConfig = useRuntimeConfig();
console.log("runtimeConfig", JSON.parse(JSON.stringify(runtimeConfig)));

const res = await $fetch("/api/envtest");
console.log("RES", res);
</script>
