<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";
  export let addresses = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Addresss";
  });
</script>

<h1>Addresss</h1>

<nav>
  <ul>
    <li>
      <a href={`/addresses/?page=1`} use:inertia>First</a>
    </li>
    <li>
      <a href={`/addresses/?page=` + (pagy.page - 1)} use:inertia>Previous</a>
    </li>
    <li>
      <a href={`/addresses/?page=` + pagy.next} use:inertia>Next</a>
    </li>
    <li>
      <a href={`/addresses/?page=` + pagy.last} use:inertia>Last</a>
    </li>
    <li><a href="/addresses/new" use:inertia>New</a></li>
  </ul>
</nav>

<ul>
  {#each addresses as address}
    <li>
      <a href={`/addresses/${address.id}`} use:inertia
        >{address.name} {address.address_line_1}</a
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
