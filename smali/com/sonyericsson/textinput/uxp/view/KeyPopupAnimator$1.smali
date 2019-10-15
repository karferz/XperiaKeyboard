.class Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$1;
.super Ljava/lang/Object;
.source "KeyPopupAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;->setupAlphaAnimations(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

.field final synthetic val$current:I

.field final synthetic val$views:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$1;->val$views:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$1;->val$current:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 88
    .local v0, "value":F
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$1;->val$views:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$1;->val$views:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyPopupAnimator$1;->val$current:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 94
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method
