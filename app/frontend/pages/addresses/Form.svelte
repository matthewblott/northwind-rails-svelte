<script lang="ts">
  export let address = {};
  export let errors = {};
</script>

<form>
  <fieldset class="auto-grid">
    <field>
      <label>Address Name</label>
      <input bind:value={address.name} />
      {#if errors.name}
        <error class="hidden">
          {errors.name}
        </error>
      {/if}
    </field>
    <field>
      <label>Address Line 1</label>
      <input bind:value={address.address_line_1} />
      {#if errors.address_line_1}
        <error class="hidden">
          {errors.address_line_1}
        </error>
      {/if}
    </field>
    <field>
      <label>Address Line 2</label>
      <input bind:value={address.address_line_2} />
      {#if errors.address_line_2}
        <error class="hidden">
          {errors.address_line_2}
        </error>
      {/if}
    </field>
    <field>
      <label>Postal Town</label>
      <input bind:value={address.postal_town} />
      {#if errors.postal_town}
        <error class="hidden">
          {errors.postal_town}
        </error>
      {/if}
    </field>
    <field>
      <label>County</label>
      <input bind:value={address.county} />
      {#if errors.county}
        <error class="hidden">
          {errors.county}
        </error>
      {/if}
    </field>
    <field>
      <label>Post Code</label>
      <input bind:value={address.post_code} />
      {#if errors.post_code}
        <error class="hidden">
          {errors.post_code}
        </error>
      {/if}
    </field>
    <field>
      <label>Country</label>
      <input bind:value={address.country} />
      {#if errors.country}
        <error class="hidden">
          {errors.country}
        </error>
      {/if}
    </field>
  </fieldset>
</form>
