.class final Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongpressRunnable"
.end annotation


# instance fields
.field private final mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

.field private mVisualCandidate:I


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)V
    .locals 0
    .param p1, "candidateView"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .prologue
    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .line 966
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$1;

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;
    .param p1, "x1"    # I

    .prologue
    .line 959
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mVisualCandidate:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 970
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$200(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->hasMoreCandidates()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .line 972
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->isShowingMoreCandidates()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getCandidateList()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    move-result-object v0

    .line 973
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getHighlightedIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 975
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$300(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)V

    .line 976
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-static {v0, v7}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$402(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Z)Z

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-virtual {v0, v7}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setShowingMoreCandidates(Z)V

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$600(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Lcom/sonyericsson/ned/controller/IBurstHandler;

    move-result-object v0

    new-array v1, v7, [Lcom/sonyericsson/ned/controller/EventObject;

    const/4 v2, 0x0

    new-instance v3, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "remove-candidate"

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .line 982
    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$500(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mVisualCandidate:I

    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 980
    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$LongpressRunnable;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-static {v0, v7}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->access$402(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Z)Z

    goto :goto_0
.end method
