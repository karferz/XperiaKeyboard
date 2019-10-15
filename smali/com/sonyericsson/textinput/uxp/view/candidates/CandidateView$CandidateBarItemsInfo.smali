.class public Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;
.super Ljava/lang/Object;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidateBarItemsInfo"
.end annotation


# instance fields
.field private final mActiveCandidateIndex:I

.field private final mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

.field private final mChangeReason:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

.field private final mComposingTextLength:I

.field private final mDirection:I

.field private final mHighlightedCandidateIndex:I


# direct methods
.method public constructor <init>([Lcom/sonyericsson/ned/model/CodePointString;IIIILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V
    .locals 0
    .param p1, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activeCandidateIndex"    # I
    .param p3, "highlightedCandidateIndex"    # I
    .param p4, "direction"    # I
    .param p5, "composingTextLength"    # I
    .param p6, "changeReason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1281
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 1282
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mActiveCandidateIndex:I

    .line 1283
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mHighlightedCandidateIndex:I

    .line 1284
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mDirection:I

    .line 1285
    iput p5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mComposingTextLength:I

    .line 1286
    iput-object p6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mChangeReason:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .line 1287
    return-void
.end method


# virtual methods
.method public getActiveCandidateIndex()I
    .locals 1

    .prologue
    .line 1305
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mActiveCandidateIndex:I

    return v0
.end method

.method public getCandidates()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method public getChangeReason()Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mChangeReason:Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    return-object v0
.end method

.method public getComposingTextLength()I
    .locals 1

    .prologue
    .line 1332
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mComposingTextLength:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 1323
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mDirection:I

    return v0
.end method

.method public getHighlightedCandidateIndex()I
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mHighlightedCandidateIndex:I

    return v0
.end method

.method public isClearCandidates()Z
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateBarItemsInfo;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
