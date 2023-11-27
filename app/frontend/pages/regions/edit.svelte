<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let region = {};
  export let errors = {};

  const update = () => {
    router.put(`/regions/${region.id}/edit`, { region });
  };

  const remove = () => {
    alert("Not implemented currently");
  };
</script>

<h1>Edit Region</h1>
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a role="button" href={`/regions/${region.id}`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {region} {errors} />
