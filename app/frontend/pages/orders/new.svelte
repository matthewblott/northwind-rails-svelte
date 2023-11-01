<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let order = {};
  export let errors = {};

  const create = () => {
    router.post(`/orders/`, { order });
  };
</script>

<h1>New Order</h1>
<Form {order} {errors} />

<button on:click={create}>Create</button>

<a href={`/orders`} use:inertia>Back</a>

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
