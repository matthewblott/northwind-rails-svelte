<script lang="ts">
  import TextField from "../../components/TextField.svelte";
  export let region = {};
  export let errors = {};
  export let disabled = false;
</script>

<form>
  <fieldset disabled={disabled || null}>
    <TextField name={"Name"} bind:value={region.name} error={errors.name} />
  </fieldset>
</form>
