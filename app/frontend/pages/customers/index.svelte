<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";
  export let customers = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Customers";
  });
</script>

<h1>Customers</h1>

<nav>
  <ul>
    <li>
      <a href={`/customers/?page=1`} use:inertia>First</a>
    </li>
    <li>
      <a href={`/customers/?page=` + (pagy.page - 1)} use:inertia>Previous</a>
    </li>
    <li>
      <a href={`/customers/?page=` + pagy.next} use:inertia>Next</a>
    </li>
    <li>
      <a href={`/customers/?page=` + pagy.last} use:inertia>Last</a>
    </li>
    <li><a href="/customers/new" use:inertia>New</a></li>
  </ul>
</nav>

<ul>
  {#each customers as customer}
    <li>
      <a href={`/customers/${customer.id}`} use:inertia
        >{customer.company_name}</a
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
