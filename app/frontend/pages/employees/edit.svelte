<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let employee = {};
  export let errors = {};

  const update = () => {
    router.put(`/employees/${employee.id}`, { employee });
  };

  const remove = () => {
    // router.delete(`/employees/${employee.id}`);
    alert("Not implemented currently");
  };
</script>

<h1>Edit Employee</h1>
<Form {employee} {errors} />
<button on:click={update}>Update</button>
<button on:click={remove}>Delete</button>
<a href={`/employees/${employee.id}`} use:inertia>Back</a>

<style>
  label {
    display: block;
  }

  input {
    display: block;
  }

  button {
    display: inline-block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
    }
  }

  a {
    border-color: var(--border-color);
    border-width: 1px;
    border-style: solid;
    border-radius: var(--radius);
    padding: 4px;
    &:hover {
      text-decoration: none;
    }
  }
</style>
