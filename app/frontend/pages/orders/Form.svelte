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
  <fieldset disabled={disabled || null} class="auto-grid">
    <field>
      <label>Customer</label>
      <Search
        path={customersPath}
        display={companyName}
        bind:value={order.customer_id}
      />

      <!-- <Error value={errors.customer_id} /> -->
      {#if errors.customer_id}
        <error class="hidden">
          {errors.customer_id}
        </error>
      {/if}
    </field>
    <field>
      <label>Employee</label>
      <Search
        path={employeesPath}
        display={employeeName}
        bind:value={order.employee_id}
      />
      <Error value={errors.employee_id} />
    </field>
    <field>
      <label>Order Date</label>
      <input type="date" bind:value={order.order_date} class="order-date" />
      {#if errors.order_date}
        <error class="hidden">
          {errors.order_date}
        </error>
      {/if}
    </field>
    <field>
      <label>Address</label>
      <Search
        path={addressPath}
        display={addressName}
        bind:value={order.address_id}
      />
      <Error value={errors.address_id} />
    </field>
    <field>
      <label>Shipped Date</label>
      <input type="date" bind:value={order.shipped_date} class="shipped-date" />
      {#if errors.shipped_date}
        <error class="hidden">
          {errors.shipped_date}
        </error>
      {/if}
    </field>
    <field>
      <label>Shipping Fee</label>
      <input bind:value={order.shipping_fee} />
      {#if errors.shipping_fee}
        <error class="hidden">
          {errors.shipping_fee}
        </error>
      {/if}
    </field>
    <field>
      <label>Payment Type</label>
      <input bind:value={order.payment_type} />
      {#if errors.payment_type}
        <error class="hidden">
          {errors.payment_type}
        </error>
      {/if}
    </field>
    <field>
      <label>Paid Date</label>
      <input type="date" bind:value={order.paid_date} class="paid-date" />
      {#if errors.paid_date}
        <error class="hidden">
          {errors.paid_date}
        </error>
      {/if}
    </field>
    <field>
      <label>Status</label>
      <input bind:value={order.status} />
      {#if errors.status}
        <error class="hidden">
          {errors.status}
        </error>
      {/if}
    </field>
  </fieldset>
</form>
