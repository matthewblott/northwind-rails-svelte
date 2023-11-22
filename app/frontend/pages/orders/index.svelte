<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Pager from "../../components/Pager.svelte";
  import { onMount } from "svelte";
  export let orders = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Orders";
  });

  const formatDate = (value) => {
    if (value) {
      return value.split("T")[0];
    }

    return "";
  };
</script>

<h1>Orders</h1>
<Pager {pagy} baseUrl="/orders" />
<spacer data-2xs />

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
        <td title="Order Id">
          <a href={`/orders/${order.id}`} use:inertia>{order.id}</a>
        </td>
        <td title="Customer Id">
          {order.customer_id}
        </td>
        <td title="Employee">
          {order.employee_first_name}
          {order.employee_last_name}
        </td>
        <td title="Order Date">{formatDate(order.order_date)}</td>
        <td title="Paid Date">{formatDate(order.paid_date)}</td>
        <td title="Shipped Date">{formatDate(order.shipped_date)}</td>
      </tr>
    {/each}
  </tbody>
</table>
