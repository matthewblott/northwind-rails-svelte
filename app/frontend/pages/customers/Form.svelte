<script lang="ts">
  export let customer = {};
  export let errors = {};
</script>

<form>
  <fieldset>
    <field>
      <label>Customer Id</label>
      <input bind:value={customer.id} />
      {#if errors.id}
        <error class="_idden">
          {errors.id}
        </error>
      {/if}
    </field>
    <field>
      <label>Company Name</label>
      <input bind:value={customer.company_name} />
      {#if errors.company_name}
        <error class="hidden">
          {errors.company_name}
        </error>
      {/if}
    </field>
    <field>
      <label>Contact Name</label>
      <input bind:value={customer.contact_name} />
      {#if errors.contact_name}
        <error class="hidden">
          {errors.contact_name}
        </error>
      {/if}
    </field>
    <field>
      <label>Contact Title</label>
      <input bind:value={customer.contact_title} />
      {#if errors.contact_title}
        <error class="hidden">
          {errors.contact_title}
        </error>
      {/if}
    </field>
    <field>
      <label>Address</label>
      <input bind:value={customer.address} />
      {#if errors.address}
        <error class="hidden">
          {errors.address}
        </error>
      {/if}
    </field>
    <field>
      <label>City</label>
      <input bind:value={customer.city} />
      {#if errors.city}
        <error class="hidden">
          {errors.city}
        </error>
      {/if}
    </field>
    <field>
      <label>Region</label>
      <input bind:value={customer.region} />
      {#if errors.region}
        <error class="hidden">
          {errors.region}
        </error>
      {/if}
    </field>
    <field>
      <label>Postal Code</label>
      <input bind:value={customer.postal_code} />
      {#if errors.postal_code}
        <error class="hidden">
          {errors.postal_code}
        </error>
      {/if}
    </field>
    <field>
      <label>Country</label>
      <input bind:value={customer.country} />
      {#if errors.country}
        <error class="hidden">
          {errors.country}
        </error>
      {/if}
    </field>
    <field>
      <label>Phone</label>
      <input bind:value={customer.phone} />
      {#if errors.phone}
        <error class="hidden">
          {errors.phone}
        </error>
      {/if}
    </field>
    <field>
      <label>Fax</label>
      <input bind:value={customer.fax} />
      {#if errors.fax}
        <error class="hidden">
          {errors.fax}
        </error>
      {/if}
    </field>
  </fieldset>
</form>
