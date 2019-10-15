.class Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;
.super Ljava/lang/Object;
.source "CandidateBarController.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CandidateViewAccessManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager$DelayedCandidateBarUpdate;
    }
.end annotation


# instance fields
.field private mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

.field private final mPendingCandidateBarUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager$DelayedCandidateBarUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateState:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)V
    .locals 1
    .param p1, "candidateView"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mPendingCandidateBarUpdates:Ljava/util/ArrayList;

    .line 296
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;->IDLE:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mUpdateState:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    .line 299
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .line 300
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setCandidateSelectionDoneListener(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ICandidateChangeDoneListener;)V

    .line 301
    return-void
.end method

.method private endCandidateSelection()V
    .locals 3

    .prologue
    .line 363
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;->IDLE:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mUpdateState:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    .line 365
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mPendingCandidateBarUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager$DelayedCandidateBarUpdate;

    .line 366
    .local v0, "delayedCandidateBarUpdate":Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager$DelayedCandidateBarUpdate;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager$DelayedCandidateBarUpdate;->performUpdate(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;)V

    goto :goto_0

    .line 368
    .end local v0    # "delayedCandidateBarUpdate":Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager$DelayedCandidateBarUpdate;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mPendingCandidateBarUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 369
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mPendingCandidateBarUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    return-void
.end method

.method public onCandidatesChangeDone()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->endCandidateSelection()V

    .line 360
    return-void
.end method

.method public setExploreByTouch(Z)V
    .locals 2
    .param p1, "exploreByTouch"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mUpdateState:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;->SELECT:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setExploreByTouch set in wrong state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setExploreByTouch(Z)V

    .line 313
    return-void
.end method

.method public setNewCandidates(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V
    .locals 2
    .param p1, "candidateBarItemsInfo"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mUpdateState:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;->SELECT:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;->NEW:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mUpdateState:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->setNewCandidates(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    .line 337
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mPendingCandidateBarUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mPendingCandidateBarUpdates:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager$DelayedCandidateBarUpdate;

    invoke-direct {v1, p1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager$DelayedCandidateBarUpdate;-><init>(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startSelection(ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "reason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mUpdateState:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;->SELECT:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->endCandidateSelection()V

    .line 350
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;->SELECT:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mUpdateState:Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateUpdateState;

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$CandidateViewAccessManager;->mCandidateView:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->startSelectingCandidate(ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V

    .line 352
    return-void
.end method
