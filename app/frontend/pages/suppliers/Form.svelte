<script lang="ts">
  import TextField from "../../components/TextField.svelte";
  export let supplier = {};
  export let errors = {};
  export let disabled = false;
</script>

<form>
  <fieldset disabled={disabled || null}>
    <TextField
      name={"Company Name"}
      bind:value={supplier.company_name}
      error={errors.company_name}
    />
    <TextField
      name={"Contact Name"}
      bind:value={supplier.contact_name}
      error={errors.contact_name}
    />
    <TextField
      name={"Contact Title"}
      bind:value={supplier.contact_title}
      error={errors.contact_title}
    />
    <TextField
      name={"Region"}
      bind:value={supplier.region}
      error={errors.region}
    />
  </fieldset>
</form>
