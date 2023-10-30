<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";

  export let product = {};

  const submit = () => {
    alert("not implemented");
  };
</script>

<h1>Product</h1>
<div>
  <label>Product Code <input bind:value={product.product_code} /></label>
</div>
<div>
  <label>Product Name <input bind:value={product.product_name} /></label>
</div>
<div>
  <label>Description <input bind:value={product.description} /></label>
</div>
<div>
  <label>Standard Cost <input bind:value={product.standard_cost} /></label>
</div>
<div>
  <label>List Price <input bind:value={product.list_price} /></label>
</div>
<div>
  <label>Discontinued <input bind:value={product.discontinued} /></label>
</div>
<div>
  <a href={`/products/${product.id}/edit`} use:inertia>Edit</a>

  <button on:click={submit}>Delete</button>
</div>

<style>
  label {
    display: block;
  }

  input {
    display: block;
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

  button {
    display: inline-block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
    }
  }
</style>
