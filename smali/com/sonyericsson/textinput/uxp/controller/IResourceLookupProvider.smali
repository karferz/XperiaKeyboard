.class public interface abstract Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;
.super Ljava/lang/Object;
.source "IResourceLookupProvider.java"


# static fields
.field public static final RESOURCE_CANDIDATE_BAR_HEIGHT:Ljava/lang/String; = "candidate_bar_height"

.field public static final RESOURCE_CANDIDATE_BAR_TEXT_SIZE:Ljava/lang/String; = "candidate_bar_text_size"

.field public static final RESOURCE_HIGHLIGHTED_KEY_VARIANTS_TEXT_SIZE:Ljava/lang/String; = "highlighted_key_variants_text_size"

.field public static final RESOURCE_HIGHLIGHTED_KEY_VARIANTS_TEXT_SIZE_SMALL:Ljava/lang/String; = "highlighted_key_variants_text_size_small"

.field public static final RESOURCE_KEYBOARD_AUXILIARY_ROW_HEIGHT:Ljava/lang/String; = "keyboard_auxiliary_row_height"

.field public static final RESOURCE_KEYBOARD_BOTTOM_PADDING:Ljava/lang/String; = "keyboard_bottom_padding"

.field public static final RESOURCE_KEYBOARD_DEFAULT_HEIGHT:Ljava/lang/String; = "keyboard_default_height"

.field public static final RESOURCE_KEYBOARD_LEFT_PADDING:Ljava/lang/String; = "keyboard_left_padding"

.field public static final RESOURCE_KEYBOARD_MAX_PERCENTAGE_HEIGHT:Ljava/lang/String; = "keyboard_max_height"

.field public static final RESOURCE_KEYBOARD_MINI_AND_SPLIT_HEIGHT:Ljava/lang/String; = "keyboard_height"

.field public static final RESOURCE_KEYBOARD_MINI_AND_SPLIT_HEIGHT_WITH_NUMERIC:Ljava/lang/String; = "num_keyboard_height"

.field public static final RESOURCE_KEYBOARD_MIN_PERCENTAGE_HEIGHT:Ljava/lang/String; = "keyboard_min_height"

.field public static final RESOURCE_KEYBOARD_RIGHT_PADDING:Ljava/lang/String; = "keyboard_right_padding"

.field public static final RESOURCE_KEYBOARD_WIDTH:Ljava/lang/String; = "keyboard_width"

.field public static final RESOURCE_KEYBOARD_WIDTH_MARGIN:Ljava/lang/String; = "keyboard_width_margin"

.field public static final RESOURCE_KEY_BOTTOM_GAP_3ROWS:Ljava/lang/String; = "key_bottom_gap_3rows"

.field public static final RESOURCE_KEY_BOTTOM_GAP_4ROWS:Ljava/lang/String; = "key_bottom_gap_4rows"

.field public static final RESOURCE_KEY_LEFT_GAP:Ljava/lang/String; = "key_left_gap"

.field public static final RESOURCE_KEY_RIGHT_GAP:Ljava/lang/String; = "key_right_gap"

.field public static final RESOURCE_KEY_TOP_GAP_3ROWS:Ljava/lang/String; = "key_top_gap_3rows"

.field public static final RESOURCE_KEY_TOP_GAP_4ROWS:Ljava/lang/String; = "key_top_gap_4rows"

.field public static final RESOURCE_KEY_VARIANTS_CANDIDATE_MIN_WIDTH:Ljava/lang/String; = "key_variants_candidate_min_width"

.field public static final RESOURCE_KEY_VARIANTS_TEXT_SIZE:Ljava/lang/String; = "key_variants_text_size"

.field public static final RESOURCE_KEY_VARIANTS_TEXT_SIZE_SMALL:Ljava/lang/String; = "key_variants_text_size_small"

.field public static final RESOURCE_LONG_PRESS_PREVIEW_HEIGHT:Ljava/lang/String; = "long_press_preview_height"


# virtual methods
.method public abstract getDimensionPixelOffset(Ljava/lang/String;)I
.end method

.method public abstract getFloat(Ljava/lang/String;)F
.end method

.method public abstract getFraction(Ljava/lang/String;II)F
.end method

.method public abstract getId(I)I
.end method

.method public abstract getLayoutXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
.end method
