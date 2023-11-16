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

<ul>
  {#each shippers as shipper}
    <li>
      <a href={`/shippers/${shipper.id}`} use:inertia>{shipper.company_name}</a>
    </li>
  {/each}
</ul>
