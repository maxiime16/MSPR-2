const Joi = require('joi');

const uploadImageSchema = Joi.object({
    advertisementId: Joi.number().integer().required(),
    image: Joi.string().required()
});

module.exports = uploadImageSchema;