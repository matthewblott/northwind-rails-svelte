<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let address = {};
</script>

<h1>Address</h1>
<controls>
  <a role="button" href={`/addresses/${address.id}/edit`} use:inertia>Edit</a>
  <a role="button" href={`/addresses`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {address} />
