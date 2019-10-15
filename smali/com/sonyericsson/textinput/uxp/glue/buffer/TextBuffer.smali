.class public Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/ITextBuffer;
.implements Lcom/sonyericsson/ned/controller/ICursor;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/ICursorListener;
.implements Lcom/sonyericsson/ned/controller/ISelectionListener;
.implements Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionHandler;
.implements Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;,
        Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;,
        Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_DEBUG:Z = false

.field private static final DO_DEBUG_STATE_CACHE:Z = false

.field public static final MAX_CHARACTERS_AROUND_CURSOR:I = 0x64

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final UNDEFINED_CURSOR_INDEX:I = -0x1


# instance fields
.field private mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

.field private mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

.field private mIsNougatOrNewer:Z

.field private final mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

.field private mStyler:Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;

.field private final mUseCompatibilityDeleteMode:Z

.field private final mUseDelayWhenInserting:Z

.field private mWaitForComposingCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/ned/model/ITextBufferListener;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ZZII)V
    .locals 1
    .param p1, "useDelayWhenInserting"    # Z
    .param p2, "incompatableDeleteMode"    # Z
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mIsNougatOrNewer:Z

    .line 93
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mUseDelayWhenInserting:Z

    .line 94
    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mUseCompatibilityDeleteMode:Z

    .line 95
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mIsNougatOrNewer:Z

    .line 97
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-direct {v0, p3, p4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    .line 98
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;)Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    return-object v0
.end method

.method private areTextAndPositionInSync(Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p1, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 773
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/CursorPosition;->getStart()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v0

    const/16 v1, 0x2ee

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fireOnComposing(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 9
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "commitedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I

    .prologue
    .line 122
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    if-eqz v1, :cond_0

    .line 123
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    array-length v8, v7

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .local v0, "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 124
    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/ned/model/ITextBufferListener;->onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 123
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 128
    .end local v0    # "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    :cond_0
    return-void
.end method

.method private fireOnDeletion(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 9
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "count"    # I
    .param p4, "cursorIndex"    # I

    .prologue
    .line 213
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    if-eqz v1, :cond_0

    .line 214
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    array-length v8, v7

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .local v0, "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    .line 215
    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/ned/model/ITextBufferListener;->onDeletion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V

    .line 214
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 218
    .end local v0    # "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    :cond_0
    return-void
.end method

.method private fireOnFinishComposingText(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 9
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "commitedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I

    .prologue
    .line 112
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    if-eqz v1, :cond_0

    .line 113
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    array-length v8, v7

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .local v0, "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 114
    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/ned/model/ITextBufferListener;->onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 113
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 118
    .end local v0    # "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    :cond_0
    return-void
.end method

.method private fireOnInsertion(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 9
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "commitedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    if-eqz v1, :cond_0

    .line 103
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    array-length v8, v7

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .local v0, "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 104
    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/ned/model/ITextBufferListener;->onInsertion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 103
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 108
    .end local v0    # "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    :cond_0
    return-void
.end method

.method private fireOnPreComposing(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 4
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    if-eqz v1, :cond_0

    .line 132
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 133
    .local v0, "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/ned/model/ITextBufferListener;->onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    :cond_0
    return-void
.end method

.method private fireOnReplacement(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 9
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "commitedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I

    .prologue
    .line 140
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    if-eqz v1, :cond_0

    .line 141
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    array-length v8, v7

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v7, v6

    .local v0, "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 142
    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/ned/model/ITextBufferListener;->onReplacement(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 141
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 146
    .end local v0    # "listener":Lcom/sonyericsson/ned/model/ITextBufferListener;
    :cond_0
    return-void
.end method

.method private getTextAfterCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p1, "extractedText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 221
    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 222
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 223
    .local v0, "extractedCodePointText":Lcom/sonyericsson/ned/model/CodePointString;
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 224
    invoke-virtual {v0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->toCodePointIndex(I)I

    move-result v1

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 225
    invoke-virtual {v0, v2}, Lcom/sonyericsson/ned/model/CodePointString;->toCodePointIndex(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x2ee

    .line 223
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    return-object v1
.end method

.method private getTextBeforeCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p1, "extractedText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 230
    iget-object v1, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 231
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 232
    .local v0, "extractedCodePointString":Lcom/sonyericsson/ned/model/CodePointString;
    iget v1, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 233
    invoke-virtual {v0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->toCodePointIndex(I)I

    move-result v1

    add-int/lit16 v1, v1, -0x2ee

    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 235
    invoke-virtual {v0, v2}, Lcom/sonyericsson/ned/model/CodePointString;->toCodePointIndex(I)I

    move-result v2

    .line 232
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->safeSubString(Lcom/sonyericsson/ned/model/CodePointString;II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    return-object v1
.end method

.method private isCursorAtBeginning(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 1
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 749
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmojiBeforeCursor(Landroid/view/inputmethod/ExtractedText;)Z
    .locals 3
    .param p1, "extractedText"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    const/4 v1, 0x0

    .line 319
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getTextBeforeCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 321
    .local v0, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v2

    .line 321
    invoke-static {v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isPictogram(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 324
    .end local v0    # "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    return v1
.end method

.method private logIsExpectedUpdate(ZII)V
    .locals 0
    .param p1, "returnValue"    # Z
    .param p2, "newSelStart"    # I
    .param p3, "newSelEnd"    # I

    .prologue
    .line 972
    return-void
.end method

.method private sendComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z
    .locals 8
    .param p1, "connection"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 152
    .local v0, "composingText":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnPreComposing(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 153
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStyler:Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;

    .line 154
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;->styleComposingText(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v5

    const/4 v6, 0x1

    .line 153
    invoke-virtual {v4, p1, v5, v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->setComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/text/SpannableString;I)Z

    move-result v2

    .line 155
    .local v2, "result":Z
    if-eqz v2, :cond_0

    .line 156
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 157
    invoke-virtual {v4, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 158
    .local v1, "extractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 159
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getTextBeforeCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 160
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getTextAfterCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v7, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v6, v7

    .line 159
    invoke-direct {p0, v4, v5, v0, v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnComposing(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 169
    .end local v1    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    :cond_0
    :goto_0
    return v2

    .line 163
    .restart local v1    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 164
    invoke-virtual {v4, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 165
    .local v3, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 166
    invoke-virtual {v4, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorEnd()I

    move-result v5

    .line 165
    invoke-direct {p0, v3, v4, v0, v5}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnComposing(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    goto :goto_0
.end method

.method private sendReComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;I)Z
    .locals 12
    .param p1, "connection"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    .param p2, "length"    # I

    .prologue
    const/16 v11, 0x2ee

    const/4 v10, 0x0

    .line 173
    const/4 v5, 0x0

    .line 178
    .local v5, "result":Z
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 179
    invoke-virtual {v9, p1, v11, v10}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 180
    .local v7, "textBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v7, :cond_0

    .line 182
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 183
    .local v8, "textBeforeCursorLength":I
    sub-int v9, v8, p2

    invoke-static {v7, v9, v8}, Lcom/sonyericsson/ned/util/StringUtil;->safeSubString(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 186
    .local v4, "newComposingText":Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnPreComposing(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 192
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getCursorPosition()I

    move-result v0

    .line 193
    .local v0, "charPos":I
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->setComposingRegionSilent(I)Z

    move-result v5

    .line 194
    if-eqz v5, :cond_0

    .line 195
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mWaitForComposingCallback:Z

    .line 196
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 197
    invoke-virtual {v9, p1, v11, v10}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 199
    .local v6, "textAfterCursor":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 200
    .local v2, "codePointsBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v6, :cond_1

    .line 201
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 203
    .local v1, "codePointsAfterCursor":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 204
    .local v3, "codePointsComposing":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnComposing(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 208
    .end local v0    # "charPos":I
    .end local v1    # "codePointsAfterCursor":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v2    # "codePointsBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v3    # "codePointsComposing":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v4    # "newComposingText":Ljava/lang/CharSequence;
    .end local v6    # "textAfterCursor":Ljava/lang/CharSequence;
    .end local v8    # "textBeforeCursorLength":I
    :cond_0
    return v5

    .line 201
    .restart local v0    # "charPos":I
    .restart local v2    # "codePointsBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v4    # "newComposingText":Ljava/lang/CharSequence;
    .restart local v6    # "textAfterCursor":Ljava/lang/CharSequence;
    .restart local v8    # "textBeforeCursorLength":I
    :cond_1
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method private sendReComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z
    .locals 7
    .param p1, "connection"    # Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    .param p2, "cursorPos"    # I
    .param p3, "length"    # I

    .prologue
    .line 822
    const/4 v3, 0x0

    .line 826
    .local v3, "result":Z
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 827
    invoke-virtual {v5, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 828
    .local v1, "extractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 829
    iget-object v5, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 830
    .local v4, "text":Ljava/lang/CharSequence;
    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    sub-int v2, p2, v5

    .line 831
    .local v2, "extractedTextPos":I
    add-int v5, v2, p3

    invoke-static {v4, v2, v5}, Lcom/sonyericsson/ned/util/StringUtil;->safeSubString(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 833
    .local v0, "composingText":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnPreComposing(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 834
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    add-int v6, p2, p3

    invoke-virtual {v5, p1, p2, v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->setComposingRegion(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z

    move-result v3

    .line 837
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mWaitForComposingCallback:Z

    .line 838
    if-eqz v3, :cond_0

    .line 839
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->setComposing(Ljava/lang/CharSequence;)V

    .line 843
    .end local v0    # "composingText":Ljava/lang/CharSequence;
    .end local v2    # "extractedTextPos":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_0
    return v3
.end method

.method private shouldFinishComposing(Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 3
    .param p1, "currentPosition"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p2, "composing"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p3, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x1

    .line 754
    invoke-direct {p0, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->isCursorAtBeginning(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    :cond_0
    :goto_0
    return v0

    .line 756
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mWaitForComposingCallback:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->areTextAndPositionInSync(Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 758
    invoke-virtual {p2}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLength()I

    move-result v1

    if-lez v1, :cond_3

    .line 759
    invoke-virtual {p2, p1}, Lcom/sonyericsson/ned/controller/CursorPosition;->contains(Lcom/sonyericsson/ned/controller/CursorPosition;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v1

    invoke-virtual {p2}, Lcom/sonyericsson/ned/controller/CursorPosition;->getStart()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 768
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 764
    :cond_3
    invoke-virtual {p2}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLength()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getComposingLength()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 3

    .prologue
    .line 782
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 783
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    const/4 v1, 0x0

    .line 784
    .local v1, "result":Z
    if-eqz v0, :cond_0

    .line 785
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->beginBatchEdit(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    move-result v1

    .line 787
    :cond_0
    return v1
.end method

.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 606
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/ITextBufferListener;

    if-ne p2, v0, :cond_0

    .line 607
    new-array v0, p1, [Lcom/sonyericsson/ned/model/ITextBufferListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mITextBufferListener:[Lcom/sonyericsson/ned/model/ITextBufferListener;

    .line 610
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    if-ne p2, v0, :cond_2

    .line 616
    if-eqz p1, :cond_1

    .line 617
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    check-cast p1, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    .end local p1    # "instance":Ljava/lang/Object;
    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;-><init>(Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 620
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    goto :goto_0

    .line 622
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;

    if-ne p2, v0, :cond_0

    .line 623
    check-cast p1, Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStyler:Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .param p1, "completionInfo"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 389
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 390
    invoke-virtual {v1, v0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->commitCompletion(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public delete(I)Z
    .locals 11
    .param p1, "count"    # I

    .prologue
    const/4 v10, 0x0

    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, "isSuccessfulDelete":Z
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v2

    .line 245
    .local v2, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-eqz v2, :cond_1

    .line 247
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getComposingLength()I

    move-result v0

    .line 249
    .local v0, "composingLength":I
    if-lez v0, :cond_0

    .line 250
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    sub-int v8, v0, p1

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->setComposingLength(I)V

    .line 251
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getComposing()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "composingString":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnPreComposing(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 253
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStyler:Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;

    .line 254
    invoke-interface {v8, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;->styleComposingText(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v8

    const/4 v9, 0x1

    .line 253
    invoke-virtual {v7, v2, v8, v9}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->setComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/text/SpannableString;I)Z

    .line 256
    .end local v1    # "composingString":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 258
    .local v5, "nbrDeleted":I
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getExtractedText()Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    .line 260
    .local v3, "extractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v3, :cond_2

    iget v7, v3, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v8, v3, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-eq v7, v8, :cond_2

    .line 266
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    iget v8, v3, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v9, v3, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v7, v2, v8, v9}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->setSelection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z

    .line 268
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    iget v8, v3, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v9, v3, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v2, v8, v10}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->deleteSurroundingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z

    move-result v4

    .line 287
    :goto_0
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v7

    if-le v7, v5, :cond_5

    .line 288
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v8

    sub-int/2addr v8, v5

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    .line 289
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorEnd()I

    move-result v9

    sub-int/2addr v9, v5

    .line 288
    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->updateCursor(II)V

    .line 300
    :goto_1
    if-eqz v4, :cond_1

    .line 301
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v7, v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    .line 302
    if-eqz v3, :cond_6

    iget-object v7, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v7, :cond_6

    .line 303
    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getTextBeforeCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    .line 304
    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getTextAfterCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    iget v9, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v10, v3, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v9, v10

    .line 303
    invoke-direct {p0, v7, v8, v5, v9}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnDeletion(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V

    .line 315
    .end local v0    # "composingLength":I
    .end local v3    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .end local v5    # "nbrDeleted":I
    :cond_1
    :goto_2
    return v4

    .line 271
    .restart local v0    # "composingLength":I
    .restart local v3    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .restart local v5    # "nbrDeleted":I
    :cond_2
    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mUseCompatibilityDeleteMode:Z

    if-nez v7, :cond_3

    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mIsNougatOrNewer:Z

    if-eqz v7, :cond_4

    .line 272
    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->isEmojiBeforeCursor(Landroid/view/inputmethod/ExtractedText;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 278
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->sendKeyCodeDelete()V

    .line 279
    const/4 v4, 0x1

    goto :goto_0

    .line 281
    :cond_4
    sub-int v5, p1, v0

    .line 282
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v7, v2, v5, v10}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->deleteSurroundingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z

    move-result v4

    goto :goto_0

    .line 296
    :cond_5
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorEnd()I

    move-result v8

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    .line 297
    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v9

    sub-int/2addr v8, v9

    .line 296
    invoke-virtual {v7, v10, v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->updateCursor(II)V

    goto :goto_1

    .line 307
    :cond_6
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 308
    invoke-virtual {v7, v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    .line 309
    .local v6, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 310
    invoke-virtual {v7, v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    .line 311
    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorEnd()I

    move-result v8

    .line 309
    invoke-direct {p0, v6, v7, v5, v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnDeletion(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V

    goto :goto_2
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 637
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 638
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getComposingLength()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 639
    .local v1, "hasComposingText":Z
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->clearComposing()V

    .line 640
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 641
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->finishComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    .line 643
    :cond_0
    return-void

    .line 638
    .end local v1    # "hasComposingText":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 3

    .prologue
    .line 795
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 796
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    const/4 v1, 0x0

    .line 797
    .local v1, "result":Z
    if-eqz v0, :cond_0

    .line 798
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->endBatchEdit(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    move-result v1

    .line 800
    :cond_0
    return v1
.end method

.method public finishComposingText()Z
    .locals 9

    .prologue
    .line 332
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 333
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    const/4 v3, 0x0

    .line 334
    .local v3, "result":Z
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 336
    .local v2, "insertedText":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->clearComposing()V

    .line 337
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->finishComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    move-result v3

    .line 338
    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 339
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 340
    invoke-virtual {v5, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 341
    .local v1, "extractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_1

    iget-object v5, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    .line 342
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getTextBeforeCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 343
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getTextAfterCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    iget v7, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v8, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v7, v8

    .line 342
    invoke-direct {p0, v5, v6, v2, v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnFinishComposingText(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 354
    .end local v1    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .end local v2    # "insertedText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    :goto_0
    return v3

    .line 346
    .restart local v1    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .restart local v2    # "insertedText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 347
    invoke-virtual {v5, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 348
    .local v4, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 349
    invoke-virtual {v5, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    .line 350
    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorEnd()I

    move-result v6

    .line 348
    invoke-direct {p0, v4, v5, v2, v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnFinishComposingText(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    goto :goto_0
.end method

.method public getComposingText()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getComposing()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public getCursorPosition()I
    .locals 2

    .prologue
    .line 490
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v0

    .line 491
    .local v0, "cursorStart":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .end local v0    # "cursorStart":I
    :goto_0
    return v0

    .restart local v0    # "cursorStart":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFuturePosition(I)Lcom/sonyericsson/ned/controller/CursorPosition;
    .locals 1
    .param p1, "movement"    # I

    .prologue
    .line 653
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFuturePosition(ILcom/sonyericsson/ned/controller/CursorPosition;)Lcom/sonyericsson/ned/controller/CursorPosition;
    .locals 1
    .param p1, "movement"    # I
    .param p2, "referencePosition"    # Lcom/sonyericsson/ned/controller/CursorPosition;

    .prologue
    .line 659
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFuturePosition(Lcom/sonyericsson/ned/controller/CursorPosition;I)Lcom/sonyericsson/ned/controller/CursorPosition;
    .locals 1
    .param p1, "startPosition"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p2, "movement"    # I

    .prologue
    .line 665
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 647
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->refreshCursorPosition()V

    .line 521
    new-instance v0, Lcom/sonyericsson/ned/controller/CursorPosition;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/ned/controller/CursorPosition;-><init>(I)V

    return-object v0
.end method

.method public getSubstringAfterCursor(I)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 5
    .param p1, "chars"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 676
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 677
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 678
    .local v1, "result":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_0

    .line 679
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p1, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 681
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 682
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 685
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-object v1
.end method

.method public getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 5
    .param p1, "chars"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 691
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 692
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 693
    .local v1, "result":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_0

    .line 694
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p1, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 696
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 697
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 700
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-object v1
.end method

.method public getText()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3

    .prologue
    .line 848
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 849
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-eqz v0, :cond_0

    .line 850
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 851
    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 852
    .local v1, "extractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 853
    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 856
    .end local v1    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public getWritingDirection(Lcom/sonyericsson/ned/controller/CursorPosition;)I
    .locals 1
    .param p1, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;

    .prologue
    .line 670
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 629
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 633
    return-void
.end method

.method public insert(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 10
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 403
    const/4 v3, 0x0

    .line 404
    .local v3, "result":Z
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 405
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "textString":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v1

    .line 408
    .local v1, "cursorPos":I
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v5, v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->commitText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Ljava/lang/CharSequence;I)Z

    move-result v3

    .line 409
    if-eqz v3, :cond_1

    .line 410
    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mUseDelayWhenInserting:Z

    if-eqz v6, :cond_0

    .line 411
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 413
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 414
    invoke-virtual {v6, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 417
    .local v2, "extractedText":Landroid/view/inputmethod/ExtractedText;
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->updateCursor(I)V

    .line 419
    if-eqz v2, :cond_2

    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    .line 420
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getTextBeforeCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    .line 421
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getTextAfterCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    iget v8, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v9, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v8, v9

    .line 420
    invoke-direct {p0, v6, v7, p1, v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnInsertion(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 431
    .end local v1    # "cursorPos":I
    .end local v2    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .end local v5    # "textString":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 424
    .restart local v1    # "cursorPos":I
    .restart local v2    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    .restart local v5    # "textString":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 425
    invoke-virtual {v6, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 426
    .local v4, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 427
    invoke-virtual {v6, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorEnd()I

    move-result v7

    .line 426
    invoke-direct {p0, v4, v6, p1, v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnInsertion(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    goto :goto_0
.end method

.method public isExpectedUpdate(IIII)Z
    .locals 10
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 907
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v8

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorEnd()I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 962
    :cond_0
    :goto_0
    return v7

    .line 919
    :cond_1
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v8

    if-ne v8, p3, :cond_2

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorEnd()I

    move-result v8

    if-ne v8, p4, :cond_2

    move v7, v6

    .line 924
    goto :goto_0

    .line 932
    :cond_2
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v8

    if-ne v8, p1, :cond_3

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorEnd()I

    move-result v8

    if-ne v8, p2, :cond_3

    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    .line 950
    :cond_3
    if-ne p3, p4, :cond_4

    move v2, v6

    .line 951
    .local v2, "isNewCursor":Z
    :goto_1
    sub-int v4, p3, p1

    .line 952
    .local v4, "selStartDelta":I
    sub-int v3, p3, p1

    .line 953
    .local v3, "selEndDelta":I
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v8

    sub-int v1, v8, p1

    .line 954
    .local v1, "cursorStartDelta":I
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorEnd()I

    move-result v8

    sub-int v0, v8, p2

    .line 957
    .local v0, "cursorEndDelta":I
    if-eqz v2, :cond_5

    mul-int v8, v4, v1

    if-ltz v8, :cond_5

    mul-int v8, v3, v0

    if-ltz v8, :cond_5

    move v5, v6

    .local v5, "wasExpectedUpdate":Z
    :goto_2
    move v7, v5

    .line 962
    goto :goto_0

    .end local v0    # "cursorEndDelta":I
    .end local v1    # "cursorStartDelta":I
    .end local v2    # "isNewCursor":Z
    .end local v3    # "selEndDelta":I
    .end local v4    # "selStartDelta":I
    .end local v5    # "wasExpectedUpdate":Z
    :cond_4
    move v2, v7

    .line 950
    goto :goto_1

    .restart local v0    # "cursorEndDelta":I
    .restart local v1    # "cursorStartDelta":I
    .restart local v2    # "isNewCursor":Z
    .restart local v3    # "selEndDelta":I
    .restart local v4    # "selStartDelta":I
    :cond_5
    move v5, v7

    .line 957
    goto :goto_2
.end method

.method public onIndexChange(Ljava/lang/Object;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;ILcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p3, "composing"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p4, "reason"    # I
    .param p5, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "characterIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 714
    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    .line 717
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v0, p6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->updateCursor(I)V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    const/4 v1, 0x4

    if-ne p4, v1, :cond_4

    .line 722
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getComposingLength()I

    move-result v1

    if-lez v1, :cond_2

    .line 723
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v3, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnFinishComposingText(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 725
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->clearComposing()V

    .line 731
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mWaitForComposingCallback:Z

    if-eqz v1, :cond_0

    .line 732
    invoke-virtual {p3}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLength()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mWaitForComposingCallback:Z

    goto :goto_0

    .line 727
    :cond_4
    invoke-direct {p0, p2, p3, p5}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->shouldFinishComposing(Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 728
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->finishComposingText()Z

    goto :goto_1
.end method

.method public onInputViewStarted()V
    .locals 0

    .prologue
    .line 887
    return-void
.end method

.method public onUpdateInputView(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 805
    return-void
.end method

.method public onUpdateSelection(Ljava/lang/Object;IIIIII)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "oldSelStart"    # I
    .param p3, "oldSelEnd"    # I
    .param p4, "newSelStart"    # I
    .param p5, "newSelEnd"    # I
    .param p6, "candidatesStart"    # I
    .param p7, "candidatesEnd"    # I

    .prologue
    .line 743
    if-eq p4, p5, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->finishComposingText()Z

    .line 746
    :cond_0
    return-void
.end method

.method public reSetComposingText(I)Z
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 545
    const/4 v1, 0x0

    .line 546
    .local v1, "result":Z
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 547
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->clearComposing()V

    .line 549
    if-eqz v0, :cond_0

    .line 550
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->sendReComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;I)Z

    move-result v1

    .line 553
    :cond_0
    return v1
.end method

.method public reSetComposingText(II)Z
    .locals 3
    .param p1, "cursorPos"    # I
    .param p2, "length"    # I

    .prologue
    .line 812
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 813
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    const/4 v1, 0x0

    .line 814
    .local v1, "result":Z
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->clearComposing()V

    .line 815
    if-eqz v0, :cond_0

    .line 816
    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->sendReComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z

    move-result v1

    .line 818
    :cond_0
    return v1
.end method

.method public replace(ILcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 8
    .param p1, "count"    # I
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 439
    const/4 v2, 0x0

    .line 440
    .local v2, "result":Z
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 441
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-eqz v0, :cond_0

    .line 442
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->beginBatchEdit(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    .line 443
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, p1, v5}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->deleteSurroundingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z

    .line 444
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v5, v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->commitText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Ljava/lang/CharSequence;I)Z

    .line 445
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->endBatchEdit(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    move-result v2

    .line 446
    if-eqz v2, :cond_0

    .line 447
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 448
    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 449
    .local v1, "extractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 450
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getTextBeforeCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 451
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getTextAfterCursor(Landroid/view/inputmethod/ExtractedText;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v7, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v6, v7

    .line 450
    invoke-direct {p0, v4, v5, p2, v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnReplacement(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    .line 461
    .end local v1    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    :cond_0
    :goto_0
    return v2

    .line 454
    .restart local v1    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 455
    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 456
    .local v3, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 457
    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorEnd()I

    move-result v5

    .line 456
    invoke-direct {p0, v3, v4, p2, v5}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->fireOnReplacement(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V

    goto :goto_0
.end method

.method public setComposingRegionSilent(I)Z
    .locals 8
    .param p1, "lengthBeforeCursor"    # I

    .prologue
    const/4 v5, 0x0

    .line 569
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 570
    .local v0, "composingEndPos":I
    sub-int v6, v0, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 572
    .local v1, "composingStartPos":I
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v2

    .line 573
    .local v2, "icReference":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    const/16 v7, 0x2ee

    .line 574
    invoke-virtual {v6, v2, v7, v5}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 575
    .local v3, "textBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 576
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 578
    .local v4, "textBeforeCursorPos":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    .line 579
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 578
    invoke-interface {v3, v4, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->setComposing(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v5, v2, v1, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->setComposingRegion(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z

    move-result v5

    .line 583
    .end local v4    # "textBeforeCursorPos":I
    :cond_0
    return v5
.end method

.method public setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 5
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 469
    const/4 v2, 0x0

    .line 472
    .local v2, "result":Z
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 474
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getComposing()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    .line 475
    .local v1, "cursorDelta":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->getCursorStart()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->updateCursor(I)V

    .line 476
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->setComposing(Ljava/lang/CharSequence;)V

    .line 477
    if-eqz v0, :cond_0

    .line 478
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mWaitForComposingCallback:Z

    .line 479
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->sendComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    move-result v2

    .line 482
    :cond_0
    return v2
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "cursorindex"    # I

    .prologue
    .line 529
    invoke-virtual {p0, p1, p1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->setSelection(II)Z

    .line 530
    return-void
.end method

.method public setPosition(Lcom/sonyericsson/ned/controller/CursorPosition;)V
    .locals 2
    .param p1, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;

    .prologue
    .line 537
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->setSelection(II)Z

    .line 538
    return-void
.end method

.method public setSelection(II)Z
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, "isSetSelectionSuccessful":Z
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 501
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-eqz v0, :cond_0

    .line 502
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v2, v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->setSelection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Z

    move-result v1

    .line 506
    :cond_0
    if-eqz v1, :cond_1

    .line 507
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v2, p1, p2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->updateCursor(II)V

    .line 512
    :goto_0
    return v1

    .line 509
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStateCache:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$StateCache;->resetCursor()V

    goto :goto_0
.end method

.method public showTextNotification(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 6
    .param p1, "offsetBeforeCursor"    # I
    .param p2, "oldText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "newText"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 364
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v1

    .line 365
    .local v1, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-eqz v1, :cond_0

    .line 366
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    .line 367
    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    .line 368
    .local v2, "extractedText":Landroid/view/inputmethod/ExtractedText;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 369
    new-instance v0, Landroid/view/inputmethod/CorrectionInfo;

    iget v3, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    sub-int/2addr v3, p1

    .line 370
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Landroid/view/inputmethod/CorrectionInfo;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 371
    .local v0, "ci":Landroid/view/inputmethod/CorrectionInfo;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->commitCorrectionExtracted(Landroid/view/inputmethod/CorrectionInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 372
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v3, v1, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->commitCorrection(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/view/inputmethod/CorrectionInfo;)Z

    .line 376
    .end local v0    # "ci":Landroid/view/inputmethod/CorrectionInfo;
    .end local v2    # "extractedText":Landroid/view/inputmethod/ExtractedText;
    :cond_0
    return-void
.end method

.method public suitableToReSetComposingText(I)Z
    .locals 10
    .param p1, "length"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 861
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 862
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-nez v0, :cond_0

    .line 882
    :goto_0
    return v8

    .line 866
    :cond_0
    const/4 v2, 0x1

    .line 867
    .local v2, "result":Z
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v6, v0, v7}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getExtractedText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    .line 869
    .local v5, "text":Landroid/view/inputmethod/ExtractedText;
    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 870
    iget v6, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v9, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-ne v6, v9, :cond_2

    move v2, v7

    .line 871
    :goto_1
    if-eqz v2, :cond_1

    iget-object v6, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/SpannableString;

    if-eqz v6, :cond_1

    .line 874
    iget v6, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    sub-int/2addr v6, p1

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 875
    .local v4, "start":I
    iget v6, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v9, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 876
    .local v1, "end":I
    iget-object v6, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/SpannableString;

    const-class v9, Landroid/text/Annotation;

    invoke-virtual {v6, v4, v1, v9}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 878
    .local v3, "spans":[Ljava/lang/Object;
    array-length v6, v3

    if-nez v6, :cond_3

    move v2, v7

    .end local v1    # "end":I
    .end local v3    # "spans":[Ljava/lang/Object;
    .end local v4    # "start":I
    :cond_1
    :goto_2
    move v8, v2

    .line 882
    goto :goto_0

    :cond_2
    move v2, v8

    .line 870
    goto :goto_1

    .restart local v1    # "end":I
    .restart local v3    # "spans":[Ljava/lang/Object;
    .restart local v4    # "start":I
    :cond_3
    move v2, v8

    .line 878
    goto :goto_2
.end method

.method public updateComposingTextSpan()V
    .locals 5

    .prologue
    .line 592
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v1

    .line 593
    .local v1, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 596
    .local v0, "composingText":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mStyler:Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;

    .line 597
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 596
    invoke-interface {v3, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;->styleComposingText(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    .line 598
    .local v2, "styledString":Landroid/text/SpannableString;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->getCurrentComposingSpanString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->mInputConnectionManager:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$InputConnectionManager;->setComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;Landroid/text/SpannableString;I)Z

    .line 602
    .end local v0    # "composingText":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v2    # "styledString":Landroid/text/SpannableString;
    :cond_0
    return-void
.end method
