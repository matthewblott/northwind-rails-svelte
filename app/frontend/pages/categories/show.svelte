<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let category = {};
</script>

<h1>Category</h1>

<Form {category} />

<controls>
  <a href={`/categories/${category.id}/edit`} use:inertia>Edit</a>
  <a href={`/categories`} use:inertia>Back</a>
</controls>
