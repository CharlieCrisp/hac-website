import Foundation
import Yaml

/// Represents a workshop
// TODO: Rename this struct to `Workshop` when it's ready for use
public struct NewWorkshop {
  let title: String

  /// People that have directly contributed content to this workshop
  let contributors: [String]

  /// Non-contributors we would like to thank for helping to inspire, develop or facilitate this workshop
  let thanks: [String]

  /// Links that attendees may which to read after the workhsop
  let furtherReadingLinks: [(String, URL)]

  /// A link to a video recording of this workshop
  let recordingLink: URL?

  /// A link to any slides for this workshop
  let slidesLink: URL?

  /// A set of keywords associated with the workshop
  let tags: [String]

  /// A string of a https://spdx.org/licenses/ license identifier
  // TODO: Make a type safe version of this
  let license: String

  /// The prose content that accompanies the workshop (and slides)
  let notes: Markdown

  /// A URL of a promotional image for the workshop, to be displayed on top of `promoImageBackground`
  let promoImageForeground: URL

  /// The background for `promoImageForeground`
  let promoImageBackground: Background

  /// Prose describing the nature of the workshop
  let description: Markdown

  /// Prose describing who the workshop is aimed at
  let whoItsFor: Markdown

  /// Prose describing what attendees should already know
  let prerequisites: Markdown

  /// Prose describing how attendees should prepare for the workshop
  let setupInstructions: Markdown

  /// The URL to the workshop repository
  let repositoryURL: URL
}
