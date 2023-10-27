<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Layout from "../../components/Layout.svelte";
  import Pager from "../../components/Pager.svelte";

  export let customers = [];

  export let pagy = {};

  export let foo = "foo";

  if (foo === "bar") {
    console.log("bar");
  }
</script>

<Layout>
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
</Layout>

<style>
  nav ul {
    display: flex;
  }

  li {
    padding-right: 5px;
  }
</style>
