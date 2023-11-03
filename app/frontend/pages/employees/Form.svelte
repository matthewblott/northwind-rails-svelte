<script lang="ts">
  export let employee = {};
  export let errors = {};
</script>

<form>
  <div>
    <label>Email <input bind:value={employee.email} /></label>
    {#if errors.email}<div>{errors.email}</div>{/if}
  </div>
  <div>
    <label>Title <input bind:value={employee.title} /></label>
    {#if errors.title}<div>{errors.title}</div>{/if}
  </div>
  <div>
    <label>First Name <input bind:value={employee.first_name} /></label>
    {#if errors.first_name}<div>{errors.first_name}</div>{/if}
  </div>
  <div>
    <label>Last Name <input bind:value={employee.last_name} /></label>
    {#if errors.last_name}<div>{errors.last_name}</div>{/if}
  </div>
  <div>
    <label
      >Birth Date <input type="date" bind:value={employee.birth_date} /></label
    >
    {#if errors.birth_date}<div>{errors.birth_date}</div>{/if}
  </div>
  <div>
    <label>Reports To <input bind:value={employee.reports_to} /></label>
    {#if errors.reports_to}<div>{errors.reports_to}</div>{/if}
  </div>
  <!-- <div> -->
  <!--   <label>Address Line 1<input bind:value={employee.address1} /></label> -->
  <!--   {#if errors.address1}<div>{errors.address1}</div>{/if} -->
  <!-- </div> -->
  <!-- <div> -->
  <!--   <label>Address Line 2<input bind:value={employee.address2} /></label> -->
  <!--   {#if errors.address2}<div>{errors.address2}</div>{/if} -->
  <!-- </div> -->
  <!-- <div> -->
  <!--   <label>City <input bind:value={employee.city} /></label> -->
  <!--   {#if errors.city}<div>{errors.city}</div>{/if} -->
  <!-- </div> -->
  <div>
    <label>Region <input bind:value={employee.region} /></label>
    {#if errors.region}<div>{errors.region}</div>{/if}
  </div>
  <!-- <div> -->
  <!--   <label>Postal Code <input bind:value={employee.postal_code} /></label> -->
  <!--   {#if errors.postal_code}<div>{errors.postal_code}</div>{/if} -->
  <!-- </div> -->
  <!-- <div> -->
  <!--   <label>Country <input bind:value={employee.country} /></label> -->
  <!--   {#if errors.country}<div>{errors.country}</div>{/if} -->
  <!-- </div> -->
  <div>
    <label>Home Phone <input bind:value={employee.home_phone} /></label>
    {#if errors.home_phone}<div>{errors.home_phone}</div>{/if}
  </div>
</form>

<style>
  form label {
    display: inline-block;
  }

  form input {
    display: block;
  }

  label + div {
    color: red;
    display: inline;
  }
</style>
