<script lang="ts">
  import { inertia } from "@inertiajs/svelte";
  import { router } from "@inertiajs/svelte";
  import Layout from "../../components/Layout.svelte";

  export let customer = {};

  const submit = () => {
    // router.delete(`/customers/${customer.id}`);
    alert("not implemented");
  };
</script>

<Layout>
  <h1>Customer</h1>
  <div>
    <label>Company Name <input bind:value={customer.company_name} /></label>
  </div>
  <div>
    <label>Contact Name <input bind:value={customer.contact_name} /></label>
  </div>
  <div>
    <label>Contact Title <input bind:value={customer.contact_title} /></label>
  </div>
  <div>
    <label>Address <input bind:value={customer.address} /></label>
  </div>
  <div>
    <label>City <input bind:value={customer.city} /></label>
  </div>
  <div>
    <label>Region <input bind:value={customer.region} /></label>
  </div>
  <div>
    <label>Postal Code <input bind:value={customer.postal_code} /></label>
  </div>
  <div>
    <label>Country <input bind:value={customer.country} /></label>
  </div>
  <div>
    <label>Phone <input bind:value={customer.phone} /></label>
  </div>
  <div>
    <label>Fax <input bind:value={customer.fax} /></label>
  </div>

  <div>
    <a href={`/customers/${customer.id}/edit`} use:inertia>Edit</a>

    <button on:click={submit}>Delete</button>
  </div>
</Layout>

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
