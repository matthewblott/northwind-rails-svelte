<script lang="ts">
  export let supplier = {};
  export let errors = {};
  export let disabled = false;
</script>

<form>
  <fieldset disabled={disabled || null}>
    <field>
      <label>Company Name</label>
      <input bind:value={supplier.company_name} />
      {#if errors.company_name}
        <error class="hidden">
          {errors.company_name}
        </error>
      {/if}
    </field>
    <field>
      <label>Contact Name</label>
      <input bind:value={supplier.contact_name} />
      {#if errors.contact_name}
        <error class="hidden">
          {errors.contact_name}
        </error>
      {/if}
    </field>
    <field>
      <label>Contact Title</label>
      <input bind:value={supplier.contact_title} />
      {#if errors.contact_title}
        <error class="hidden">
          {errors.contact_title}
        </error>
      {/if}
    </field>
    <field>
      <label>Address</label>
      <input bind:value={supplier.address} />
      {#if errors.address}
        <error class="hidden">
          {errors.address}
        </error>
      {/if}
    </field>
    <field>
      <label>City</label>
      <input bind:value={supplier.city} />
      {#if errors.city}
        <error class="hidden">
          {errors.city}
        </error>
      {/if}
    </field>
    <field>
      <label>Region</label>
      <input bind:value={supplier.region} />
      {#if errors.region}
        <error class="hidden">
          {errors.region}
        </error>
      {/if}
    </field>
    <field>
      <label>Postal Code</label>
      <input bind:value={supplier.postal_code} />
      {#if errors.postal_code}
        <error class="hidden">
          {errors.postal_code}
        </error>
      {/if}
    </field>
    <field>
      <label>Country</label>
      <input bind:value={supplier.country} />
      {#if errors.country}
        <error class="hidden">
          {errors.country}
        </error>
      {/if}
    </field>
  </fieldset>
</form>
