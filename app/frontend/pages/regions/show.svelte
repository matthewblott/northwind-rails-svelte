<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let region = {};
</script>

<h1>Region</h1>

<Form {region} />
<controls>
  <a href={`/regions/${region.id}/edit`} use:inertia>Edit</a>
  <a href={`/regions`} use:inertia>Back</a>
</controls>
