<script lang="ts">
  export let product = {};
  export let errors = {};
</script>

<form>
  <fieldset>
    <field>
      <label>Product Code</label>
      <input bind:value={product.product_code} />
      {#if errors.product_code}
        <error class="hidden">
          {errors.product_code}
        </error>
      {/if}
    </field>
    <field>
      <label>Product Name</label>
      <input bind:value={product.product_name} />
      {#if errors.product_name}
        <error class="hidden">
          {errors.product_name}
        </error>
      {/if}
    </field>
    <field>
      <label>Description</label>
      <input bind:value={product.description} />
      {#if errors.description}
        <error class="hidden">
          {errors.description}
        </error>
      {/if}
    </field>
    <field>
      <label>Standard Cost</label>
      <input bind:value={product.standard_cost} />
      {#if errors.standard_cost}
        <error class="hidden">
          {errors.standard_cost}
        </error>
      {/if}
    </field>
    <field>
      <label>List Price</label>
      <input bind:value={product.list_price} />
      {#if errors.list_price}
        <error class="hidden">
          {errors.list_price}
        </error>
      {/if}
    </field>
    <!-- <field> -->
    <!--   <label>Quantity Per Unit</label> -->
    <!--   <input bind:value={product.quantity_per_unit} /> -->
    <!--   {#if errors.quantity_per_unit} -->
    <!--     <error class="hidden"> -->
    <!--       {errors.quantity_per_unit} -->
    <!--     </error> -->
    <!--   {/if} -->
    <!-- </field> -->
    <field>
      <label>Discontinued</label>
      <input bind:value={product.discontinued} />
      {#if errors.discontinued}
        <error class="hidden">
          {errors.discontinued}
        </error>
      {/if}
    </field>
  </fieldset>
</form>
