.class Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$1;
.super Ljava/lang/Object;
.source "KeyCandidateTextItem.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->getColorAnimation(II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->access$100(Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    return-void
.end method
