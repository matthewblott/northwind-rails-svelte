<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let address = {};
  export let errors = {};

  const create = () => {
    router.post("/addresses", address, {});
  };
</script>

<h1>New Address</h1>
<Form {address} {errors} />
<controls>
  <button on:click={create}>Create</button>
  <a href={`/addresses`} use:inertia>Back</a>
</controls>
