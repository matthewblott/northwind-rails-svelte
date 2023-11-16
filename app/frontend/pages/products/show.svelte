<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let product = {};
</script>

<h1>Product</h1>

<Form {product} />
<controls>
  <a href={`/products/${product.id}/edit`} use:inertia>Edit</a>
  <a href={`/products`} use:inertia>Back</a>
</controls>
