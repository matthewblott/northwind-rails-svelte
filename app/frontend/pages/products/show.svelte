<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let product = {};
</script>

<h1>Product</h1>
<controls>
  <a role="button" href={`/products/${product.id}/edit`} use:inertia>Edit</a>
  <a role="button" href={`/products`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {product} />
