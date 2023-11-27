<script lang="ts">
  export let category = {};
  export let errors = {};
  export let disabled = false;
</script>

<form>
  <fieldset disabled={disabled || null}>
    <field>
      <label>Category Name</label> <input bind:value={category.category_name} />
      {#if errors.category_name}
        <error class="hidden">
          {errors.category_name}
        </error>
      {/if}
    </field>

    <field>
      <label>Description</label>
      <input bind:value={category.description} />
      {#if errors.description}
        <error class="hidden">
          {errors.description}
        </error>
      {/if}
    </field>
  </fieldset>
</form>
