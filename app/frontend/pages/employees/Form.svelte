<script lang="ts">
  import TextField from "../../components/TextField.svelte";
  import Search from "../../components/Search.svelte";

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
    <TextField
      name={"Email"}
      bind:value={employee.email}
      error={errors.email}
    />
    <TextField
      name={"First Name"}
      bind:value={employee.first_name}
      error={errors.first_name}
    />
    <TextField
      name={"Last Name"}
      bind:value={employee.last_name}
      error={errors.last_name}
    />
    <label>Reports To </label>
    <Search
      {path}
      display={managerName}
      bind:value={employee.reports_to}
      error={errors.reports_to}
    />
    <field>
      <TextField
        name={"Region"}
        bind:value={employee.region}
        error={errors.region}
      />
      {#if errors.region}
        <error class="hidden">
          {errors.region}
        </error>
      {/if}
    </field>
    <TextField
      name={"Hire Date"}
      type="date"
      id="hire_date"
      bind:value={employee.hire_date}
      error={errors.hire_date}
    />
    <TextField
      name={"Home Phone"}
      bind:value={employee.home_phone}
      error={errors.home_phone}
    />
  </fieldset>
</form>
