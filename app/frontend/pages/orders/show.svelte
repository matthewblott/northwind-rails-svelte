<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let order = {};
  export let address = {};
  export let customer = {};
  export let employee = {};
</script>

<h1>Order</h1>
<controls>
  <a role="button" href={`/orders/${order.id}/edit`} use:inertia>Edit</a>
  <a role="button" href={`/orders/${order.id}/items`} use:inertia>Items</a>
  <a role="button" href={`/orders`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {order} {address} {employee} {customer} disabled={true} />
