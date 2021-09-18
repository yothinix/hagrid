<script lang="ts" context="module">
    import type { Load } from '@sveltejs/kit';

    export const load: Load = async ({ fetch }) => {
      const res = await fetch('/events');
      const data = await res.json();

      return { props: { events: data } };
    };
</script>

<script lang="ts">
  import type { Event } from '$lib/types';

  export let events: Event[];
</script>

<div class="my-4">
    <h1 class="text-center text-3xl font-bold">Hagrid</h1>
</div>

<div class="container mx-auto mt-4">
  {#each events as event}
  <div class="hover:bg-gray-200 cursor-pointer px-6 py-2 border-b border-gray-500">
    <h4 class="font-bold">{event.id}: {event.habit.name}</h4>
    <p class="mt-2 text-gray-800">{event.habit.category}</p>
    <p class="text-gray-500">Create at: {event.created_at}</p>
  </div>
  {/each}
</div>