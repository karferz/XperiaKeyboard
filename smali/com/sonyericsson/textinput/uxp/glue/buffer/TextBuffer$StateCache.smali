.class Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateCache"
.end annotation


# instance fields
.field private final mComposingText:Ljava/lang/StringBuffer;

.field private mCursorEnd:I

.field private mCursorStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mComposingText:Ljava/lang/StringBuffer;

    .line 983
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->updateCursor(II)V

    .line 984
    return-void
.end method


# virtual methods
.method public clearComposing()V
    .locals 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mComposingText:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1047
    return-void
.end method

.method public getComposing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mComposingText:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComposingLength()I
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mComposingText:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public getCursorEnd()I
    .locals 1

    .prologue
    .line 991
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mCursorEnd:I

    return v0
.end method

.method public getCursorStart()I
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mCursorStart:I

    return v0
.end method

.method public resetCursor()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1010
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mCursorStart:I

    .line 1011
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mCursorEnd:I

    .line 1012
    return-void
.end method

.method public setComposing(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "composingText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mComposingText:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1035
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mComposingText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1040
    return-void
.end method

.method public setComposingLength(I)V
    .locals 1
    .param p1, "newLength"    # I

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mComposingText:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1024
    return-void
.end method

.method public updateCursor(I)V
    .locals 0
    .param p1, "selStartAndEnd"    # I

    .prologue
    .line 995
    invoke-virtual {p0, p1, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->updateCursor(II)V

    .line 996
    return-void
.end method

.method public updateCursor(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    const/4 v0, -0x1

    .line 1002
    if-ltz p1, :cond_0

    .end local p1    # "selStart":I
    :goto_0
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mCursorStart:I

    .line 1003
    if-ltz p2, :cond_1

    .end local p2    # "selEnd":I
    :goto_1
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->mCursorEnd:I

    .line 1004
    return-void

    .restart local p1    # "selStart":I
    .restart local p2    # "selEnd":I
    :cond_0
    move p1, v0

    .line 1002
    goto :goto_0

    .end local p1    # "selStart":I
    :cond_1
    move p2, v0

    .line 1003
    goto :goto_1
.end method
