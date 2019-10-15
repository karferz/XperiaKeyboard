.class public Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;
.super Ljava/lang/Object;
.source "InputConnectionWrapperCached.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;,
        Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$GetExtractedTextFlags;,
        Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$GetTextRelativeToCursorFlags;
    }
.end annotation


# static fields
.field private static final DO_DEBUG:Z = false

.field private static final DO_VERIFY:Z = false

.field private static final MAX_EXTRACTED_TEXT_CHARS:I = 0x5dc

.field private static final MAX_EXTRACTED_TEXT_LINES:I = 0xa

.field private static final MAX_TEXT_AFTER_CURSOR:I = 0x2ee

.field private static final MAX_TEXT_BEFORE_CURSOR:I = 0x2ee

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCachedExtractedTexts:Landroid/util/SparseArray;

.field private mCachedTextAfterCursor:Ljava/lang/CharSequence;

.field private mCachedTextBeforeCursor:Ljava/lang/CharSequence;

.field private mCurrentComposingSpanString:Landroid/text/SpannableString;

.field private final mIInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;)V
    .locals 1
    .param p1, "iInputMethodService"    # Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedExtractedTexts:Landroid/util/SparseArray;

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mIInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    .line 77
    return-void
.end method

.method private beginBatchEdit(Landroid/view/inputmethod/InputConnection;)Z
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 640
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method private commitCompletion(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "completionInfo"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 613
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v0

    return v0
.end method

.method private commitCorrection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 581
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v0

    return v0
.end method

.method private commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 523
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method private deleteSurroundingText(Landroid/view/inputmethod/InputConnection;II)Z
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 487
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method private endBatchEdit(Landroid/view/inputmethod/InputConnection;)Z
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 667
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v0

    return v0
.end method

.method private finishComposingText(Landroid/view/inputmethod/InputConnection;)Z
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 551
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method private getExtractedText(Landroid/view/inputmethod/InputConnection;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 165
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 166
    .local v0, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    iput p2, v0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 167
    const/16 v1, 0xa

    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 168
    const/16 v1, 0x5dc

    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 174
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    return-object v1
.end method

.method private getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 709
    move-object v0, p1

    .line 710
    .local v0, "inputConnectionReference":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-nez v0, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 713
    :cond_0
    if-eqz v0, :cond_1

    .line 714
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;->access$000(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 716
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTextAfterCursor(Landroid/view/inputmethod/InputConnection;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 291
    const/16 v1, 0x2ee

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 292
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method private getTextAfterCursor(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "expectedLength"    # I
    .param p3, "flags"    # I

    .prologue
    .line 351
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getTextBeforeCursor(Landroid/view/inputmethod/InputConnection;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 201
    const/16 v1, 0x2ee

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextBeforeCursor(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 203
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method private getTextBeforeCursor(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "expectedLength"    # I
    .param p3, "flags"    # I

    .prologue
    .line 263
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 423
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    move-result v0

    return v0
.end method

.method private setComposingText(Landroid/view/inputmethod/InputConnection;Landroid/text/SpannableString;I)Z
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Landroid/text/SpannableString;
    .param p3, "newCursorPosition"    # I

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 391
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    .line 392
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 393
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCurrentComposingSpanString:Landroid/text/SpannableString;

    .line 395
    :cond_0
    return v0
.end method

.method private setSelection(Landroid/view/inputmethod/InputConnection;II)Z
    .locals 1
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 450
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public beginBatchEdit(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 626
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, "isValidConnection":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 629
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 630
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->beginBatchEdit(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    .line 632
    :cond_0
    monitor-exit v3

    return v1

    .line 633
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public commitCompletion(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "completionInfo"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 597
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 598
    const/4 v1, 0x0

    .line 599
    .local v1, "isValidConnection":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 600
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 601
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->commitCompletion(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v1

    .line 603
    :cond_0
    monitor-exit v3

    return v1

    .line 604
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public commitCorrection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 564
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 565
    const/4 v1, 0x0

    .line 566
    .local v1, "isValidConnection":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 567
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->commitCorrection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v1

    .line 570
    :cond_0
    monitor-exit v3

    return v1

    .line 571
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public commitCorrectionExtracted(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 3
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .prologue
    .line 691
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mIInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;->isExtractViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 697
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mIInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;->getExtractEditText()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 698
    .local v0, "extractView":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/ExtractEditText;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 701
    :cond_0
    const/4 v1, 0x1

    monitor-exit v2

    .line 703
    .end local v0    # "extractView":Landroid/inputmethodservice/ExtractEditText;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commitText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "newCursorPosition"    # I

    .prologue
    .line 507
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, "isValidConnection":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 510
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->commitText(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;I)Z

    move-result v1

    .line 513
    :cond_0
    monitor-exit v3

    return v1

    .line 514
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public deleteSurroundingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "beforeLength"    # I
    .param p3, "afterLength"    # I

    .prologue
    .line 470
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 471
    const/4 v1, 0x0

    .line 472
    .local v1, "isValidConnection":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 473
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->deleteSurroundingText(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v1

    .line 476
    :cond_0
    monitor-exit v3

    return v1

    .line 477
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public endBatchEdit(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 653
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 654
    const/4 v1, 0x0

    .line 655
    .local v1, "isValidConnection":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 656
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 657
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->endBatchEdit(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    .line 659
    :cond_0
    monitor-exit v3

    return v1

    .line 660
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public finishComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 535
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 536
    const/4 v1, 0x0

    .line 537
    .local v1, "isValidConnection":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 538
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->finishComposingText(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    .line 541
    :cond_0
    monitor-exit v3

    return v1

    .line 542
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCurrentComposingSpanString()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCurrentComposingSpanString:Landroid/text/SpannableString;

    return-object v0
.end method

.method public getExtractedText()Landroid/view/inputmethod/ExtractedText;
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;
    .locals 2
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;I)Landroid/view/inputmethod/ExtractedText;
    .locals 5
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 136
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 137
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedExtractedTexts:Landroid/util/SparseArray;

    .line 138
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/ExtractedText;

    .line 139
    .local v0, "cachedExtractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 144
    monitor-exit v4

    .line 159
    .end local v0    # "cachedExtractedText":Landroid/view/inputmethod/ExtractedText;
    :goto_0
    return-object v0

    .line 147
    .restart local v0    # "cachedExtractedText":Landroid/view/inputmethod/ExtractedText;
    :cond_0
    const/4 v2, 0x0

    .line 148
    .local v2, "newExtractedText":Landroid/view/inputmethod/ExtractedText;
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 149
    .local v1, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 150
    invoke-direct {p0, v1, p2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getExtractedText(Landroid/view/inputmethod/InputConnection;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedExtractedTexts:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    :cond_1
    monitor-exit v4

    move-object v0, v2

    goto :goto_0

    .line 160
    .end local v0    # "cachedExtractedText":Landroid/view/inputmethod/ExtractedText;
    .end local v1    # "connection":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "newExtractedText":Landroid/view/inputmethod/ExtractedText;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    .locals 5

    .prologue
    .line 726
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 727
    const/4 v1, 0x0

    .line 728
    .local v1, "inputConnectionReference":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mIInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 729
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 730
    new-instance v2, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    invoke-direct {v2, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;-><init>(Landroid/view/inputmethod/InputConnection;)V

    .end local v1    # "inputConnectionReference":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    .local v2, "inputConnectionReference":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    move-object v1, v2

    .line 732
    .end local v2    # "inputConnectionReference":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    .restart local v1    # "inputConnectionReference":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    :cond_0
    monitor-exit v4

    return-object v1

    .line 733
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 275
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    :try_start_0
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 277
    .local v1, "textAfterCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 278
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextAfterCursor(Landroid/view/inputmethod/InputConnection;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 281
    :cond_0
    monitor-exit v3

    return-object v1

    .line 282
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "textAfterCursor":Lcom/sonyericsson/ned/model/CodePointString;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "expectedLength"    # I
    .param p3, "flags"    # I

    .prologue
    const/16 v4, 0x2ee

    .line 308
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 309
    :try_start_0
    const-string v1, ""

    .line 310
    .local v1, "textAfterCursor":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedTextAfterCursor:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    if-le p2, v4, :cond_3

    .line 311
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 312
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 313
    const/16 v2, 0x2ee

    .line 314
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 313
    invoke-direct {p0, v0, v2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextAfterCursor(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 315
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedTextAfterCursor:Ljava/lang/CharSequence;

    .line 326
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, p2, :cond_2

    .line 327
    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 342
    :cond_2
    monitor-exit v3

    return-object v1

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedTextAfterCursor:Ljava/lang/CharSequence;

    goto :goto_0

    .line 343
    .end local v1    # "textAfterCursor":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 186
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 187
    :try_start_0
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 188
    .local v1, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 189
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextBeforeCursor(Landroid/view/inputmethod/InputConnection;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 192
    :cond_0
    monitor-exit v3

    return-object v1

    .line 193
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    .end local v1    # "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "expectedLength"    # I
    .param p3, "flags"    # I

    .prologue
    const/16 v4, 0x2ee

    .line 219
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 220
    :try_start_0
    const-string v1, ""

    .line 221
    .local v1, "textBeforeCursor":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedTextBeforeCursor:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    if-le p2, v4, :cond_3

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 223
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 224
    const/16 v2, 0x2ee

    .line 225
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 224
    invoke-direct {p0, v0, v2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextBeforeCursor(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 229
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedTextBeforeCursor:Ljava/lang/CharSequence;

    .line 237
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, p2, :cond_2

    .line 238
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p2

    .line 239
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 238
    invoke-interface {v1, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 253
    :cond_2
    monitor-exit v3

    return-object v1

    .line 235
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedTextBeforeCursor:Ljava/lang/CharSequence;

    goto :goto_0

    .line 254
    .end local v1    # "textBeforeCursor":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedExtractedTexts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedTextBeforeCursor:Ljava/lang/CharSequence;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mCachedTextAfterCursor:Ljava/lang/CharSequence;

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendKeyCodeDelete()V
    .locals 3

    .prologue
    .line 674
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 679
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mIInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    const/16 v2, 0x43

    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;->sendDownUpKeyEvents(I)V

    .line 680
    monitor-exit v1

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setComposingRegion(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 409
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, "isValidConnection":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 412
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 413
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v1

    .line 415
    :cond_0
    monitor-exit v3

    return v1

    .line 416
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/text/SpannableString;I)Z
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "text"    # Landroid/text/SpannableString;
    .param p3, "newCursorPosition"    # I

    .prologue
    .line 375
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, "isValidConnection":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 378
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->setComposingText(Landroid/view/inputmethod/InputConnection;Landroid/text/SpannableString;I)Z

    move-result v1

    .line 381
    :cond_0
    monitor-exit v3

    return v1

    .line 382
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setSelection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z
    .locals 4
    .param p1, "icReference"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 436
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 437
    const/4 v1, 0x0

    .line 438
    .local v1, "isValidConnection":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 439
    .local v0, "connection":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0, v0, p2, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->setSelection(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v1

    .line 442
    :cond_0
    monitor-exit v3

    return v1

    .line 443
    .end local v0    # "connection":Landroid/view/inputmethod/InputConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
