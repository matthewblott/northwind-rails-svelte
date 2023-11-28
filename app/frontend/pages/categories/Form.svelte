<script lang="ts">
  import TextField from "../../components/TextField.svelte";
  export let category = {};
  export let errors = {};
  export let disabled = false;
</script>

<form>
  <fieldset disabled={disabled || null}>
    <TextField
      name={"Category Name"}
      bind:value={category.category_name}
      error={errors.category_name}
    />
    <TextField
      name={"Description"}
      bind:value={category.description}
      error={errors.description}
    />
  </fieldset>
</form>
