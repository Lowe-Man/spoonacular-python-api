package com.spoonacular.client.model

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import spoonacular._
import java.math.BigDecimal

/**
 * 
 * @param id 
 * @param title 
 * @param averageRating 
 * @param description 
 * @param imageUrl 
 * @param link 
 * @param price 
 * @param ratingCount 
 * @param score 
 */
case class InlineResponse20044ProductMatches(id: Int,
                title: String,
                averageRating: BigDecimal,
                description: Option[Object],
                imageUrl: String,
                link: String,
                price: String,
                ratingCount: Int,
                score: BigDecimal
                )

object InlineResponse20044ProductMatches {
    /**
     * Creates the codec for converting InlineResponse20044ProductMatches from and to JSON.
     */
    implicit val decoder: Decoder[InlineResponse20044ProductMatches] = deriveDecoder
    implicit val encoder: ObjectEncoder[InlineResponse20044ProductMatches] = deriveEncoder
}
