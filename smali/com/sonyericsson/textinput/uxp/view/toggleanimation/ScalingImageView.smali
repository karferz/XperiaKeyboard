.class public Lcom/sonyericsson/textinput/uxp/view/toggleanimation/ScalingImageView;
.super Landroid/widget/ImageView;
.source "ScalingImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/ScalingImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 20
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/view/toggleanimation/ScalingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    return-void
.end method
