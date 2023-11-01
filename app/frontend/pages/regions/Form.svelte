<script lang="ts">
  export let region = {};
  export let errors = {};
</script>

<form>
  <div>
    <label>Name <input bind:value={region.name} /></label>
    {#if errors.name}<div>{errors.name}</div>{/if}
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
