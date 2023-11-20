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
        <td>
          <a href={`/shippers/${shipper.id}`} use:inertia
            >{shipper.company_name}</a
          >
        </td>
        <td>
          {shipper.phone}
        </td>
      </tr>
    {/each}
  </tbody>
</table>
