<script lang="ts">
  export let shipper = {};
  export let errors = {};
</script>

<form>
  <div>
    <label>Company Name <input bind:value={shipper.company_name} /></label>
    {#if errors.company_name}<div>{errors.companyName}</div>{/if}
  </div>
  <div>
    <label>Phone <input bind:value={shipper.phone} /></label>
    {#if errors.phone}<div>{errors.phone}</div>{/if}
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
