<script lang="ts">
  import Search from "../../components/Search.svelte";
  import Error from "../../components/Error.svelte";

  import { onMount } from "svelte";

  export let disabled = false;
  export let order_item = {};
  export let errors = {};
  export let product = {};

  const productsPath = "/products/search";

  let productName =
    product.product_name === undefined ? "" : product.product_name;

  onMount(() => {
    //
  });
</script>

<form>
  <fieldset disabled={disabled || null}>
    <field>
      <label>Product</label>
      <Search
        path={productsPath}
        display={productName}
        bind:value={order_item.product_id}
      />
      {#if errors.product_id}
        <error class="hidden">
          {errors.product_id}
        </error>
      {/if}
    </field>
    <field>
      <label>Unit Price</label>
      <input name="unit_price" bind:value={order_item.unit_price} />
      {#if errors.unit_price}
        <error class="hidden">
          {errors.unit_price}
        </error>
      {/if}
    </field>
    <field>
      <label>Discount</label>
      <input name="discount" bind:value={order_item.discount} />
      {#if errors.discount}
        <error class="hidden">
          {errors.discount}
        </error>
      {/if}
    </field>
    <field>
      <label>Quantity</label>
      <input name="quantity" bind:value={order_item.quantity} />
      {#if errors.quantity}
        <error class="hidden">
          {errors.quantity}
        </error>
      {/if}
    </field>
    <field>
      <label>Status</label>
      <input name="status" bind:value={order_item.status} />
      {#if errors.status}
        <error class="hidden">
          {errors.status}
        </error>
      {/if}
    </field>
  </fieldset>
</form>
