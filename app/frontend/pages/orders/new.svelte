<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";

  export let employee = {};
  export let order = {};
  export let customer = {};
  export let errors = {};

  const create = () => {
    router.post(`/orders/new`, { order });
  };

  onMount(() => {
    //
  });
</script>

<h1>New Order</h1>
<controls>
  <button on:click={create}>Create</button>
  <a role="button" href={`/orders`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {order} {employee} {errors} />
