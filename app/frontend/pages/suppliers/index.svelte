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

<ul>
  {#each suppliers as supplier}
    <li>
      <a href={`/suppliers/${supplier.id}`} use:inertia
        >{supplier.company_name}</a
      >
    </li>
  {/each}
</ul>
