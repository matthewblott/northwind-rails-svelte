<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let address = {};
</script>

<h1>Address</h1>

<Form {address} />
<controls>
  <a href={`/addresses/${address.id}/edit`} use:inertia>Edit</a>

  <a href={`/addresses`} use:inertia>Back</a>
</controls>
