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
<table>
  <thead>
    <tr>
      <th>Category Name</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    {#each categories as category}
      <tr>
        <td>
          <a href={`/categories/${category.id}`} use:inertia
            >{category.category_name}</a
          >
        </td>
        <td>{category.description}</td>
      </tr>
    {/each}
  </tbody>
</table>
