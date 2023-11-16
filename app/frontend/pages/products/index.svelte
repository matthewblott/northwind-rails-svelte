<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Pager from "../../components/Pager.svelte";
  export let products = [];
  export let pagy = {};
</script>

<h1>Products</h1>
<Pager {pagy} baseUrl="/products" />

<ul>
  {#each products as product}
    <li>
      <a href={`/products/${product.id}`} use:inertia>{product.product_name}</a>
    </li>
  {/each}
</ul>
