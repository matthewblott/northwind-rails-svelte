<script lang="ts">
  import Search from "../../components/Search.svelte";
  import Error from "../../components/Error.svelte";

  export let disabled = false;
  export let employee = {};
  export let manager = {};
  export let errors = {};
  export let path = "/employees/search";

  let managerName =
    manager?.first_name === undefined
      ? ""
      : manager.first_name + " " + manager.last_name;

  const format = (message) => {
    let returnMessage = message + "";

    return returnMessage.replace(",", " and ").replace("can't", "cannot");
  };
</script>

<form>
  <fieldset disabled={disabled || null}>
    <field>
      <label>Email</label>
      <input bind:value={employee.email} />
      {#if errors.email}
        <error>
          {format(errors.email)}
        </error>
      {/if}
    </field>
    <field>
      <label>First Name</label>
      <input bind:value={employee.first_name} />
      {#if errors.first_name}
        {#each errors.first_name as error}
          <error class="hidden">
            {error}
          </error>
        {/each}
      {/if}
    </field>
    <field>
      <label>Last Name</label>
      <input bind:value={employee.last_name} />
      {#if errors.last_name}
        <error class="hidden">
          {errors.last_name}
        </error>
      {/if}
    </field>
    <field>
      <label>Reports To </label>
      <Search {path} display={managerName} bind:value={employee.reports_to} />
      {#if errors.reports_to}<span>{errors.reports_to}</span>{/if}
    </field>
    <field>
      <label>Address Line 1</label>
      <input bind:value={employee.address1} />
      {#if errors.address1}
        <error class="hidden">
          {errors.address1}
        </error>
      {/if}
    </field>
    <field>
      <label>Address Line 2</label>
      <input bind:value={employee.address2} />
      {#if errors.address2}
        <error class="hidden">
          {errors.address2}
        </error>
      {/if}
    </field>
    <field>
      <label>City</label>
      <input bind:value={employee.city} />
      {#if errors.city}
        <error class="hidden">
          {errors.city}
        </error>
      {/if}
    </field>
    <field>
      <label>Region</label>
      <input bind:value={employee.region} />
      {#if errors.region}
        <error class="hidden">
          {errors.region}
        </error>
      {/if}
    </field>
    <field>
      <label>Postal Code</label>
      <input bind:value={employee.postal_code} />
      {#if errors.postal_code}
        <error class="hidden">
          {errors.postal_code}
        </error>
      {/if}
    </field>
    <field>
      <label>Country</label>
      <input bind:value={employee.country} />
      {#if errors.country}
        <error class="hidden">
          {errors.country}
        </error>
      {/if}
    </field>
    <field>
      <label>Hire Date</label>
      <input type="date" id="hire_date" bind:value={employee.hire_date} />
      {#if errors.hire_date}
        <error class="hidden">
          {errors.hire_date}
        </error>
      {/if}
    </field>
    <field>
      <label>Home Phone</label>
      <input bind:value={employee.home_phone} />
      {#if errors.home_phone}
        <error class="hidden">
          {errors.home_phone}
        </error>
      {/if}
    </field>
  </fieldset>
</form>
