<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Form from "./Form.svelte";
  export let supplier = {};
</script>

<h1>Supplier</h1>
<controls>
  <a role="button" href={`/suppliers/${supplier.id}/edit`} use:inertia>Edit</a>
  <a role="button" href={`/suppliers`} use:inertia>Back</a>
</controls>
<Form {supplier} />
