.class Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$CustomKeyboardTemplateInflater;
.super Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;
.source "KeyboardBitmapCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomKeyboardTemplateInflater"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bottomRowSettings"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;
    .param p3, "screenSize"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected getCurrentOrientation()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$CustomKeyboardTemplateInflater;->ORIENTATION_PORTRAIT:I

    return v0
.end method
