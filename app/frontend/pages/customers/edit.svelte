<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let customer = {};
  export let errors = {};

  const update = () => {
    router.put(`/customers/${customer.id}`, { customer });
  };

  const remove = () => {
    alert("Not implemented currently");
  };
</script>

<h1>Edit Customer</h1>
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a role="button" href={`/customers/${customer.id}`} use:inertia>Back</a>
</controls>
<Form {customer} {errors} />
