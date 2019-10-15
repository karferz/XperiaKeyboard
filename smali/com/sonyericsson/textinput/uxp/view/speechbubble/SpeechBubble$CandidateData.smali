.class Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;
.super Ljava/lang/Object;
.source "SpeechBubble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CandidateData"
.end annotation


# instance fields
.field public final mLeft:I

.field public final mLeftPadding:I

.field public final mRight:I

.field public final mRightPadding:I

.field public final mText:Lcom/sonyericsson/ned/model/CodePointString;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/ned/model/CodePointString;IIII)V
    .locals 0
    .param p1, "item"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "leftPadding"    # I
    .param p5, "rightPadding"    # I

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mText:Lcom/sonyericsson/ned/model/CodePointString;

    .line 334
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mLeft:I

    .line 335
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mRight:I

    .line 336
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mLeftPadding:I

    .line 337
    iput p5, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mRightPadding:I

    .line 338
    return-void
.end method


# virtual methods
.method public getLeft()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mLeft:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mRight:I

    return v0
.end method

.method public getTextPos(I)F
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 341
    if-lez p1, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mLeft:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mLeftPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mRight:I

    neg-int v0, v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mRightPadding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 345
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mRight:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/speechbubble/SpeechBubble$CandidateData;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method
