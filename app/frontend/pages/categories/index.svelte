<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import Pager from "../../components/Pager.svelte";
  import { onMount } from "svelte";
  export let categories = [];
  export let pagy = {};

  onMount(() => {
    document.title = "Categories";
  });
</script>

<h1>Categories</h1>
<Pager {pagy} baseUrl="/categories" />

<ul>
  {#each categories as category}
    <li>
      <a href={`/categories/${category.id}`} use:inertia
        >{category.category_name}</a
      >
    </li>
  {/each}
</ul>
