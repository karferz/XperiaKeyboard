.class public interface abstract Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
.super Ljava/lang/Object;
.source "ISizeAndScaleProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;,
        Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;
    }
.end annotation


# static fields
.field public static final NOT_INITIATED:I = -0x1


# virtual methods
.method public abstract getDefaultKeyboardHeightPx()I
.end method

.method public abstract getDistributionScalerX()Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;
.end method

.method public abstract getDistributionScalerY()Lcom/sonyericsson/textinput/uxp/model/keyboard/IScaler;
.end method

.method public abstract getKeyboardContentHeightPx()I
.end method

.method public abstract getKeyboardContentWidthPx()I
.end method

.method public abstract getKeyboardHeightPx()I
.end method

.method public abstract getKeyboardPadding()Landroid/graphics/Rect;
.end method

.method public abstract getKeyboardTotalSpanWidthPx()I
.end method

.method public abstract getKeyboardWidthPx()I
.end method

.method public abstract getLayoutXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
.end method

.method public abstract getSize(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;)I
.end method

.method public abstract getSize(Ljava/lang/String;)I
.end method

.method public abstract getSizeAndScaleProviderInitiator()Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProviderInitiator;
.end method

.method public abstract getWidthMargin()I
.end method

.method public abstract scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I
.end method
