<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let order = {};
  export let employee = {};
  export let customer = {};
</script>

<h1>Order</h1>

<Form {order} {employee} {customer} disabled="true" />

<a href={`/orders/${order.id}/edit`} use:inertia>Edit</a>

<a href={`/orders`} use:inertia>Back</a>

<style>
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

  button {
    display: inline-block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
    }
  }
</style>
