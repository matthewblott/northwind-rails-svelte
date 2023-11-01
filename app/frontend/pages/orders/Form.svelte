<script lang="ts">
  export let order = {};
  export let errors = {};
</script>

<form>
  <div>
    <label>Customer Id <input bind:value={order.customer_id} /></label>
    {#if errors.id}<div>{errors.id}</div>{/if}
  </div>
  <div>
    <label>Employee Id <input bind:value={order.employee_id} /></label>
    {#if errors.employee_id}<div>{errors.employee_id}</div>{/if}
  </div>
  <div>
    <label>Order Date <input bind:value={order.order_date} /></label>
    {#if errors.order_date}<div>{errors.order_date}</div>{/if}
  </div>
  <div>
    <label>Shipped Date <input bind:value={order.shipped_date} /></label>
    {#if errors.shipped_date}<div>{errors.shipped_date}</div>{/if}
  </div>
  <div>
    <label>Ship Name <input bind:value={order.ship_name} /></label>
    {#if errors.ship_name}<div>{errors.ship_name}</div>{/if}
  </div>
  <div>
    <label>Ship Address1 <input bind:value={order.ship_address1} /></label>
    {#if errors.ship_address1}<div>{errors.ship_address1}</div>{/if}
  </div>
  <div>
    <label>Ship Address2 <input bind:value={order.ship_address2} /></label>
    {#if errors.ship_address2}<div>{errors.ship_address2}</div>{/if}
  </div>
  <div>
    <label>Ship City <input bind:value={order.ship_city} /></label>
    {#if errors.ship_city}<div>{errors.ship_city}</div>{/if}
  </div>
  <div>
    <label>Ship State <input bind:value={order.ship_state} /></label>
    {#if errors.ship_state}<div>{errors.ship_state}</div>{/if}
  </div>
  <div>
    <label>Ship Postal Code <input bind:value={order.ship_postal_code} /></label
    >
    {#if errors.ship_postal_code}<div>{errors.ship_postal_code}</div>{/if}
  </div>
  <div>
    <label>Ship Country <input bind:value={order.ship_country} /></label>
    {#if errors.ship_country}<div>{errors.ship_country}</div>{/if}
  </div>
  <div>
    <label>Shipping Fee <input bind:value={order.shipping_fee} /></label>
    {#if errors.shipping_fee}<div>{errors.shipping_fee}</div>{/if}
  </div>
  <div>
    <label>Payment Type <input bind:value={order.payment_type} /></label>
    {#if errors.payment_type}<div>{errors.payment_type}</div>{/if}
  </div>
  <div>
    <label>Paid Date <input bind:value={order.paid_date} /></label>
    {#if errors.paid_date}<div>{errors.paid_date}</div>{/if}
  </div>
  <div>
    <label>Order Status <input bind:value={order.order_status} /></label>
    {#if errors.order_status}<div>{errors.order_status}</div>{/if}
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
