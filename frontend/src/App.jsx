import React, { useEffect, useState } from "react";

export default function App() {
  const [msg, setMsg] = useState("Loading...");

  useEffect(() => {
    fetch("/api/hello")
      .then(res => res.json())
      .then(data => setMsg(data.message))
      .catch(() => setMsg("Could not reach backend"));
  }, []);

  return (
    <div style={{ fontFamily: "sans-serif", padding: 24 }}>
      <h1>Fullstack App</h1>
      <p>Backend says: <strong>{msg}</strong></p>
      <p>Some changes made</p>
    </div>
  );
}
