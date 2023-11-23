<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let order_item = {};
  export let product = {};
  export let errors = {};

  const update = () => {
    router.put(
      `/orders/${order_item.order_id}/items/${order_item.product_id}`,
      {
        order_item,
      }
    );
  };

  const remove = () => {
    router.delete(
      `/orders/${order_item.order_id}/items/${order_item.product_id}`
    );
  };
</script>

<h1>Edit Order Item</h1>
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a
    role="button"
    href={`/orders/${order_item.order_id}/items/${order_item.product_id}`}
    use:inertia>Back</a
  >
</controls>
<spacer data-xs />
<Form {order_item} {errors} {product} />
