<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let order = {};
  export let address = {};
  export let employee = {};
  export let customer = {};
  export let errors = {};

  const update = () => {
    router.put(`/orders/${order.id}`, { order });
  };

  const remove = () => {
    alert("Not implemented currently");
  };
</script>

<h1>Edit Order</h1>

<Form {order} {errors} {address} {employee} {customer} />
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a href={`/orders/${order.id}`} use:inertia>Back</a>
</controls>
