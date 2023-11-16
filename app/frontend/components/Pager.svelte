<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  export let pagy = {};
  export let baseUrl = "";
</script>

<nav>
  <ul>
    <li>
      <a href="{baseUrl}?page=1" use:inertia disabled={pagy.page === 1}>First</a
      >
    </li>
    <li>
      {#if pagy.page === 1}
        <a href="#">Previous</a>
      {:else}
        <a href="{baseUrl}?page={pagy.page - 1}" use:inertia>Previous</a>
      {/if}
    </li>
    <li>
      {#if pagy.page === pagy.last}
        <a href="#">Next</a>
      {:else}
        <a href="{baseUrl}?page={pagy.next}" use:inertia>Next</a>
      {/if}
    </li>
    <li>
      <a href="{baseUrl}?page={pagy.last}" use:inertia>Last</a>
    </li>
    <li><a href="{baseUrl}/new" use:inertia>New</a></li>
  </ul>
</nav>

<style>
  ul {
    display: flex;
  }

  li {
    padding-right: 5px;
  }
</style>
