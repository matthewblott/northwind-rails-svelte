<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";

  export let order_item = {};
  export let product = {};
  export let errors = {};

  const create = () => {
    router.post(`/orders/${order_item.order_id}/items/new`, {
      order_item,
    });
  };

  onMount(() => {
    //
  });
</script>

<h1>New Order Item</h1>
<controls>
  <button on:click={create}>Create</button>
  <a role="button" href={`/orders/${order_item.order_id}/items`} use:inertia
    >Back</a
  >
</controls>
<spacer data-xs />
<Form {order_item} {product} {errors} />
