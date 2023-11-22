<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Pager from "../../components/Pager.svelte";
  import { onMount } from "svelte";
  export let addresses = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Addresss";
  });
</script>

<h1>Addresses</h1>
<Pager {pagy} baseUrl="/addresses" />
<spacer data-2xs />
<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Address Line 1</th>
      <th>Postal Town</th>
      <th>Post Code</th>
    </tr>
  </thead>
  <tbody>
    {#each addresses as address}
      <tr>
        <td title="Name">
          <a href={`/addresses/${address.id}`} use:inertia>{address.name}</a>
        </td>
        <td title="Address Line 1">{address.address_line_1}</td>
        <td title="Postal Town">{address.postal_town}</td>
        <td title="Post Code">{address.post_code}</td>
      </tr>
    {/each}
  </tbody>
</table>
