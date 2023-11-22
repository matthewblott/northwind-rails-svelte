<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let supplier = {};
  export let errors = {};

  const create = () => {
    router.post("/suppliers", supplier, {});
  };
</script>

<h1>New Supplier</h1>
<controls>
  <button on:click={create}>Create</button>
  <a role="button" href={`/suppliers`} use:inertia>Back</a>
</controls>
<spacer data-xs />
<Form {supplier} {errors} />
