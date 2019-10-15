.class Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$TranslateAnimatorListener;
.super Ljava/lang/Object;
.source "KeyCandidateTextItem.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslateAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$TranslateAnimatorListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$1;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$TranslateAnimatorListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 155
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem$TranslateAnimatorListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;->access$200(Lcom/sonyericsson/textinput/uxp/view/KeyCandidateTextItem;)V

    .line 151
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 159
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 146
    return-void
.end method
