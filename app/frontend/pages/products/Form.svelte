<script lang="ts">
  export let product = {};
  export let errors = {};
</script>

<form>
  <div>
    <label>Product Code <input bind:value={product.product_code} /></label>
    {#if errors.product_code}<div>{errors.product_code}</div>{/if}
  </div>
  <div>
    <label>Product Name <input bind:value={product.product_name} /></label>
    {#if errors.product_name}<div>{errors.product_name}</div>{/if}
  </div>
  <div>
    <label>Description <input bind:value={product.description} /></label>
    {#if errors.description}<div>{errors.description}</div>{/if}
  </div>
  <div>
    <label>Standard Cost <input bind:value={product.standard_cost} /></label>
    {#if errors.standard_cost}<div>{errors.standard_cost}</div>{/if}
  </div>
  <div>
    <label>List Price <input bind:value={product.list_price} /></label>
    {#if errors.list_price}<div>{errors.list_price}</div>{/if}
  </div>
  <div>
    <label>Discontinued <input bind:value={product.discontinued} /></label>
    {#if errors.discontinued}<div>{errors.discontinued}</div>{/if}
  </div>
</form>

<style>
  form label {
    display: inline-block;
  }

  form input {
    display: block;
  }

  form button {
    display: block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
    }
  }

  label + div {
    color: red;
    display: inline;
  }
</style>
