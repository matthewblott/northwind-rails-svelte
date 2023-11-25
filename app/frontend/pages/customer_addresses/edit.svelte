<script lang="ts">
  import AddressForm from "../addresses/Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let customer_address = {};
  export let address = {};
  export let errors = {};

  const update = () => {
    router.put(
      `/customers/${customer_address.customer_id}/addresses/${customer_address.address_id}`,
      {
        customer_address,
        address,
      }
    );
  };

  const remove = () => {
    router.delete(
      `/customers/${customer_address.customer_id}/addresses/${customer_address.address_id}`
    );
  };
</script>

<h1>Edit Customer Address</h1>
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a
    role="button"
    href={`/customers/${customer_address.customer_id}/addresses/${customer_address.address_id}`}
    use:inertia>Back</a
  >
</controls>
<spacer data-xs />
<AddressForm {address} />
