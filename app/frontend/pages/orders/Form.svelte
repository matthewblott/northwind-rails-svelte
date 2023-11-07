<script lang="ts">
  import Search from "../../components/Search.svelte";
  import Error from "../../components/Error.svelte";

  import { onMount } from "svelte";

  export let disabled = false;
  export let order = {};
  export let errors = {};
  export let address = {};
  export let customer = {};
  export let employee = {};

  const addressPath = "/addresses/search";
  const customersPath = "/customers/search";
  const employeesPath = "/employees/search";

  let form;

  let addressName = address.name === undefined ? "" : address.name;

  let companyName =
    customer.company_name === undefined ? "" : customer.company_name;

  let employeeName =
    employee.first_name === undefined
      ? ""
      : employee.first_name + " " + employee.last_name;

  onMount(() => {
    form.querySelector(".order-date").value = order.order_date.substr(0, 10);

    form.querySelector(".shipped-date").value = order.shipped_date?.substr(
      0,
      10
    );
    form.querySelector(".paid-date").value = order.paid_date?.substr(0, 10);
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
      <Error value={errors.order_date} />
    </div>
    <div>
      <span>Address</span>
      <Search
        path={addressPath}
        display={addressName}
        bind:value={order.address_id}
      />
      <Error value={errors.address_id} />
    </div>
    <div>
      <label
        >Shipped Date <input
          class="shipped-date"
          type="date"
          bind:value={order.shipped_date}
        /></label
      >
      {#if errors.shipped_date}<span>{errors.shipped_date}</span>{/if}
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
      <label
        >Paid Date <input
          class="paid-date"
          type="date"
          bind:value={order.paid_date}
        /></label
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
