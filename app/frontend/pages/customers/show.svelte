<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let customer = {};
</script>

<h1>Customer</h1>

<Form {customer} />

<a href={`/customers/${customer.id}/edit`} use:inertia>Edit</a>

<a href={`/customers`} use:inertia>Back</a>

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
