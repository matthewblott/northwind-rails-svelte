const getCookie = (name) => {
  const re = new RegExp(`${name}=([^;]+)`);
  const value = re.exec(document.cookie);
  return (value != null) ? decodeURIComponent(value[1]) : null;
}

export { getCookie };
