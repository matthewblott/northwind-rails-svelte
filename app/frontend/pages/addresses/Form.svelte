<script lang="ts">
  import TextField from "../../components/TextField.svelte";
  export let address = {};
  export let errors = {};
  export let disabled = false;
</script>

<form>
  <fieldset disabled={disabled || null}>
    <TextField
      name={"Address Name"}
      bind:value={address.name}
      error={errors.name}
    />
    <TextField
      name={"Address Line 1"}
      bind:value={address.address_line_1}
      error={errors.address_line_1}
    />
    <TextField
      name={"Address Line 2"}
      bind:value={address.address_line_2}
      error={errors.address_line_2}
    />
    <TextField
      name={"Postal Town"}
      bind:value={address.postal_town}
      error={errors.postal_town}
    />
    <TextField
      name={"County"}
      bind:value={address.county}
      error={errors.county}
    />
    <TextField
      name={"Post Code"}
      bind:value={address.post_code}
      error={errors.post_code}
    />
    <TextField
      name={"Country"}
      bind:value={address.country}
      error={errors.country}
    />
  </fieldset>
</form>
