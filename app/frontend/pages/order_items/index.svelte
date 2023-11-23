<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";
  export let order_items = [];
  export let pagy = {};

  export let order_id = 0;

  onMount(() => {
    document.title = "Order Items";
  });

  const formatDate = (value) => {
    if (value) {
      return value.split("T")[0];
    }

    return "";
  };
</script>

<h1>Order Items</h1>

<a href={`/orders/${order_id}/items/new`} role="button" use:inertia>New</a>
<a href={`/orders/${order_id}`} role="button" use:inertia>Back</a>

<spacer data-2xs />

<table>
  <thead>
    <tr>
      <th>Order Id</th>
      <th>Product Id</th>
      <th>Unit Price</th>
      <th>Discount</th>
      <th>Quantity</th>
      <th>Status</th>
    </tr>
  </thead>
  <tbody>
    {#each order_items as item}
      <tr>
        <td title="Order Id">
          <a
            href={`/orders/${item.order_id}/items/${item.product_id}`}
            use:inertia>{item.order_id}</a
          >
        </td>
        <td title="Product Id">
          {item.product_id}
        </td>
        <td title="Unit Price">
          {item.unit_price}
        </td>
        <td title="Discount">
          {item.discount}
        </td>
        <td title="Quantity">
          {item.quantity}
        </td>
        <td title="Status">
          {item.order_item_status}
        </td>
      </tr>
    {/each}
  </tbody>
</table>

<style>
</style>
