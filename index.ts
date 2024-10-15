import { PrismaClient as Prisma } from '@prisma/client';
import { enhance } from '@zenstackhq/runtime';

const prisma = new Prisma();
const db = enhance(
    prisma,
    {},
    {
        kinds: ['delegate'],
    }
);

async function main() {
    const newPost = await db.concretePost.create({
        data: {
            id: 5,
            name: 'a name',
            age: 20,
        },
    });
    const posts = await db.post.findMany({});
    console.log('posts', posts);
}

main();
