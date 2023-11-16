<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let address = {};
  export let errors = {};

  const update = () => {
    router.put(`/addresses/${address.id}`, { address });
  };

  const remove = () => {
    alert("Not implemented currently");
  };
</script>

<h1>Edit Address</h1>
<Form {address} {errors} />
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a href={`/addresses/${address.id}`} use:inertia>Back</a>
</controls>
