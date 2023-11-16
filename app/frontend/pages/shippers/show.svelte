<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let shipper = {};
</script>

<h1>Shipper</h1>

<Form {shipper} />
<controls>
  <a href={`/shippers/${shipper.id}/edit`} use:inertia>Edit</a>
  <a href={`/shippers`} use:inertia>Back</a>
</controls>
