<script lang="ts">
  import AddressForm from "../addresses/Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let supplier_address = {};
  export let address = {};
  export let errors = {};

  const update = () => {
    router.put(
      `/suppliers/${supplier_address.supplier_id}/addresses/${supplier_address.address_id}/edit`,
      {
        supplier_address,
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
      `/suppliers/${supplier_address.supplier_id}/addresses/${supplier_address.address_id}`
    );
  };
</script>

<h1>Edit Supplier Address</h1>
<controls>
  <button on:click={update}>Update</button>
  <button on:click={remove}>Delete</button>
  <a
    role="button"
    href={`/suppliers/${supplier_address.supplier_id}/addresses/${supplier_address.address_id}`}
    use:inertia>Back</a
  >
</controls>
<spacer data-xs />
<AddressForm {address} />
