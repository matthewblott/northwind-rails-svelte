<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let category = {};
  export let errors = {};

  const update = () => {
    router.put(`/categories/${category.id}`, { category });
  };

  const remove = () => {
    alert("Not implemented currently");
  };
</script>

<h1>Edit Category</h1>
<Form {category} {errors} />
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a role="button" href={`/categories/${category.id}`} use:inertia>Back</a>
</controls>
