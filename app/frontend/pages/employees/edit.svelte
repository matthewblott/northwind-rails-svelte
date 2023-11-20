<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let manager = {};
  export let employee = {};
  export let errors = {};

  const update = () => {
    router.put(`/employees/${employee.id}`, { employee });
  };

  const remove = () => {
    router.delete(`/employees/${employee.id}`);
  };
</script>

<h1>Edit Employee</h1>
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a role="button" href={`/employees/${employee.id}`} use:inertia>Back</a>
</controls>
<Form {employee} {manager} {errors} />
