const getCookie = (name) => {
  const re = new RegExp(`${name}=([^;]+)`);
  const value = re.exec(document.cookie);
  return (value != null) ? decodeURIComponent(value[1]) : null;
}

Date.prototype.toYMDString = function() {
  return this.toISOString().split('T')[0];
}

const MyDate = Date;

export { getCookie, MyDate };
