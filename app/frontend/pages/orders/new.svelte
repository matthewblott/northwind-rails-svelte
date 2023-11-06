<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";

  export let employee = {};
  export let order = {};
  export let customer = {};
  export let errors = {};

  const create = () => {
    router.post(`/orders/`, { order });
  };

  onMount(() => {
    //
  });
</script>

<h1>New Order</h1>
<Form {order} {employee} {errors} />

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
