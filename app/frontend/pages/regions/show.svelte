<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let region = {};
</script>

<h1>Region</h1>
<controls>
  <a role="button" href={`/regions/${region.id}/edit`} use:inertia>Edit</a>
  <a role="button" href={`/regions`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {region} />
