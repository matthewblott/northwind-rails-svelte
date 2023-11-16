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
    router.post(`/orders/`, { order });
  };

  onMount(() => {
    //
  });
</script>

<h1>New Order</h1>
<Form {order} {employee} {errors} />
<controls>
  <button on:click={create}>Create</button>
  <a href={`/orders`} use:inertia>Back</a>
</controls>
