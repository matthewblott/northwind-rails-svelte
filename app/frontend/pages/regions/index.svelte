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
<ul>
  {#each regions as region}
    <li>
      <a href={`/regions/${region.id}`} use:inertia>{region.name}</a>
    </li>
  {/each}
</ul>
