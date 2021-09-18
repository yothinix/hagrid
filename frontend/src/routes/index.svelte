<script lang="ts" context="module">
    import type { Load } from '@sveltejs/kit';

    export const load: Load = async ({ fetch }) => {
      const res = await fetch('/events');
      const data = await res.json();

      return { props: { events: data } };
    };
</script>

<script lang="ts">
  type Habit = {
    id: number,
    name: string,
    category: string
  }

  type Event = {
    id: number;
    habit: Habit;
    created_at: string;
  }

  export let events: Event;
</script>

<div class="my-4">
    <h1 class="text-center text-3xl font-bold">Hagrid</h1>
</div>