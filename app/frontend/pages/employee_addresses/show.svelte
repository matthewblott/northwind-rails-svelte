<script lang="ts">
  import AddressForm from "../addresses/Form.svelte";
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  export let employee_address = {};
  export let address = {};
</script>

<h1>Employee Address</h1>
<controls>
  <a
    role="button"
    href={`/employees/${employee_address.employee_id}/addresses/${employee_address.address_id}/edit`}
    use:inertia>Edit</a
  >
  <a
    role="button"
    href={`/employees/${employee_address.employee_id}/addresses`}
    use:inertia>Back</a
  >
</controls>
<spacer data-xs />
<AddressForm {address} disabled={true} />
