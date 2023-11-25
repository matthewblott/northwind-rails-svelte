<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let customer = {};
</script>

<h1>Customer</h1>
<controls>
  <a role="button" href={`/customers/${customer.id}/edit`} use:inertia>Edit</a>
  <a role="button" href={`/customers/${customer.id}/addresses`} use:inertia
    >Addresses</a
  >
  <a role="button" href={`/customers`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {customer} />
