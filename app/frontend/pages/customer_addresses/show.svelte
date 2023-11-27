<script lang="ts">
  import AddressForm from "../addresses/Form.svelte";
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  export let customer_address = {};
  export let address = {};
</script>

<h1>Customer Address</h1>
<controls>
  <a
    role="button"
    href={`/customers/${customer_address.customer_id}/addresses/${customer_address.address_id}/edit`}
    use:inertia>Edit</a
  >
  <a
    role="button"
    href={`/customers/${customer_address.customer_id}/addresses`}
    use:inertia>Back</a
  >
</controls>
<spacer data-xs />
<AddressForm {address} disabled={true} />
