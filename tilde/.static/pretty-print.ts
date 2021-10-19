const prettyPrint = <T>(value: T, label?: string) => {
  console.log(`${label ? `${label} = ` : ''}${JSON.stringify(value, null, 2)}`);
};
