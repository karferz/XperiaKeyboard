.class Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager$DelayedCandidateBarUpdate;
.super Ljava/lang/Object;
.source "CandidateBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedCandidateBarUpdate"
.end annotation


# instance fields
.field private final mCandidateBarItemsInfo:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V
    .locals 0
    .param p1, "candidateBarItemsInfo"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager$DelayedCandidateBarUpdate;->mCandidateBarItemsInfo:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    .line 377
    return-void
.end method


# virtual methods
.method performUpdate(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)V
    .locals 1
    .param p1, "candidateView"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager$DelayedCandidateBarUpdate;->mCandidateBarItemsInfo:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setNewCandidates(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    .line 381
    return-void
.end method
