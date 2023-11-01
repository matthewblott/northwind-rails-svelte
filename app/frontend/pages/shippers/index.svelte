<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";
  export let shippers = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Shippers";
  });
</script>

<h1>Shippers</h1>

<nav>
  <ul>
    <li>
      <a href={`/shippers/?page=1`} use:inertia>First</a>
    </li>
    <li>
      <a href={`/shippers/?page=` + (pagy.page - 1)} use:inertia>Previous</a>
    </li>
    <li>
      <a href={`/shippers/?page=` + pagy.next} use:inertia>Next</a>
    </li>
    <li>
      <a href={`/shippers/?page=` + pagy.last} use:inertia>Last</a>
    </li>
    <li><a href="/shippers/new" use:inertia>New</a></li>
  </ul>
</nav>

<ul>
  {#each shippers as shipper}
    <li>
      <a href={`/shippers/${shipper.id}`} use:inertia>{shipper.company_name}</a>
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
