<script lang="ts">
  export let address = {};
  export let errors = {};
</script>

<form>
  <div>
    <label>Address Name <input bind:value={address.name} /></label>
    {#if errors.name}<div>{errors.name}</div>{/if}
  </div>
  <div>
    <label>Address Line 1<input bind:value={address.address_line_1} /></label>
    {#if errors.address_line_1}<div>{errors.address_line_1}</div>{/if}
  </div>
  <div>
    <label>Address Line 2<input bind:value={address.address_line_2} /></label>
    {#if errors.address_line_2}<div>{errors.address_line_2}</div>{/if}
  </div>
  <div>
    <label>Postal Town<input bind:value={address.postal_town} /></label>
    {#if errors.postal_town}<div>{errors.postal_town}</div>{/if}
  </div>
  <div>
    <label>County <input bind:value={address.county} /></label>
    {#if errors.county}<div>{errors.county}</div>{/if}
  </div>
  <div>
    <label>Post Code <input bind:value={address.post_code} /></label>
    {#if errors.post_code}<div>{errors.post_code}</div>{/if}
  </div>
  <div>
    <label>Country <input bind:value={address.country} /></label>
    {#if errors.country}<div>{errors.country}</div>{/if}
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
