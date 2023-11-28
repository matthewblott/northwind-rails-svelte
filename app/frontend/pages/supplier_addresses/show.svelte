<script lang="ts">
  import AddressForm from "../addresses/Form.svelte";
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  export let supplier_address = {};
  export let address = {};
</script>

<h1>Supplier Address</h1>
<controls>
  <a
    role="button"
    href={`/suppliers/${supplier_address.supplier_id}/addresses/${supplier_address.address_id}/edit`}
    use:inertia>Edit</a
  >
  <a
    role="button"
    href={`/suppliers/${supplier_address.supplier_id}/addresses`}
    use:inertia>Back</a
  >
</controls>
<spacer data-xs />
<AddressForm {address} disabled={true} />
