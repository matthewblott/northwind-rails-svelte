<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let product = {};
  export let errors = {};

  const create = () => {
    router.post("/products", product, {});
  };
</script>

<h1>New Product</h1>
<controls>
  <button on:click={create}>Create</button>
  <a role="button" href={`/products`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {product} {errors} />
