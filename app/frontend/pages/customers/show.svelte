<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let customer = {};
</script>

<h1>Customer</h1>

<Form {customer} />
<controls>
  <a href={`/customers/${customer.id}/edit`} use:inertia>Edit</a>
  <a href={`/customers`} use:inertia>Back</a>
</controls>
