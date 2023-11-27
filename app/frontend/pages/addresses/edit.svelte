<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let address = {};
  export let errors = {};

  const update = () => {
    router.put(`/addresses/${address.id}/edit`, { address });
  };

  const remove = () => {
    alert("Not implemented currently");
  };
</script>

<h1>Edit Address</h1>
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a role="button" href={`/addresses/${address.id}`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {address} {errors} />
