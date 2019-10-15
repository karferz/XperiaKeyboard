.class public Lcom/sonyericsson/textinput/uxp/test/TestService$CandidateBarUtil;
.super Ljava/lang/Object;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidateBarUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCandidatePositionInBar(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;I)Landroid/graphics/Point;
    .locals 7
    .param p0, "candidateView"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    .param p1, "viewList"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;
    .param p2, "index"    # I

    .prologue
    .line 555
    invoke-virtual {p1, p2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getCandidateWidth(I)I

    move-result v0

    .line 556
    .local v0, "candidateWidth":I
    invoke-virtual {p1, p2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getCandidateX(I)I

    move-result v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    .line 557
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getScrollX()I

    move-result v5

    sub-int v2, v4, v5

    .line 558
    .local v2, "relativeX":I
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getHeight()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 559
    .local v3, "relativeY":I
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 560
    .local v1, "location":[I
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getLocationOnScreen([I)V

    .line 561
    new-instance v4, Landroid/graphics/Point;

    const/4 v5, 0x0

    aget v5, v1, v5

    add-int/2addr v5, v2

    const/4 v6, 0x1

    aget v6, v1, v6

    add-int/2addr v6, v3

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method

.method public static declared-synchronized getVisualCandidates(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;)Ljava/util/List;
    .locals 11
    .param p0, "candidateView"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    .param p1, "moreCandidatesPopup"    # Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;",
            "Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/test/TestKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    const-class v10, Lcom/sonyericsson/textinput/uxp/test/TestService$CandidateBarUtil;

    monitor-enter v10

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v7, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->getCandidateList()Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;

    move-result-object v6

    .line 536
    .local v6, "candidateList":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualNumberOfCandidates()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 537
    invoke-virtual {v6, v8}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "name":Ljava/lang/String;
    invoke-static {p0, v6, v8}, Lcom/sonyericsson/textinput/uxp/test/TestService$CandidateBarUtil;->getCandidatePositionInBar(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;I)Landroid/graphics/Point;

    move-result-object v9

    .line 540
    .local v9, "position":Landroid/graphics/Point;
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestKey;

    iget v3, v9, Landroid/graphics/Point;->x:I

    iget v4, v9, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/test/TestKey;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 542
    .end local v1    # "name":Ljava/lang/String;
    .end local v9    # "position":Landroid/graphics/Point;
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->getVisibleNumberOfCandidates()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 545
    invoke-virtual {p1, v8}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->getCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 546
    .restart local v1    # "name":Ljava/lang/String;
    invoke-virtual {p1, v8}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->getCandidatePosition(I)Landroid/graphics/Point;

    move-result-object v9

    .line 547
    .restart local v9    # "position":Landroid/graphics/Point;
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestKey;

    iget v3, v9, Landroid/graphics/Point;->x:I

    iget v4, v9, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/test/TestKey;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 550
    .end local v1    # "name":Ljava/lang/String;
    .end local v9    # "position":Landroid/graphics/Point;
    :cond_1
    monitor-exit v10

    return-object v7

    .line 534
    .end local v6    # "candidateList":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;
    .end local v7    # "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/test/TestKey;>;"
    .end local v8    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method
