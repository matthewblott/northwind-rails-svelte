<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";
  export let suppliers = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Suppliers";
  });
</script>

<h1>Suppliers</h1>

<nav>
  <ul>
    <li>
      <a href={`/suppliers/?page=1`} use:inertia>First</a>
    </li>
    <li>
      <a href={`/suppliers/?page=` + (pagy.page - 1)} use:inertia>Previous</a>
    </li>
    <li>
      <a href={`/suppliers/?page=` + pagy.next} use:inertia>Next</a>
    </li>
    <li>
      <a href={`/suppliers/?page=` + pagy.last} use:inertia>Last</a>
    </li>
    <li><a href="/suppliers/new" use:inertia>New</a></li>
  </ul>
</nav>

<ul>
  {#each suppliers as supplier}
    <li>
      <a href={`/suppliers/${supplier.id}`} use:inertia
        >{supplier.company_name}</a
      >
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
