.class public interface abstract Lcom/sonyericsson/ned/model/ITextBuffer;
.super Ljava/lang/Object;
.source "ITextBuffer.java"


# virtual methods
.method public abstract beginBatchEdit()Z
.end method

.method public abstract delete(I)Z
.end method

.method public abstract endBatchEdit()Z
.end method

.method public abstract finishComposingText()Z
.end method

.method public abstract getComposingText()Lcom/sonyericsson/ned/model/CodePointString;
.end method

.method public abstract getCursorPosition()I
.end method

.method public abstract getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getText()Lcom/sonyericsson/ned/model/CodePointString;
.end method

.method public abstract insert(Lcom/sonyericsson/ned/model/CodePointString;)Z
.end method

.method public abstract reSetComposingText(I)Z
.end method

.method public abstract reSetComposingText(II)Z
.end method

.method public abstract replace(ILcom/sonyericsson/ned/model/CodePointString;)Z
.end method

.method public abstract setComposingRegionSilent(I)Z
.end method

.method public abstract setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z
.end method

.method public abstract setSelection(II)Z
.end method

.method public abstract showTextNotification(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V
.end method

.method public abstract suitableToReSetComposingText(I)Z
.end method

.method public abstract updateComposingTextSpan()V
.end method
