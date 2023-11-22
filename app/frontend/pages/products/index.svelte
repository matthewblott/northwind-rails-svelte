<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Pager from "../../components/Pager.svelte";
  export let products = [];
  export let pagy = {};
</script>

<h1>Products</h1>
<Pager {pagy} baseUrl="/products" />
<spacer data-2xs />

<table>
  <thead>
    <tr>
      <th>Product Code</th>
      <th>Product Name</th>
      <th>Standard Cost</th>
      <th>List Price</th>
      <th>Discontinued</th>
    </tr>
  </thead>
  <tbody>
    {#each products as product}
      <tr>
        <td title="Product Code">
          <a href={`/products/${product.id}`} use:inertia
            >{product.product_code}</a
          >
        </td>
        <td title="Product Name">{product.product_name}</td>
        <td title="Standard Cost">{product.standard_cost}</td>
        <td title="List Price">{product.list_price}</td>
        <td title="Discontinued">{product.discontinued ? "Yes" : "No"}</td>
      </tr>
    {/each}
  </tbody>
</table>
