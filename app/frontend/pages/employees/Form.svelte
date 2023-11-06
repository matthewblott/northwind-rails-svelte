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
</script>

<form>
  <fieldset disabled={disabled || null}>
    <div>
      <label>Email <input bind:value={employee.email} /></label>
      <Error value={errors.email} />
    </div>
    <div>
      <label>First Name <input bind:value={employee.first_name} /></label>
      {#if errors.first_name}<span>{errors.first_name}</span>{/if}
    </div>
    <div>
      <label>Last Name <input bind:value={employee.last_name} /></label>
      {#if errors.last_name}<span>{errors.last_name}</span>{/if}
    </div>

    <label>Reports To </label>
    <Search {path} display={managerName} bind:value={employee.reports_to} />
    {#if errors.reports_to}<span>{errors.reports_to}</span>{/if}
    <div>
      <label>Address Line 1<input bind:value={employee.address1} /></label>
      {#if errors.address1}<span>{errors.address1}</span>{/if}
    </div>
    <div>
      <label>Address Line 2<input bind:value={employee.address2} /></label>
      {#if errors.address2}<span>{errors.address2}</span>{/if}
    </div>
    <div>
      <label>City <input bind:value={employee.city} /></label>
      {#if errors.city}<span>{errors.city}</span>{/if}
    </div>
    <div>
      <label>Region <input bind:value={employee.region} /></label>
      {#if errors.region}<span>{errors.region}</span>{/if}
    </div>
    <div>
      <label>Postal Code <input bind:value={employee.postal_code} /></label>
      {#if errors.postal_code}<span>{errors.postal_code}</span>{/if}
    </div>
    <div>
      <label>Country <input bind:value={employee.country} /></label>
      {#if errors.country}<span>{errors.country}</span>{/if}
    </div>

    <div>
      <label
        >Hire Date
        <input
          type="date"
          id="hire_date"
          bind:value={employee.hire_date}
        /></label
      >
    </div>

    <div>
      <label>Home Phone <input bind:value={employee.home_phone} /></label>
      {#if errors.home_phone}<span>{errors.home_phone}</span>{/if}
    </div>
  </fieldset>
</form>

<style>
  form label {
    display: inline-block;
  }

  form input {
    display: block;
  }

  label + span {
    color: firebrick;
    display: inline;
  }
</style>
