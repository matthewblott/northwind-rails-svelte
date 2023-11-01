<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let supplier = {};
</script>

<h1>Supplier</h1>

<Form {supplier} />

<a href={`/suppliers/${supplier.id}/edit`} use:inertia>Edit</a>

<a href={`/suppliers`} use:inertia>Back</a>

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
