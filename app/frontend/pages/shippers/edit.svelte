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
<Form {shipper} {errors} />
<button on:click={update}>Update</button>
<button on:click={remove}>Delete</button>
<a href={`/shippers/${shipper.id}`} use:inertia>Back</a>

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
