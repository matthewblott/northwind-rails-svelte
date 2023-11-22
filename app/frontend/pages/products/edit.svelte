<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let product = {};
  export let errors = {};

  const update = () => {
    router.put(`/products/${product.id}`, { product });
  };

  const remove = () => {
    alert("Not implemented currently");
  };
</script>

<h1>Edit Product</h1>
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a role="button" href={`/products/${product.id}`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {product} {errors} />
