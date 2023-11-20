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

<h1>Addresss</h1>
<Pager {pagy} baseUrl="/addresses" />

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
        <td>
          <a href={`/addresses/${address.id}`} use:inertia>{address.name}</a>
        </td>
        <td>{address.address_line_1}</td>
        <td>{address.postal_town}</td>
        <td>{address.post_code}</td>
      </tr>
    {/each}
  </tbody>
</table>
