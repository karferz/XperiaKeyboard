.class Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1$1;
.super Ljava/lang/Object;
.source "CandidateViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;->onShowMoreCandidates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->access$300(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;)V

    .line 114
    :cond_0
    return v1
.end method
