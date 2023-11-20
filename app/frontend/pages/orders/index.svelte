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

<table>
  <thead>
    <tr>
      <th>Order Id</th>
      <th>Customer Id</th>
      <th>Employee</th>
      <th>Order Date</th>
      <th>Paid Date</th>
      <th>Shipped Date</th>
    </tr>
  </thead>
  <tbody>
    {#each orders as order}
      <tr>
        <td>
          <a href={`/orders/${order.id}`} use:inertia>{order.id}</a>
        </td>
        <td>
          {order.customer_id}
        </td>
        <td>
          {order.employee_id}
        </td>
        <td>{order.order_date}</td>
        <td>{order.paid_date}</td>
        <td>{order.shipped_date}</td>
      </tr>
    {/each}
  </tbody>
</table>
