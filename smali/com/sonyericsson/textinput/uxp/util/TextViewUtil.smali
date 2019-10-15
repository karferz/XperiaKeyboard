.class public final Lcom/sonyericsson/textinput/uxp/util/TextViewUtil;
.super Ljava/lang/Object;
.source "TextViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static setTextAppearance(Landroid/widget/TextView;Landroid/content/Context;I)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appearance"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isMarshmallowOrNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method
