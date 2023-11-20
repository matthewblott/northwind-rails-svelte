<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Pager from "../../components/Pager.svelte";
  import { onMount } from "svelte";
  export let regions = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Regions";
  });
</script>

<h1>Regions</h1>
<Pager {pagy} baseUrl="/regions" />

<table>
  <thead>
    <tr>
      <th>Region Name</th>
    </tr>
  </thead>
  <tbody>
    {#each regions as region}
      <tr>
        <td>
          <a href={`/regions/${region.id}`} use:inertia>{region.name}</a>
        </td>
      </tr>
    {/each}
  </tbody>
</table>
