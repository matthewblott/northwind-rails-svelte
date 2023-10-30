<script lang="ts">
  import { inertia } from "@inertiajs/svelte";

  export let products = [];
  export let pagy = {};
</script>

<h1>Products</h1>

<nav>
  <ul>
    <li>
      <a href={`/products/?page=1`} use:inertia>First</a>
    </li>
    <li>
      <a href={`/products/?page=` + (pagy.page - 1)} use:inertia>Previous</a>
    </li>
    <li>
      <a href={`/products/?page=` + pagy.next} use:inertia>Next</a>
    </li>
    <li>
      <a href={`/products/?page=` + pagy.last} use:inertia>Last</a>
    </li>
    <li><a href="/products/new" use:inertia>New</a></li>
  </ul>
</nav>

<ul>
  {#each products as product}
    <li>
      <a href={`/products/${product.id}`} use:inertia>{product.product_name}</a>
    </li>
  {/each}
</ul>

<style>
  nav ul {
    display: flex;
  }

  li {
    padding-right: 5px;
  }
</style>
