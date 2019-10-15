.class final Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VietnameseHandler"
.end annotation


# static fields
.field private static final CHARS_BEFORE_CURSOR:I = 0x64

.field private static final CONTEXT_SIZE:I = 0x1

.field private static final REMOVE_LAST_INDEX_BUFFER_DIFF_SIZE:I = -0x1


# instance fields
.field mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

.field private mVietnameseComposingLength:I

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V
    .locals 1

    .prologue
    .line 3232
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3233
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mVietnameseComposingLength:I

    .line 3234
    return-void
.end method

.method private getCurrentWord(Lcom/touchtype_fluency/ContextCurrentWord;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "contextCurrentWord"    # Lcom/touchtype_fluency/ContextCurrentWord;

    .prologue
    .line 3286
    invoke-virtual {p1}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method private getLastWord(Lcom/touchtype_fluency/ContextCurrentWord;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p1, "contextCurrentWord"    # Lcom/touchtype_fluency/ContextCurrentWord;

    .prologue
    const/4 v2, 0x1

    .line 3290
    invoke-virtual {p1}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v0

    .line 3291
    .local v0, "sequence":Lcom/touchtype_fluency/Sequence;
    invoke-virtual {v0, v2}, Lcom/touchtype_fluency/Sequence;->takeLast(I)Lcom/touchtype_fluency/Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 3292
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 3294
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/touchtype_fluency/Sequence;->takeLast(I)Lcom/touchtype_fluency/Sequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/Sequence;->get(I)Lcom/touchtype_fluency/Term;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    goto :goto_0
.end method

.method private getLastWordEndIndex(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 2
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "textBuffer"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 3298
    invoke-virtual {p2, p1}, Lcom/sonyericsson/ned/model/CodePointString;->lastIndexOf(Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getSpaceAndNewLineOffset(Lcom/sonyericsson/ned/model/CodePointString;)I
    .locals 2
    .param p1, "textBuffer"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 3302
    const/4 v0, 0x0

    .line 3303
    .local v0, "offset":I
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " "

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/model/CodePointString;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\n"

    .line 3304
    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/model/CodePointString;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3305
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3306
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/model/CodePointString;->substring(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object p1

    goto :goto_0

    .line 3308
    :cond_1
    return v0
.end method

.method private getTelexWithContext(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 8
    .param p1, "primaryCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 3265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/touchtype_fluency/Telex;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3267
    .local v2, "telex":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v5

    .line 3268
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3267
    invoke-static {v5}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 3269
    .local v0, "exactMatch":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    .line 3270
    .local v1, "exactMatchLength":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v5}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    sub-int v4, v5, v1

    .line 3272
    .local v4, "textLengthBeforeFutureTelex":I
    if-lez v4, :cond_0

    .line 3273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 3282
    .local v3, "telexWithContext":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    return-object v3

    .line 3280
    .end local v3    # "telexWithContext":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .restart local v3    # "telexWithContext":Lcom/sonyericsson/ned/model/CodePointString;
    goto :goto_0
.end method

.method private processVietnameseCandidate(Lcom/sonyericsson/ned/model/CodePointString;I)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 13
    .param p1, "textBuffer"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "bufferLengthDiff"    # I

    .prologue
    .line 3313
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v11

    invoke-static {v11}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isPictogram(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3315
    const/4 v11, 0x0

    iput v11, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mVietnameseComposingLength:I

    .line 3316
    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 3374
    :goto_0
    return-object v2

    .line 3347
    :cond_0
    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v11}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v11

    .line 3348
    invoke-interface {v11}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v10

    .line 3349
    .local v10, "tokenizer":Lcom/touchtype_fluency/Tokenizer;
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 3350
    .local v6, "mLastText":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v6}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    .line 3354
    .local v5, "length":I
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    .line 3353
    invoke-interface {v10, v11, v12}, Lcom/touchtype_fluency/Tokenizer;->splitContextCurrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v1

    .line 3357
    .local v1, "contextCurrentWord":Lcom/touchtype_fluency/ContextCurrentWord;
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->getCurrentWord(Lcom/touchtype_fluency/ContextCurrentWord;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 3360
    .local v2, "currentWord":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v11

    sub-int v11, v5, v11

    add-int v0, v11, p2

    .line 3361
    .local v0, "adjustedStartIndex":I
    const/4 v11, 0x0

    invoke-virtual {v6, v11, v0}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    .line 3364
    .local v8, "textBuffer2":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->getLastWord(Lcom/touchtype_fluency/ContextCurrentWord;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 3367
    .local v3, "lastWord":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, v3, v8}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->getLastWordEndIndex(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v4

    .line 3368
    .local v4, "lastWordEndIndex":I
    invoke-virtual {v6, v4, v5}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v9

    .line 3370
    .local v9, "textBuffer3":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, v9}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->getSpaceAndNewLineOffset(Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v11

    add-int v7, v4, v11

    .line 3373
    .local v7, "newComposingStartIndex":I
    sub-int v11, v5, v7

    iput v11, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mVietnameseComposingLength:I

    goto :goto_0
.end method

.method private setTextBeforeCursorTextBuffer()V
    .locals 3

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$5900(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/ned/model/ITextBuffer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$5802(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    .line 3260
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->access$5800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 3261
    return-void
.end method


# virtual methods
.method public getComposingLength()I
    .locals 1

    .prologue
    .line 3255
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mVietnameseComposingLength:I

    return v0
.end method

.method public getCurrentWord(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4
    .param p1, "primaryCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 3237
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->setTextBeforeCursorTextBuffer()V

    .line 3238
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->getTelexWithContext(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 3239
    .local v1, "telexWithContext":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    sub-int v0, v2, v3

    .line 3240
    .local v0, "bufferLengthDiff":I
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->processVietnameseCandidate(Lcom/sonyericsson/ned/model/CodePointString;I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    return-object v2
.end method

.method public removeCurrentWordLastIndex()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4

    .prologue
    .line 3244
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->setTextBeforeCursorTextBuffer()V

    .line 3245
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3246
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 3247
    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 3246
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 3248
    .local v0, "textBuffer":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->processVietnameseCandidate(Lcom/sonyericsson/ned/model/CodePointString;I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 3250
    .end local v0    # "textBuffer":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method
