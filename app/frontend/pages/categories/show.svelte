<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let category = {};
</script>

<h1>Category</h1>
<controls>
  <a role="button" href={`/categories/${category.id}/edit`} use:inertia>Edit</a>
  <a role="button" href={`/categories`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {category} />
