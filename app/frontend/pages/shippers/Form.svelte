<script lang="ts">
  export let shipper = {};
  export let errors = {};
</script>

<form>
  <fieldset class="auto-grid">
    <field>
      <label>Company Name</label>
      <input bind:value={shipper.company_name} />
      {#if errors.company_name}
        <error class="hidden">
          {errors.company_name}
        </error>
      {/if}
    </field>
    <field>
      <label>Phone</label>
      <input bind:value={shipper.phone} />
      {#if errors.phone}
        <error class="hidden">
          {errors.phone}
        </error>
      {/if}
    </field>
  </fieldset>
</form>
