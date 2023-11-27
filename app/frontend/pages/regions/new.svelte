<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let region = {};
  export let errors = {};

  const create = () => {
    router.post("/regions/new", region, {});
  };
</script>

<h1>New Region</h1>
<controls>
  <button on:click={create}>Create</button>
  <a role="button" href={`/regions`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {region} {errors} />
