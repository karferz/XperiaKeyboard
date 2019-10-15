.class Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable$1;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->fireCandidateChangeDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->access$1000(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$1100(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->access$1000(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$1200(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable$1;->this$1:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;->access$1000(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateRunnable;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$1200(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;->onCandidatesChangeDone()V

    .line 1424
    :cond_0
    return-void
.end method
