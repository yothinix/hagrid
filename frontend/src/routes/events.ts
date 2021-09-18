import type { EndpointOutput } from '@sveltejs/kit';

export async function get(): Promise<EndpointOutput> {
	//const res =  await fetch('http://localhost:4000/events');
  //const data = await res.json();

  //return { body: data };

  return { body: {events: [
    {
      id: 1,
      habit: {
         id: 1,
         name: "ดู netflix",
         category: "relaxing"
      },
      created_at: "12-09-21T12:34:56"
    },
    {}
  ]}}
}