<script lang="ts">
  import Search from "../../components/Search.svelte";
  import Error from "../../components/Error.svelte";

  import { onMount } from "svelte";

  export let disabled = false;
  export let order = {};
  export let employee = {};
  export let errors = {};
  export let customer = {};

  const customersPath = "/customers/search";
  const employeesPath = "/employees/search";

  let form;

  let employeeName =
    employee.first_name === undefined
      ? ""
      : employee.first_name + " " + employee.last_name;

  let companyName =
    customer.company_name === undefined ? "" : customer.company_name;

  onMount(() => {
    form.querySelector(".order-date").value = order.order_date.substr(0, 10);
  });
</script>

<form bind:this={form}>
  <fieldset disabled={disabled || null}>
    <div>
      <span>Customer</span>
      <Search
        path={customersPath}
        display={companyName}
        bind:value={order.customer_id}
      />
      <Error value={errors.customer_id} />
    </div>
    <div>
      <span>Employee</span>
      <Search
        path={employeesPath}
        display={employeeName}
        bind:value={order.employee_id}
      />
      <Error value={errors.employee_id} />
    </div>
    <div>
      <label
        >Order Date <input
          class="order-date"
          type="date"
          bind:value={order.order_date}
        /></label
      >
      {#if errors.order_date}<span>{errors.order_date}</span>{/if}
    </div>
    <div>
      <label
        >Shipped Date <input
          type="date"
          bind:value={order.shipped_date}
        /></label
      >
      {#if errors.shipped_date}<span>{errors.shipped_date}</span>{/if}
    </div>
    <div>
      <label>Ship Name <input bind:value={order.ship_name} /></label>
      {#if errors.ship_name}<span>{errors.ship_name}</span>{/if}
    </div>
    <div>
      <label>Ship Address1 <input bind:value={order.ship_address1} /></label>
      {#if errors.ship_address1}<span>{errors.ship_address1}</span>{/if}
    </div>
    <div>
      <label>Ship Address2 <input bind:value={order.ship_address2} /></label>
      {#if errors.ship_address2}<span>{errors.ship_address2}</span>{/if}
    </div>
    <div>
      <label>Ship City <input bind:value={order.ship_city} /></label>
      {#if errors.ship_city}<span>{errors.ship_city}</span>{/if}
    </div>
    <div>
      <label>Ship State <input bind:value={order.ship_state} /></label>
      {#if errors.ship_state}<span>{errors.ship_state}</span>{/if}
    </div>
    <div>
      <label
        >Ship Postal Code <input bind:value={order.ship_postal_code} /></label
      >
      {#if errors.ship_postal_code}<span>{errors.ship_postal_code}</span>{/if}
    </div>
    <div>
      <label>Ship Country <input bind:value={order.ship_country} /></label>
      {#if errors.ship_country}<span>{errors.ship_country}</span>{/if}
    </div>
    <div>
      <label>Shipping Fee <input bind:value={order.shipping_fee} /></label>
      {#if errors.shipping_fee}<span>{errors.shipping_fee}</span>{/if}
    </div>
    <div>
      <label>Payment Type <input bind:value={order.payment_type} /></label>
      {#if errors.payment_type}<span>{errors.payment_type}</span>{/if}
    </div>
    <div>
      <label>Paid Date <input type="date" bind:value={order.paid_date} /></label
      >
      {#if errors.paid_date}<span>{errors.paid_date}</span>{/if}
    </div>
    <!-- <div> -->
    <!--   <label>Order Status <input bind:value={order.order_status} /></label> -->
    <!--   {#if errors.order_status}<span>{errors.order_status}</span>{/if} -->
    <!-- </div> -->
  </fieldset>
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

  label + span {
    color: firebrick;
    display: inline;
  }
</style>
