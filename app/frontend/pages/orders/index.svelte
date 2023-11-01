<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";
  export let orders = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Orders";
  });
</script>

<h1>Orders</h1>

<nav>
  <ul>
    <li>
      <a href={`/orders/?page=1`} use:inertia>First</a>
    </li>
    <li>
      <a href={`/orders/?page=` + (pagy.page - 1)} use:inertia>Previous</a>
    </li>
    <li>
      <a href={`/orders/?page=` + pagy.next} use:inertia>Next</a>
    </li>
    <li>
      <a href={`/orders/?page=` + pagy.last} use:inertia>Last</a>
    </li>
    <li><a href="/orders/new" use:inertia>New</a></li>
  </ul>
</nav>

<ul>
  {#each orders as order}
    <li>
      <a href={`/orders/${order.id}`} use:inertia
        >{order.id} {order.customer_id}</a
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
