<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";
  export let categories = [];
  export let pagy = {};

  onMount(() => {
    document.title = "categories";
  });
</script>

<h1>Categories</h1>

<nav>
  <ul>
    <li>
      <a href={`/categories/?page=1`} use:inertia>First</a>
    </li>
    <li>
      <a href={`/categories/?page=` + (pagy.page - 1)} use:inertia>Previous</a>
    </li>
    <li>
      <a href={`/categories/?page=` + pagy.next} use:inertia>Next</a>
    </li>
    <li>
      <a href={`/categories/?page=` + pagy.last} use:inertia>Last</a>
    </li>
    <li><a href="/categories/new" use:inertia>New</a></li>
  </ul>
</nav>

<ul>
  {#each categories as category}
    <li>
      <a href={`/categories/${category.id}`} use:inertia
        >{category.category_name}</a
      >
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
