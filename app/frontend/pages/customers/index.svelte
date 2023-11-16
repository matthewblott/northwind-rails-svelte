<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Pager from "../../components/Pager.svelte";
  import { onMount } from "svelte";
  export let customers = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Customers";
  });
</script>

<h1>Customers</h1>
<Pager {pagy} baseUrl="/customers" />

<ul>
  {#each customers as customer}
    <li>
      <a href={`/customers/${customer.id}`} use:inertia
        >{customer.company_name}</a
      >
    </li>
  {/each}
</ul>
