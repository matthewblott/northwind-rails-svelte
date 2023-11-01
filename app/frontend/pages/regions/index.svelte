<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";
  export let regions = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Regions";
  });
</script>

<h1>Regions</h1>

<nav>
  <ul>
    <li>
      <a href={`/regions/?page=1`} use:inertia>First</a>
    </li>
    <li>
      <a href={`/regions/?page=` + (pagy.page - 1)} use:inertia>Previous</a>
    </li>
    <li>
      <a href={`/regions/?page=` + pagy.next} use:inertia>Next</a>
    </li>
    <li>
      <a href={`/regions/?page=` + pagy.last} use:inertia>Last</a>
    </li>
    <li><a href="/regions/new" use:inertia>New</a></li>
  </ul>
</nav>

<ul>
  {#each regions as region}
    <li>
      <a href={`/regions/${region.id}`} use:inertia>{region.name}</a>
    </li>
  {/each}
</ul>

<style>
  nav ul {
    display: flex;
  }

  li {
    padding-right: 5px;
  }
</style>
