.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardBase;
.super Ljava/lang/Object;
.source "KeyboardBase.java"


# instance fields
.field protected mKeyBackgroundId:I

.field protected mKeyLabelStyleId:I

.field protected mKeyLargeLabelStyleId:I

.field protected mKeyPreviewLabelStyleId:I

.field protected mKeySmallLabelStyleId:I

.field protected mKeyVerySmallLabelStyleId:I

.field protected mKeyVerySmallPreviewLabelStyleId:I

.field protected mKeyVeryVerySmallLabelStyleId:I

.field protected mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 0
    .param p1, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardBase;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 35
    return-void
.end method
