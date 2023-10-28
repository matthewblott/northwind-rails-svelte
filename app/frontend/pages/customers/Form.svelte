<script lang="ts">
  import { createEventDispatcher } from "svelte";

  const dispatch = createEventDispatcher();

  export let customer = {};
  export let errors = {};

  const submit = () => {
    dispatch("submit", { customer });
  };
</script>

<div>Customer</div>

<form on:submit|preventDefault={submit}>
  <div>
    <label>Company ID <input bind:value={customer.id} /></label>
    {#if errors.id}<div>{errors.id}</div>{/if}
  </div>
  <div>
    <label>Company Name <input bind:value={customer.company_name} /></label>
    {#if errors.company_name}<div>{errors.company_name}</div>{/if}
  </div>
  <div>
    <label>Contact Name <input bind:value={customer.contact_name} /></label>
    {#if errors.contact_name}<div>{errors.contact_name}</div>{/if}
  </div>
  <div>
    <label>Contact Title <input bind:value={customer.contact_title} /></label>
    {#if errors.contact_title}<div>{errors.contact_title}</div>{/if}
  </div>
  <div>
    <label>Address <input bind:value={customer.address} /></label>
    {#if errors.address}<div>{errors.address}</div>{/if}
  </div>
  <div>
    <label>City <input bind:value={customer.city} /></label>
    {#if errors.city}<div>{errors.city}</div>{/if}
  </div>
  <div>
    <label>Region <input bind:value={customer.region} /></label>
    {#if errors.region}<div>{errors.region}</div>{/if}
  </div>
  <div>
    <label>Postal Code <input bind:value={customer.postal_code} /></label>
    {#if errors.postal_code}<div>{errors.postal_code}</div>{/if}
  </div>
  <div>
    <label>Country <input bind:value={customer.country} /></label>
    {#if errors.country}<div>{errors.country}</div>{/if}
  </div>
  <div>
    <label>Phone <input bind:value={customer.phone} /></label>
    {#if errors.phone}<div>{errors.phone}</div>{/if}
  </div>
  <div>
    <label>Fax <input bind:value={customer.fax} /></label>
    {#if errors.fax}<div>{errors.fax}</div>{/if}
  </div>
  <div>
    <button type="submit">Save</button>
  </div>
</form>

<style>
  form label {
    display: inline-block;
  }

  form input {
    display: block;
  }

  form button {
    display: block;
    margin-top: 3px;

    &:hover {
      cursor: pointer;
    }
  }

  label + div {
    color: red;
    display: inline;
  }
</style>
