<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let shipper = {};
  export let errors = {};

  const update = () => {
    router.put(`/shippers/${shipper.id}`, { shipper });
  };

  const remove = () => {
    alert("Not implemented currently");
  };
</script>

<h1>Edit Shipper</h1>
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a role="button" href={`/shippers/${shipper.id}`} use:inertia>Back</a>
</controls>
<Form {shipper} {errors} />
