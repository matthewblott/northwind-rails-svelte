<script lang="ts">
  import AddressForm from "../addresses/Form.svelte";

  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";

  export let path = "/addresses/search";
  export let customer_address = {};
  export let address = {};
  export let errors = {};

  const create = () => {
    router.post(`/customers/${customer_address.customer_id}/addresses`, {
      customer_address,
      address,
    });
  };

  onMount(() => {
    //
  });
</script>

<h1>New Customer Address</h1>
<controls>
  <button on:click={create}>Create</button>
  <a
    role="button"
    href={`/customers/${customer_address.customer_id}/addresses`}
    use:inertia>Back</a
  >
</controls>
<spacer data-xs />

<AddressForm {address} {errors} />
