# Simple Mega Menu (DDR Menu, Razor)

This is a basic example of a mega menu built with the DNN DDR Menu and a Razor template. It's kept simple on purpose: a starting point for your own mega menu, not a finished design.

## How it works

- The top-level pages form the menu bar.
- When you hover over a top-level page, a panel opens with its sub-pages.
- Each level 1 page becomes a column in the panel, and its own sub-pages are listed under it.
- Pages that have a large image set in DNN appear as a small card with that image.

The panel is opened and animated with CSS only. There is no JavaScript.

## Files

- `Menus/30.02-Demo-Skin-DDR-MegaMenu/Template.cshtml`: the Razor template that writes the menu HTML.
- `30.02-Demo-Skin-DDR-MegaMenu.css`: the mega menu styling.

## Styling with CSS variables

All colours, spacing, the number of columns and the animation speed are CSS variables, set at the top of the stylesheet. To restyle the menu, override them in your theme without changing the file:

```css
.fortyfingers-megamenu {
    --mm-panel-columns: 4;
    --mm-panel-bg: #fff;
    --mm-top-active-bg: #f0f0f0;
}
```

## Classes you can use

The template adds classes so you can style the menu without changing the template:

- `level-0`, `level-1`, `level-2`: the level of a page in the menu, on the `li`, the `ul` and the item wrapper.
- `has-children` / `no-children`: whether a page has sub-pages.
- `selected`, `breadcrumb`, `parent-selected`: the current page and the pages above it.
- `first` / `last`: the first and last page in a list.
- `item-wrapper`, `item-link`, `item-text`, `item-icon`, `item-image`: the parts of each menu item.

## Good to know

This example only opens on mouse hover, so it doesn't work yet on touch screens or with the keyboard. For a production site you'd add a toggle button for those users. The `item-wrapper` is already in place for that.

## Need a custom version?

If you need a custom version of this mega menu for your site, feel free to contact us at [40FINGERS](https://www.40fingers.net).
