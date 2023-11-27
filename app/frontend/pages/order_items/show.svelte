<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let order_item = {};
  export let product = {};
</script>

<h1>Order Item</h1>
<controls>
  <a
    role="button"
    href={`/orders/${order_item.order_id}/items/${order_item.product_id}/edit`}
    use:inertia>Edit</a
  >
  <a role="button" href={`/orders/${order_item.order_id}/items`} use:inertia
    >Back</a
  >
</controls>
<spacer data-xs />
<Form {order_item} {product} disabled={true} />
