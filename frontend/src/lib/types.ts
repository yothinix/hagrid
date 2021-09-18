export interface Habit {
	id: number;
	name: string;
	category: string;
}

export interface Event {
	id: number;
	habit: Habit;
	created_at: string;
}
