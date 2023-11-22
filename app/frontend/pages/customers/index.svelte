<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Pager from "../../components/Pager.svelte";
  import { onMount } from "svelte";
  export let customers = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Customers";
  });
</script>

<h1>Customers</h1>
<Pager {pagy} baseUrl="/customers" />
<spacer data-2xs />

<table>
  <thead>
    <tr>
      <th>Customer Id</th>
      <th>Company Name</th>
    </tr>
  </thead>
  <tbody>
    {#each customers as customer}
      <tr>
        <td title="Customer Id">
          <a href={`/customers/${customer.id}`} use:inertia>{customer.id}</a>
        </td>
        <td title="Company Name">
          {customer.company_name}
        </td>
      </tr>
    {/each}
  </tbody>
</table>
