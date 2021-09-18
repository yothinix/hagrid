import type { EndpointOutput } from '@sveltejs/kit';

export async function get(): Promise<EndpointOutput> {
	const res =  await fetch('http://localhost:4000/events');
  const data = await res.json();

  return { body: data };
}