<script lang="ts">
  import Form from "./Form.svelte";
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  export let shipper = {};
  export let errors = {};

  const create = () => {
    router.post("/shippers", shipper, {});
  };
</script>

<h1>New Shipper</h1>
<Form {shipper} {errors} />
<controls>
  <button on:click={create}>Create</button>
  <a role="button" href={`/shippers`} use:inertia>Back</a>
</controls>
