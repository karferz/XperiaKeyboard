.class public interface abstract Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
.super Ljava/lang/Object;
.source "ISkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;
    }
.end annotation


# virtual methods
.method public abstract getAccentColor(I)I
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
.end method

.method public abstract getAccentColor(Landroid/content/Context;I)I
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end method

.method public abstract getBackgroundDrawable(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end method

.method public abstract getColor(I)I
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
.end method

.method public abstract getColorStateList(I)Landroid/content/res/ColorStateList;
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
.end method

.method public abstract getDrawable(I)Landroid/graphics/drawable/Drawable;
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end method

.method public abstract getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end method

.method public abstract getDrawableId(I)I
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getStyleId(I)I
.end method
