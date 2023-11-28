<script lang="ts">
  import TextField from "../../components/TextField.svelte";
  export let customer = {};
  export let errors = {};
  export let disabled = false;
</script>

<form>
  <fieldset disabled={disabled || null}>
    <TextField
      name={"Customer Id"}
      bind:value={customer.id}
      error={errors.id}
    />
    <TextField
      name={"Company Name"}
      bind:value={customer.company_name}
      error={errors.company_name}
    />
    <TextField
      name={"Contact Name"}
      bind:value={customer.contact_name}
      error={errors.contact_name}
    />
    <TextField
      name={"Contact Title"}
      bind:value={customer.contact_title}
      error={errors.contact_title}
    />
    <TextField
      name={"Region"}
      bind:value={customer.region}
      error={errors.region}
    />
    <TextField
      name={"Phone"}
      bind:value={customer.phone}
      error={errors.phone}
    />
    <TextField name={"Fax"} bind:value={customer.fax} error={errors.fax} />
  </fieldset>
</form>
