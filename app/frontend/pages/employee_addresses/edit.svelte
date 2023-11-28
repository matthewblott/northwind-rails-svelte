<script lang="ts">
  import AddressForm from "../addresses/Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let employee_address = {};
  export let address = {};
  export let errors = {};

  const update = () => {
    router.put(
      `/employees/${employee_address.employee_id}/addresses/${employee_address.address_id}/edit`,
      {
        employee_address,
        address,
      },
      {
        onError: (errors) => {
          console.log(errors);
        },
      }
    );
  };

  const remove = () => {
    router.delete(
      `/employees/${employee_address.employee_id}/addresses/${employee_address.address_id}`
    );
  };
</script>

<h1>Edit Employee Address</h1>
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a
    role="button"
    href={`/employees/${employee_address.employee_id}/addresses/${employee_address.address_id}`}
    use:inertia>Back</a
  >
</controls>
<spacer data-xs />
<AddressForm {address} />
