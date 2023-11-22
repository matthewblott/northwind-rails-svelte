<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Pager from "../../components/Pager.svelte";
  import { onMount } from "svelte";
  export let shippers = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Shippers";
  });
</script>

<h1>Shippers</h1>
<Pager {pagy} baseUrl="/shippers" />
<spacer data-2xs />

<table>
  <thead>
    <tr>
      <th>Company Name</th>
      <th>Phone</th>
    </tr>
  </thead>
  <tbody>
    {#each shippers as shipper}
      <tr>
        <td title="Company Name">
          <a href={`/shippers/${shipper.id}`} use:inertia
            >{shipper.company_name}</a
          >
        </td>
        <td title="Phone">
          {shipper.phone}
        </td>
      </tr>
    {/each}
  </tbody>
</table>
