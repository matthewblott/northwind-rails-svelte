<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let shipper = {};
</script>

<h1>Shipper</h1>
<controls>
  <a role="button" href={`/shippers/${shipper.id}/edit`} use:inertia>Edit</a>
  <a role="button" href={`/shippers`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {shipper} disabled={true} />
