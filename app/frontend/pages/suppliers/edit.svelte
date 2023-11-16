<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let supplier = {};
  export let errors = {};

  const update = () => {
    router.put(`/suppliers/${supplier.id}`, { supplier });
  };

  const remove = () => {
    alert("Not implemented currently");
  };
</script>

<h1>Edit Supplier</h1>
<Form {supplier} {errors} />
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a href={`/suppliers/${supplier.id}`} use:inertia>Back</a>
</controls>
