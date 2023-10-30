<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";

  export let employee = {};

  const submit = () => {
    // router.delete(`/employees/${employee.id}`);
    alert("not implemented");
  };
</script>

<h1>Employee</h1>
<div>
  <label>Title <input bind:value={employee.title} /></label>
</div>
<div>
  <label>Reports To <input bind:value={employee.reports_to} /></label>
</div>
<div>
  <label>First Name <input bind:value={employee.first_name} /></label>
</div>
<div>
  <label>Last Name <input bind:value={employee.last_name} /></label>
</div>
<div>
  <label>Birth Date <input bind:value={employee.birth_date} /></label>
</div>
<div>
  <label>Address Line 1<input bind:value={employee.address1} /></label>
</div>
<div>
  <label>Address Line 2<input bind:value={employee.address2} /></label>
</div>
<div>
  <label>City <input bind:value={employee.city} /></label>
</div>
<div>
  <label>Region <input bind:value={employee.region} /></label>
</div>
<div>
  <label>Postal Code <input bind:value={employee.postal_code} /></label>
</div>
<div>
  <label>Country <input bind:value={employee.country} /></label>
</div>
<div>
  <label>Home Phone <input bind:value={employee.home_phone} /></label>
</div>

<div>
  <a href={`/employees/${employee.id}/edit`} use:inertia>Edit</a>

  <button on:click={submit}>Delete</button>
</div>

<style>
  label {
    display: block;
  }

  input {
    display: block;
  }

  a {
    border-color: var(--border-color);
    border-width: 1px;
    border-style: solid;
    border-radius: var(--radius);
    padding: 4px;
    &:hover {
      text-decoration: none;
    }
  }

  button {
    display: inline-block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
    }
  }
</style>
