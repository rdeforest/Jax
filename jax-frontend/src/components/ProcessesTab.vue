<template>
  <div class="processes-tab">
    <div class="agenda-list">
      <div 
        v-for="item in agendaItems" 
        :key="item.id" 
        class="agenda-item"
      >
        <label class="agenda-item-label">
          <input 
            type="checkbox" 
            v-model="item.completed"
            class="agenda-checkbox"
          />
          <div class="agenda-content">
            <div class="agenda-title">{{ item.title }}</div>
            <div v-if="item.notes" class="agenda-notes">{{ item.notes }}</div>
          </div>
        </label>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const agendaItems = ref([
  { 
    id: 1, 
    title: "Take blood pressure", 
    notes: "Manual process: cuff → button → measurements → BP tab → charge cable", 
    completed: false 
  },
  { 
    id: 2, 
    title: "Start today's log entry", 
    notes: "Add entry to Workflowy meeting log", 
    completed: false 
  },
  { 
    id: 3, 
    title: "Calendar review and chat", 
    notes: "Review previous to next meeting days, mood self-assessment", 
    completed: false 
  },
  { 
    id: 4, 
    title: "Tao", 
    notes: "Read 365 Tao Daily Meditations, discuss relevance", 
    completed: false 
  },
  { 
    id: 5, 
    title: "Affirmations", 
    notes: "Recite affirmations from Workflowy", 
    completed: false 
  },
  { 
    id: 6, 
    title: "Check snail mail", 
    notes: "Pick up, open, and deal with mail", 
    completed: false 
  },
  { 
    id: 7, 
    title: "Email", 
    notes: "Check and process three Google accounts", 
    completed: false 
  },
  { 
    id: 8, 
    title: "Non-daily", 
    notes: "Flip to non-daily tab and follow process", 
    completed: false 
  },
  { 
    id: 9, 
    title: "One-off tasks", 
    notes: "Flip to Tasks tab and follow process", 
    completed: false 
  },
  { 
    id: 10, 
    title: "Brush teeth", 
    notes: "", 
    completed: false 
  },
  { 
    id: 11, 
    title: "Summarize day in log entry", 
    notes: "", 
    completed: false 
  }
])
</script>

<style scoped>
.processes-tab {
  max-width: 800px;
  margin: 0 auto;
  padding: 2rem;
}

.agenda-list {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.agenda-item {
  background: #ffffff;
  border: 2px solid #d7ccc8;
  border-radius: 8px;
  padding: 1.25rem;
  transition: all 0.2s ease;
}

.agenda-item:hover {
  border-color: #1976d2;
  box-shadow: 0 2px 8px rgba(25, 118, 210, 0.1);
}

.agenda-item-label {
  display: flex;
  align-items: flex-start;
  gap: 1rem;
  cursor: pointer;
  width: 100%;
}

.agenda-checkbox {
  width: 20px;
  height: 20px;
  margin-top: 2px;
  accent-color: #1976d2;
  cursor: pointer;
  flex-shrink: 0;
}

.agenda-content {
  flex: 1;
  min-width: 0;
}

.agenda-title {
  font-size: 1.125rem;
  font-weight: 600;
  color: #263238;
  line-height: 1.4;
  margin-bottom: 0.5rem;
}

.agenda-notes {
  font-size: 0.9rem;
  color: #546e7a;
  line-height: 1.5;
  font-style: italic;
}

/* Responsive design */
@media (max-width: 768px) {
  .processes-tab {
    padding: 1rem;
  }
  
  .agenda-item {
    padding: 1rem;
  }
  
  .agenda-item-label {
    gap: 0.75rem;
  }
  
  .agenda-title {
    font-size: 1rem;
  }
  
  .agenda-notes {
    font-size: 0.85rem;
  }
}

/* High contrast for screen sharing */
@media (prefers-contrast: high) {
  .agenda-item {
    border-color: #263238;
  }
  
  .agenda-title {
    color: #000000;
  }
  
  .agenda-notes {
    color: #424242;
  }
}
</style>
