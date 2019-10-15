.class Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$2;
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
    .line 206
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$2;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 210
    .local v0, "value":F
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$2;->val$view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$2;->val$view:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 213
    :cond_0
    return-void
.end method
