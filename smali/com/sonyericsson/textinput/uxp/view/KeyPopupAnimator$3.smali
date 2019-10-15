.class Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$3;
.super Ljava/lang/Object;
.source "KeyPopupAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->animateCandidateView(IIILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$3;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 224
    .local v1, "value":F
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$3;->val$view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$3;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 226
    .local v0, "parameters":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 227
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$3;->val$view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    .end local v0    # "parameters":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method
