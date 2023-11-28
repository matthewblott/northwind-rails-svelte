<script lang="ts">
  import AddressForm from "../addresses/Form.svelte";

  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";
  import { onMount } from "svelte";

  export let path = "/addresses/search";
  export let employee_address = {};
  export let address = {};
  export let errors = {};

  const create = () => {
    router.post(
      `/employees/${employee_address.employee_id}/addresses/new`,
      {
        employee_address,
        address,
      },
      {
        replace: false,
        only: ["errors"],
        onError: (errors) => {
          console.log(errors);
        },
      }
    );
  };

  onMount(() => {
    //
  });
</script>

<h1>New Employee Address</h1>
<controls>
  <button on:click={create}>Create</button>
  <a
    role="button"
    href={`/employees/${employee_address.employee_id}/addresses`}
    use:inertia>Back</a
  >
</controls>
<spacer data-xs />

<AddressForm {address} {errors} />
