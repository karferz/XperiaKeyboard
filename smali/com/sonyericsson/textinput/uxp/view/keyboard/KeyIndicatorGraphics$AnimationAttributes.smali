.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;
.super Ljava/lang/Object;
.source "KeyIndicatorGraphics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationAttributes"
.end annotation


# static fields
.field public static final STAY_FOREVER:F = 1000000.0f


# instance fields
.field public final glowDrawableResId:I

.field public final lightDownDuration:F

.field public final lightStayDuration:F

.field public final lightUpDuration:F

.field public final repeatCount:I

.field public final startupDelay:F


# direct methods
.method public constructor <init>(IFFFFI)V
    .locals 0
    .param p1, "glowDrawableResId"    # I
    .param p2, "startupDelay"    # F
    .param p3, "lightUpDuration"    # F
    .param p4, "lightStayDuration"    # F
    .param p5, "lightDownDuration"    # F
    .param p6, "repeatCount"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->glowDrawableResId:I

    .line 172
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->startupDelay:F

    .line 173
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->lightUpDuration:F

    .line 174
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->lightStayDuration:F

    .line 175
    iput p5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->lightDownDuration:F

    .line 176
    iput p6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyIndicatorGraphics$AnimationAttributes;->repeatCount:I

    .line 177
    return-void
.end method
