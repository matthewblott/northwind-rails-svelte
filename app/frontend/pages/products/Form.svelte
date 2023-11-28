<script lang="ts">
  import TextField from "../../components/TextField.svelte";
  export let product = {};
  export let errors = {};
  export let disabled = false;
</script>

<form>
  <fieldset disabled={disabled || null}>
    <TextField
      name={"Prodct Code"}
      bind:value={product.product_code}
      error={errors.product_code}
    />
    <TextField
      name={"Product Name"}
      bind:value={product.product_name}
      error={errors.product_name}
    />
    <TextField
      name={"Description"}
      bind:value={product.description}
      error={errors.description}
    />
    <TextField
      name={"Standard Cost"}
      bind:value={product.standard_cost}
      error={errors.standard_cost}
    />
    <TextField
      name={"List Price"}
      bind:value={product.list_price}
      error={errors.list_price}
    />
    <TextField
      name={"Discontinued"}
      bind:value={product.discontinued}
      error={errors.discontinued}
    />
  </fieldset>
</form>
