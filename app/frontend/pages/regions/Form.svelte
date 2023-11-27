<script lang="ts">
  export let region = {};
  export let errors = {};
  export let disabled = false;
</script>

<form>
  <fieldset disabled={disabled || null}>
    <field>
      <label>Name</label> <input bind:value={region.name} />
      {#if errors.name}
        <error class="hidden">
          {errors.name}
        </error>
      {/if}
    </field>
  </fieldset>
</form>
