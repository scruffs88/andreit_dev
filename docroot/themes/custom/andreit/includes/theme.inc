<?php

/**
 * @file
 * Custom theme hooks.
 */

/**
 * Implements hook_page_attachments_alter().
 */
function andreit_page_attachments_alter(&$attachments) {
  if (\Drupal::service('path.matcher')->isFrontPage()) {
    $attachments['#attached']['library'][] = 'andreit/slider';
  }
}

/**
 * Implements hook_preprocess_html().
 */
function andreit_preprocess_html(&$variables) {
  if ($node = \Drupal::request()->attributes->get('node')) {
    $variables['attributes']['class'][] = 'page-node-' . $node->id();
  }
}
