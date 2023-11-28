<script lang="ts">
  import DateField from "../../components/DateField.svelte";
  import Search from "../../components/Search.svelte";
  import AddressField from "./AddressField.svelte";

  export let disabled = false;
  export let order = {};
  export let errors = {};
  export let address = {};
  export let customer = {};
  export let employee = {};

  // const addressPath = "/addresses/search";
  const customersPath = "/customers/search";
  const employeesPath = "/employees/search";

  let addressName = address.name === undefined ? "" : address.name;

  let companyName =
    customer.company_name === undefined ? "" : customer.company_name;

  let employeeName =
    employee.first_name === undefined
      ? ""
      : employee.first_name + " " + employee.last_name;
</script>

<form>
  <fieldset disabled={disabled || null}>
    <field>
      <label>Customer</label>
      <Search
        path={customersPath}
        display={companyName}
        bind:value={order.customer_id}
      />
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
      {#if errors.employee_id}
        <error class="hidden">
          {errors.employee_id}
        </error>
      {/if}
    </field>
    <DateField
      name={"Order Date"}
      bind:value={order.order_date}
      error={errors.order_date}
    />
    <AddressField
      display={addressName}
      customer_id={order.customer_id}
      bind:value={order.address_id}
    />
    <DateField
      name={"Shipped Date"}
      bind:value={order.shipped_date}
      error={errors.shipped_date}
    />
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
    <DateField
      name={"Paid Date"}
      bind:value={order.paid_date}
      error={errors.paid_date}
    />
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
