.class Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputConnectionManager"
.end annotation


# instance fields
.field private final mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;)V
    .locals 0
    .param p2, "inputConnectionWrapperCached"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->this$0:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    .line 1078
    return-void
.end method

.method private noteExtractedText(Landroid/view/inputmethod/ExtractedText;)Landroid/view/inputmethod/ExtractedText;
    .locals 4
    .param p1, "extractedText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 1105
    if-eqz p1, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->this$0:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->access$100(Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;)Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    move-result-object v0

    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v3, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->updateCursor(II)V

    .line 1110
    :cond_0
    return-object p1
.end method


# virtual methods
.method public beginBatchEdit(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->beginBatchEdit(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "completionInfo"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->commitCompletion(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitCorrection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->commitCorrection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitCorrectionExtracted(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->commitCorrectionExtracted(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method public commitText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->commitText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->deleteSurroundingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->endBatchEdit(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    move-result v0

    return v0
.end method

.method public finishComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->finishComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    move-result v0

    return v0
.end method

.method public getCurrentComposingSpanString()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getCurrentComposingSpanString()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtractedText()Landroid/view/inputmethod/ExtractedText;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->noteExtractedText(Landroid/view/inputmethod/ExtractedText;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    return-object v0
.end method

.method public getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->noteExtractedText(Landroid/view/inputmethod/ExtractedText;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    return-object v0
.end method

.method public getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->noteExtractedText(Landroid/view/inputmethod/ExtractedText;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    return-object v0
.end method

.method public getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    return-object v0
.end method

.method public getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "expectedLength"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "expectedLength"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public refreshCursorPosition()V
    .locals 0

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    .line 1087
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 1082
    return-void
.end method

.method public sendKeyCodeDelete()V
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->sendKeyCodeDelete()V

    .line 1185
    return-void
.end method

.method public setComposingRegion(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->setComposingRegion(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z

    move-result v0

    return v0
.end method

.method public setComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/text/SpannableString;I)Z
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "text"    # Landroid/text/SpannableString;
    .param p3, "newCursorPosition"    # I

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->setComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/text/SpannableString;I)Z

    move-result v0

    return v0
.end method

.method public setSelection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z
    .locals 1
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->setSelection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z

    move-result v0

    return v0
.end method
