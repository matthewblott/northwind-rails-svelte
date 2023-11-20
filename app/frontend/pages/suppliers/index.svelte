<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Pager from "../../components/Pager.svelte";
  import { onMount } from "svelte";
  export let suppliers = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Suppliers";
  });
</script>

<h1>Suppliers</h1>
<Pager {pagy} baseUrl="/suppliers" />

<table>
  <thead>
    <tr>
      <th>Company Name</th>
      <th>Phone</th>
    </tr>
  </thead>
  <tbody>
    {#each suppliers as supplier}
      <tr>
        <td>
          <a href={`/suppliers/${supplier.id}`} use:inertia
            >{supplier.company_name}</a
          >
        </td>
        <td>
          {supplier.phone}
        </td>
      </tr>
    {/each}
  </tbody>
</table>
