.class Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;
.super Ljava/lang/Object;
.source "CandidateViewContainer.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$OnCandidateViewInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowMoreCandidates()V
    .locals 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->access$100(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->access$000(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getCandidateList()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .line 104
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .line 105
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->getPaddingEnd()I

    move-result v4

    .line 103
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->setSuggestions(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;III)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->access$200(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;->MAIN_AREA:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyboardDimAndDisabledState(ZLcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$EnabledStatusEffectedArea;)V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;->this$0:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->access$200(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1$1;-><init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    return-void
.end method
