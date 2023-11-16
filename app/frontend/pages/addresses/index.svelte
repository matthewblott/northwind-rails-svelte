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
<ul>
  {#each addresses as address}
    <li>
      <a href={`/addresses/${address.id}`} use:inertia
        >{address.name} {address.address_line_1}</a
      >
    </li>
  {/each}
</ul>
