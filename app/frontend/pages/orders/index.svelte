<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Pager from "../../components/Pager.svelte";
  import { onMount } from "svelte";
  export let orders = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Orders";
  });
</script>

<h1>Orders</h1>
<Pager {pagy} baseUrl="/orders" />

<ul>
  {#each orders as order}
    <li>
      <a href={`/orders/${order.id}`} use:inertia
        >{order.id} {order.customer_id}</a
      >
    </li>
  {/each}
</ul>
