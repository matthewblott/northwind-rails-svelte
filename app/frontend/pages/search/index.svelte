<script lang="ts">
  import { router } from "@inertiajs/svelte";
  import { inertia } from "@inertiajs/svelte";

  let employeeCount = 0;
  let employeeId = 0;
  export let employees = [];

  let customerCount = 0;
  let customerId = "";
  export let customers = [];

  const employeeKeyup = (e) => {
    const search = e.target.value;

    const data = {
      search,
    };

    const timeout = setTimeout(() => {
      if (search.length === 0) {
        employeeCount = 0;
        employees = [];
        return;
      }

      if (search.length < 2) {
        employeeCount = 0;
        return;
      }

      router.post("/search/employee", data, {
        onSuccess: (page) => {
          console.log(page);
          employeeCount = page.props.employees.length;
          employees = page.props.employees;
        },
        onError: (errors) => {
          console.log(errors);
        },
      });
    }, 500);
  };

  const click = (e) => {
    employeeId = e.target.querySelector("span").innerText;
  };

  const customerKeyup = (e) => {
    const search = e.target.value;

    const data = {
      search,
    };

    const timeout = setTimeout(() => {
      if (search.length === 0) {
        customerCount = 0;
        customers = [];
        return;
      }

      if (search.length < 2) {
        customerCount = 0;
        return;
      }

      router.post("/search/customer", data, {
        onSuccess: (page) => {
          console.log(page);
          customerCount = page.props.customers.length;
          customers = page.props.customers;
        },
        onError: (errors) => {
          console.log(errors);
        },
      });
    }, 500);
  };

  const customerClick = (e) => {
    customerId = e.target.querySelector("span").innerText;
  };
</script>

<div>
  <input on:keyup={employeeKeyup} placeholder="search" />
  <span>{employeeId}</span>
</div>

<ul>
  {#each employees as employee}
    <li on:click={click}>
      <span>
        {employee.first_name}
        {employee.last_name}
        <span hidden>{employee.id}</span>
      </span>
    </li>
  {/each}
</ul>

<div>
  <input on:keyup={customerKeyup} placeholder="search" />
  <span>{customerId}</span>
</div>

<ul>
  {#each customers as customer}
    <li on:click={customerClick}>
      <span>
        {customer.id}
        {customer.company_name}
        <span hidden>{customer.id}</span>
      </span>
    </li>
  {/each}
</ul>

<style>
  li {
    padding-right: 5px;
    cursor: pointer;
  }
</style>
