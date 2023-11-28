<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";
  export let employee_addresses = [];
  export let addresses = [];

  export let employee_id = "";

  onMount(() => {
    document.title = "Order addresses";
  });
</script>

<h1>Employee Addresses</h1>

<a href={`/employees/${employee_id}/addresses/new`} role="button" use:inertia
  >New</a
>
<a href={`/employees/${employee_id}`} role="button" use:inertia>Back</a>

<spacer data-2xs />

<table>
  <thead>
    <tr>
      <th>Employee Id</th>
      <th>Address Id</th>
      <th>Address Name</th>
      <th>Address Line 1</th>
      <th>Address Line 2</th>
    </tr>
  </thead>
  <tbody>
    {#each addresses as address}
      <tr>
        <td title="Employee Id">
          <a
            href={`/employees/${employee_id}/addresses/${address.id}`}
            use:inertia>{employee_id}</a
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
