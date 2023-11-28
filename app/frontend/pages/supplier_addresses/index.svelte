<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";
  export let supplier_addresses = [];
  export let addresses = [];

  export let supplier_id = "";

  onMount(() => {
    document.title = "Order addresses";
  });
</script>

<h1>Supplier Addresses</h1>

<a href={`/suppliers/${supplier_id}/addresses/new`} role="button" use:inertia
  >New</a
>
<a href={`/suppliers/${supplier_id}`} role="button" use:inertia>Back</a>

<spacer data-2xs />

<table>
  <thead>
    <tr>
      <th>Supplier Id</th>
      <th>Address Id</th>
      <th>Address Name</th>
      <th>Address Line 1</th>
      <th>Address Line 2</th>
    </tr>
  </thead>
  <tbody>
    {#each addresses as address}
      <tr>
        <td title="Supplier Id">
          <a
            href={`/suppliers/${supplier_id}/addresses/${address.id}`}
            use:inertia>{supplier_id}</a
          >
        </td>
        <td title="Address Id">
          {address.id}
        </td>
        <td title="Address Name">
          {address.name}
        </td>
        <td title="Address Line 1">
          {address.address_line_1}
        </td>
        <td title="Address Line 2">
          {address.address_line_2}
        </td>
      </tr>
    {/each}
  </tbody>
</table>

<style>
</style>
