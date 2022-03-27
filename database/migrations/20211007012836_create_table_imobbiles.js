
exports.up = function (knex) {
    return knex.schema
        .createTable('properties', function (table) {
            table.uuid('id').primary().defaultTo(knex.raw("(UUID())"));
            table.uuid('user_id')
                .references('users.id')
                .onUpdate('CASCADE')
                .onDelete('CASCADE');
            table.uuid('property_type_id')
                .references('properties_types.id')
                .onUpdate('CASCADE')
                .onDelete('CASCADE');
            table.string('ad_title', 200).notNullable();
            table.text('ad_description').notNullable();
            table.float('ad_value').notNullable();
            table.float('room_quantity').notNullable();
            table.float('bathroom_quantity').notNullable();
            table.string('property_adress', 200).notNullable();
            table.string('property_country', 200).notNullable();
            table.string('property_city', 200);
            table.string('property_state', 200);
            table.boolean('with_furniture').defaultTo('false');
            table.boolean('accepts_pets').defaultTo('false');
            table.timestamp('created_at').defaultTo(knex.fn.now());
            table.timestamp('updated_at').defaultTo(knex.fn.now());
        })
};

exports.down = function (knex) {
    return knex.schema
        .dropTable('properties');
};
