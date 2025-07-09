<script setup>
import ProcessesTab from './components/ProcessesTab.vue'
</script>

<template>
  <div class="app">
    <header class="app-header">
      <h1 class="app-title">Jax - Processes</h1>
    </header>
    
    <main class="app-main">
      <ProcessesTab />
    </main>
  </div>
</template>

<style scoped>
.app {
  min-height: 100vh;
  background: linear-gradient(135deg, #e3f2fd 0%, #ffffff 100%);
}

.app-header {
  background: #1976d2;
  color: white;
  padding: 1.5rem 2rem;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.app-title {
  margin: 0;
  font-size: 2rem;
  font-weight: 600;
  text-align: center;
  letter-spacing: 0.5px;
}

.app-main {
  padding: 2rem 0;
}

/* Responsive design */
@media (max-width: 768px) {
  .app-header {
    padding: 1rem;
  }
  
  .app-title {
    font-size: 1.5rem;
  }
  
  .app-main {
    padding: 1rem 0;
  }
}
</style>
