<script lang="ts">
  export let category = {};
  export let errors = {};
</script>

<form>
  <div>
    <label>Category Name <input bind:value={category.category_name} /></label>
    {#if errors.category_name}<div>{errors.category_name}</div>{/if}
  </div>
  <div>
    <label>Description <input bind:value={category.description} /></label>
    {#if errors.description}<div>{errors.description}</div>{/if}
  </div>
</form>

<style>
  form label {
    display: inline-block;
  }

  form input {
    display: block;
  }

  label + div {
    color: red;
    display: inline;
  }
</style>
