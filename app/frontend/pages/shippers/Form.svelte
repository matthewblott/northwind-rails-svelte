<script lang="ts">
  import TextField from "../../components/TextField.svelte";
  export let shipper = {};
  export let errors = {};
  export let disabled = false;
</script>

<form>
  <fieldset disabled={disabled || null}>
    <TextField
      name={"Company Name"}
      bind:value={shipper.company_name}
      error={errors.company_name}
    />
    <TextField name={"Phone"} bind:value={shipper.phone} error={errors.phone} />
  </fieldset>
</form>
