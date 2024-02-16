<template>
  <div>
    <NuxtWelcome />
  </div>
</template>
<script setup>
const runtimeConfig = useRuntimeConfig();
console.log("runtimeConfig", JSON.parse(JSON.stringify(runtimeConfig)));
</script>
