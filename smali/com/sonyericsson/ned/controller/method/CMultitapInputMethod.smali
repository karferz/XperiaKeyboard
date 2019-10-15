.class public Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;
.super Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;
.source "CMultitapInputMethod.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/ICursorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$TapTimer;,
        Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;
    }
.end annotation


# static fields
.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private behavior:Lcom/sonyericsson/ned/controller/IMultitapBehavior;

.field private candidateInserted:Z

.field private currentMapIndex:I

.field private cursor:Lcom/sonyericsson/ned/controller/ICursor;

.field private inserting:Z

.field private final isDefaultNumericMode:Z

.field private isModeSwitched:Z

.field private listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

.field private pendingMultitapSelection:Z

.field private final preValidation:Z

.field private prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

.field private prevKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

.field private final strictValidation:Z

.field private synchronizer:Lcom/sonyericsson/ned/glue/ISynchronize;

.field private timeout:Lcom/sonyericsson/ned/glue/DelayedRunnable;

.field private timeoutHandler:Lcom/sonyericsson/ned/controller/IMultitapTimeout;

.field private validator:Lcom/sonyericsson/ned/model/IValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->BASE_REQUIRED:[Ljava/lang/Class;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/sonyericsson/ned/model/IValidator;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/sonyericsson/ned/controller/ICursor;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lcom/sonyericsson/ned/controller/IMultitapTimeout;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lcom/sonyericsson/ned/controller/IMultitapBehavior;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lcom/sonyericsson/ned/glue/ISynchronize;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 2
    .param p1, "strictValidation"    # Z
    .param p2, "preValidation"    # Z
    .param p3, "inputMode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isModeSwitched:Z

    .line 114
    iput-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 115
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 116
    iput-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->synchronizer:Lcom/sonyericsson/ned/glue/ISynchronize;

    .line 117
    iput-boolean p1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->strictValidation:Z

    .line 118
    iput-boolean p2, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->preValidation:Z

    .line 119
    const-string v0, "input-mode-symbols"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isDefaultNumericMode:Z

    .line 120
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->selectCurrentMultitapCandidate(I)V

    return-void
.end method

.method private cancelTapTimeout()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->timeout:Lcom/sonyericsson/ned/glue/DelayedRunnable;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->timeout:Lcom/sonyericsson/ned/glue/DelayedRunnable;

    invoke-interface {v0}, Lcom/sonyericsson/ned/glue/DelayedRunnable;->cancel()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->timeout:Lcom/sonyericsson/ned/glue/DelayedRunnable;

    .line 242
    :cond_0
    return-void
.end method

.method private endCurrentTapProcess()Z
    .locals 2

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 225
    .local v0, "wasCharInserted":Z
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->cancelTapTimeout()V

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->insertChar(I)Z

    move-result v0

    .line 234
    :cond_0
    return v0
.end method

.method private filterMap(I[[Lcom/sonyericsson/ned/model/CodePointString;)[[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 12
    .param p1, "index"    # I
    .param p2, "map"    # [[Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 186
    aget-object v7, p2, v9

    array-length v7, v7

    filled-new-array {v11, v7}, [I

    move-result-object v7

    const-class v8, Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/sonyericsson/ned/model/CodePointString;

    .line 187
    .local v2, "tempResult":[[Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v0, 0x0

    .line 190
    .local v0, "noValidTokens":I
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    if-eqz v7, :cond_3

    .line 191
    const/4 v5, 0x0

    .local v5, "tokenIndex":I
    :goto_0
    aget-object v7, p2, v9

    array-length v7, v7

    if-ge v5, v7, :cond_3

    .line 195
    aget-object v7, p2, v9

    aget-object v4, v7, v5

    .line 196
    .local v4, "token":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/16 v8, 0x20

    invoke-interface {v7, v8}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 197
    .local v3, "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v7, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->validator:Lcom/sonyericsson/ned/model/IValidator;

    .line 198
    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v8

    .line 197
    invoke-interface {v7, v3, v8, v4}, Lcom/sonyericsson/ned/model/IValidator;->possibleToInsert(Lcom/sonyericsson/ned/model/CodePointString;ILcom/sonyericsson/ned/model/CodePointString;)I

    move-result v6

    .line 200
    .local v6, "validationResult":I
    if-ne v6, v10, :cond_0

    iget-boolean v7, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->strictValidation:Z

    if-eqz v7, :cond_1

    :cond_0
    if-ne v6, v11, :cond_2

    .line 202
    :cond_1
    aget-object v7, v2, v9

    aput-object v4, v7, v0

    .line 203
    aget-object v7, v2, v10

    aget-object v8, p2, v10

    aget-object v8, v8, v5

    aput-object v8, v7, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 191
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 210
    .end local v3    # "textBeforeCursor":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v4    # "token":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v5    # "tokenIndex":I
    .end local v6    # "validationResult":I
    :cond_3
    aget-object v7, p2, v9

    array-length v7, v7

    if-ne v7, v0, :cond_4

    .line 218
    .end local v2    # "tempResult":[[Lcom/sonyericsson/ned/model/CodePointString;
    :goto_1
    return-object v2

    .line 215
    .restart local v2    # "tempResult":[[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_4
    filled-new-array {v11, v0}, [I

    move-result-object v7

    const-class v8, Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/sonyericsson/ned/model/CodePointString;

    .line 216
    .local v1, "result":[[Lcom/sonyericsson/ned/model/CodePointString;
    aget-object v7, v2, v9

    aget-object v8, v1, v9

    invoke-static {v7, v9, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    aget-object v7, v2, v10

    aget-object v8, v1, v10

    invoke-static {v7, v9, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 218
    goto :goto_1
.end method

.method private firePreEditSelectedEvent(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "reason"    # I

    .prologue
    .line 148
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    if-eqz v1, :cond_0

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    aget-object v1, v1, v0

    invoke-interface {v1, p0, p1, p2}, Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;->onSelectionMade(Ljava/lang/Object;II)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private firePreEditSelectionChangedEvent(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "timer"    # J

    .prologue
    .line 140
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->inserting:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    if-eqz v1, :cond_0

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    aget-object v1, v1, v0

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;->onSelectionChanged(Ljava/lang/Object;IJ)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private firePreEditStartingEvent([Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "choices"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 131
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->inserting:Z

    if-nez v1, :cond_0

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    aget-object v1, v1, v0

    invoke-interface {v1, p0, p1}, Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;->onSelectionStarted(Ljava/lang/Object;[Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private getCandidates(Lcom/sonyericsson/ned/controller/VirtualKey;)[[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 7
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v3, p1, v4}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 162
    .local v0, "logicalCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v3, p1, v5}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 164
    .local v2, "visualCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v3, v0

    if-lez v3, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 169
    new-array v1, v6, [[Lcom/sonyericsson/ned/model/CodePointString;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    .line 172
    .local v1, "result":[[Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->behavior:Lcom/sonyericsson/ned/controller/IMultitapBehavior;

    invoke-interface {v3, v1}, Lcom/sonyericsson/ned/controller/IMultitapBehavior;->getReorderedChoices([[Lcom/sonyericsson/ned/model/CodePointString;)[[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 175
    .end local v0    # "logicalCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "result":[[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v2    # "visualCandidates":[Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    return-object v3

    :cond_0
    filled-new-array {v6, v4}, [I

    move-result-object v3

    const-class v4, Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method private getPosition()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->cursor:Lcom/sonyericsson/ned/controller/ICursor;

    invoke-interface {v0}, Lcom/sonyericsson/ned/controller/ICursor;->getPosition()Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/ned/controller/CursorPosition;->getLogicalIndex()I

    move-result v0

    return v0
.end method

.method private getTimeout()J
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->timeoutHandler:Lcom/sonyericsson/ned/controller/IMultitapTimeout;

    invoke-interface {v0}, Lcom/sonyericsson/ned/controller/IMultitapTimeout;->getPreEditTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private handleCommandEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 3
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v2, 0x2

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "consumed":Z
    const-string v1, "toggle-keyboard-mode"

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    invoke-direct {p0, v2}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->selectCurrentMultitapCandidate(I)V

    .line 453
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isModeSwitched:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isModeSwitched:Z

    .line 472
    :cond_0
    :goto_1
    return v0

    .line 453
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 454
    :cond_2
    const-string v1, "perform-enter-key-action"

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    invoke-direct {p0, v2}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->selectCurrentMultitapCandidate(I)V

    .line 456
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->NEW_LINE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 457
    const/4 v0, 0x1

    goto :goto_1

    .line 458
    :cond_3
    const-string v1, "delete-previous-grapheme"

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 459
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->endCurrentTapProcess()Z

    goto :goto_1

    .line 465
    :cond_4
    const-string v1, "select-current-candidate"

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "move-cursor-left"

    .line 466
    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "move-cursor-right"

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "move-cursor-down"

    .line 467
    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "move-cursor-up"

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "move-cursor-word-left"

    .line 468
    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "move-cursor-word-right"

    .line 469
    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    :cond_5
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->endCurrentTapProcess()Z

    move-result v0

    goto :goto_1
.end method

.method private handleVirtualKeyLongPress(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 7
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 333
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->getCandidates(Lcom/sonyericsson/ned/controller/VirtualKey;)[[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 337
    .local v0, "choices":[[Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v0, v6

    array-length v3, v3

    if-ne v3, v5, :cond_1

    .line 338
    iput-boolean v5, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->candidateInserted:Z

    .line 339
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->jumpToNextCandidate(Lcom/sonyericsson/ned/controller/VirtualKey;[[Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 340
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->cancelTapTimeout()V

    .line 341
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->startTapTimeout()V

    .line 362
    :cond_0
    :goto_0
    return v5

    .line 345
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v1

    .line 346
    .local v1, "keyObject":Ljava/lang/Object;
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    if-nez v3, :cond_2

    const/4 v2, 0x0

    .line 347
    .local v2, "prevKeyObject":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    aget-object v3, v0, v6

    array-length v3, v3

    if-le v3, v5, :cond_3

    .line 352
    iput-boolean v5, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->candidateInserted:Z

    .line 353
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->jumpToNextCandidate(Lcom/sonyericsson/ned/controller/VirtualKey;[[Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 354
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->cancelTapTimeout()V

    .line 355
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->startTapTimeout()V

    goto :goto_0

    .line 346
    .end local v2    # "prevKeyObject":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    invoke-virtual {v3}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 356
    .restart local v2    # "prevKeyObject":Ljava/lang/Object;
    :cond_3
    aget-object v3, v0, v6

    array-length v3, v3

    if-ne v3, v5, :cond_0

    iget-boolean v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->candidateInserted:Z

    if-nez v3, :cond_0

    .line 358
    iput-boolean v5, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->candidateInserted:Z

    .line 359
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    aget-object v4, v0, v6

    aget-object v4, v4, v6

    invoke-interface {v3, v4}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    goto :goto_0
.end method

.method private handleVirtualKeyPress(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 7
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "consumed":Z
    iput-boolean v5, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->candidateInserted:Z

    .line 369
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 370
    .local v2, "keyObject":Ljava/lang/Object;
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    if-nez v4, :cond_3

    const/4 v3, 0x0

    .line 371
    .local v3, "prevKeyObject":Ljava/lang/Object;
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->getCandidates(Lcom/sonyericsson/ned/controller/VirtualKey;)[[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 373
    .local v0, "choices":[[Lcom/sonyericsson/ned/model/CodePointString;
    aget-object v4, v0, v5

    array-length v4, v4

    if-lez v4, :cond_6

    .line 381
    if-eqz v3, :cond_0

    if-eq v2, v3, :cond_0

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 383
    invoke-direct {p0, v6}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->selectCurrentMultitapCandidate(I)V

    .line 384
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->getCandidates(Lcom/sonyericsson/ned/controller/VirtualKey;)[[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 391
    :cond_0
    iget-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->preValidation:Z

    if-eqz v4, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->getPosition()I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->filterMap(I[[Lcom/sonyericsson/ned/model/CodePointString;)[[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 396
    :cond_1
    aget-object v4, v0, v5

    array-length v4, v4

    if-le v4, v6, :cond_4

    .line 397
    aget-object v4, v0, v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 398
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->jumpToNextCandidate(Lcom/sonyericsson/ned/controller/VirtualKey;[[Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    .line 399
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->cancelTapTimeout()V

    .line 400
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->startTapTimeout()V

    .line 401
    const/4 v1, 0x1

    .line 420
    :cond_2
    :goto_1
    return v1

    .line 370
    .end local v0    # "choices":[[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v3    # "prevKeyObject":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    invoke-virtual {v4}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 402
    .restart local v0    # "choices":[[Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v3    # "prevKeyObject":Ljava/lang/Object;
    :cond_4
    aget-object v4, v0, v5

    array-length v4, v4

    if-ne v4, v6, :cond_2

    .line 403
    aget-object v4, v0, v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 404
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 405
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isInAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 406
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    iget-object v5, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 407
    iput-boolean v6, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->candidateInserted:Z

    .line 409
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 413
    :cond_6
    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 414
    if-eqz v3, :cond_7

    if-eq v2, v3, :cond_7

    .line 415
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 416
    invoke-direct {p0, v6}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->selectCurrentMultitapCandidate(I)V

    .line 418
    :cond_7
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private handleVirtualKeyRelease(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 5
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 314
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->getCandidates(Lcom/sonyericsson/ned/controller/VirtualKey;)[[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 319
    .local v0, "choices":[[Lcom/sonyericsson/ned/model/CodePointString;
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->candidateInserted:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isInAlphabeticalMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 320
    :cond_0
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 321
    iput-boolean v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->candidateInserted:Z

    .line 329
    :cond_1
    :goto_0
    return v4

    .line 325
    :cond_2
    aget-object v1, v0, v3

    array-length v1, v1

    if-ne v1, v4, :cond_1

    .line 326
    invoke-direct {p0, v4}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->selectCurrentMultitapCandidate(I)V

    .line 327
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    aget-object v2, v0, v3

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    goto :goto_0
.end method

.method private insertChar(I)Z
    .locals 8
    .param p1, "reason"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 258
    const/4 v3, 0x0

    .line 261
    .local v3, "wasCharInserted":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->inserting:Z

    .line 262
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->getPosition()I

    move-result v2

    .line 263
    .local v2, "position":I
    iget v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    if-eq v4, v7, :cond_0

    .line 264
    iget-boolean v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->preValidation:Z

    if-eqz v4, :cond_1

    .line 265
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    invoke-direct {p0, v4}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->getCandidates(Lcom/sonyericsson/ned/controller/VirtualKey;)[[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->filterMap(I[[Lcom/sonyericsson/ned/model/CodePointString;)[[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 269
    .local v0, "charMap":[[Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    aget-object v4, v0, v6

    array-length v4, v4

    if-lez v4, :cond_0

    .line 270
    aget-object v4, v0, v6

    iget v5, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    aget-object v1, v4, v5

    .line 271
    .local v1, "data":Lcom/sonyericsson/ned/model/CodePointString;
    iget v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    invoke-direct {p0, v4, p1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->firePreEditSelectedEvent(II)V

    .line 272
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isInAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 273
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v4, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 277
    :goto_1
    const/4 v3, 0x1

    .line 280
    .end local v0    # "charMap":[[Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "data":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    iput-boolean v6, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->inserting:Z

    .line 283
    iput v7, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    .line 284
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 289
    return v3

    .line 267
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    invoke-direct {p0, v4}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->getCandidates(Lcom/sonyericsson/ned/controller/VirtualKey;)[[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .restart local v0    # "charMap":[[Lcom/sonyericsson/ned/model/CodePointString;
    goto :goto_0

    .line 275
    .restart local v1    # "data":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    goto :goto_1
.end method

.method private isInAlphabeticalMode()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isModeSwitched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isDefaultNumericMode:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isModeSwitched:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isDefaultNumericMode:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jumpToNextCandidate(Lcom/sonyericsson/ned/controller/VirtualKey;[[Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 6
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;
    .param p2, "choices"    # [[Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 424
    iget v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    .line 427
    .local v0, "mapIndexBeforeTap":I
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->behavior:Lcom/sonyericsson/ned/controller/IMultitapBehavior;

    aget-object v2, p2, v4

    const/4 v3, -0x3

    .line 428
    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/VirtualKey;->matchAction(I)Z

    move-result v3

    .line 427
    invoke-interface {v1, v2, v0, v3}, Lcom/sonyericsson/ned/controller/IMultitapBehavior;->getNextIndex([Lcom/sonyericsson/ned/model/CodePointString;IZ)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    .line 430
    iget v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    if-eq v0, v1, :cond_0

    aget-object v1, p2, v4

    array-length v1, v1

    if-gt v1, v5, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKeyCandidate:Lcom/sonyericsson/ned/model/CodePointString;

    .line 431
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 432
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 433
    aget-object v1, p2, v5

    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->firePreEditStartingEvent([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 435
    :cond_2
    iget v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->getTimeout()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->firePreEditSelectionChangedEvent(IJ)V

    .line 437
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->isInAlphabeticalMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    aget-object v2, p2, v4

    iget v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->setComposingText(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 444
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 445
    iput-boolean v5, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->pendingMultitapSelection:Z

    .line 446
    return v5

    .line 440
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    aget-object v2, p2, v4

    iget v3, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    goto :goto_0
.end method

.method private selectCurrentMultitapCandidate(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->pendingMultitapSelection:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->finishComposingText()Z

    .line 295
    iget v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->firePreEditSelectedEvent(II)V

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->pendingMultitapSelection:Z

    .line 302
    :cond_0
    return-void
.end method

.method private startTapTimeout()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->synchronizer:Lcom/sonyericsson/ned/glue/ISynchronize;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->synchronizer:Lcom/sonyericsson/ned/glue/ISynchronize;

    new-instance v1, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$TapTimer;

    invoke-direct {v1, p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$TapTimer;-><init>(Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;)V

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->getTimeout()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/ned/glue/ISynchronize;->synchronize(Ljava/lang/Runnable;J)Lcom/sonyericsson/ned/glue/DelayedRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->timeout:Lcom/sonyericsson/ned/glue/DelayedRunnable;

    .line 248
    :cond_0
    return-void
.end method


# virtual methods
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
    .line 565
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    if-ne p2, v0, :cond_0

    .line 566
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    .line 567
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->listeners:[Lcom/sonyericsson/ned/controller/IMultitapInputMethodListener;

    .line 569
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->bindMany(ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

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
    .line 548
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/IValidator;

    if-ne p2, v0, :cond_0

    .line 549
    check-cast p1, Lcom/sonyericsson/ned/model/IValidator;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->validator:Lcom/sonyericsson/ned/model/IValidator;

    .line 561
    :goto_0
    return-void

    .line 550
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_0
    const-class v0, Lcom/sonyericsson/ned/controller/ICursor;

    if-ne p2, v0, :cond_1

    .line 551
    check-cast p1, Lcom/sonyericsson/ned/controller/ICursor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->cursor:Lcom/sonyericsson/ned/controller/ICursor;

    goto :goto_0

    .line 552
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/controller/IMultitapTimeout;

    if-ne p2, v0, :cond_2

    .line 553
    check-cast p1, Lcom/sonyericsson/ned/controller/IMultitapTimeout;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->timeoutHandler:Lcom/sonyericsson/ned/controller/IMultitapTimeout;

    goto :goto_0

    .line 554
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/glue/ISynchronize;

    if-ne p2, v0, :cond_3

    .line 555
    check-cast p1, Lcom/sonyericsson/ned/glue/ISynchronize;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->synchronizer:Lcom/sonyericsson/ned/glue/ISynchronize;

    goto :goto_0

    .line 556
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/controller/IMultitapBehavior;

    if-ne p2, v0, :cond_4

    .line 557
    check-cast p1, Lcom/sonyericsson/ned/controller/IMultitapBehavior;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->behavior:Lcom/sonyericsson/ned/controller/IMultitapBehavior;

    goto :goto_0

    .line 559
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->endCurrentTapProcess()Z

    .line 580
    invoke-super {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->dispose()V

    .line 581
    return-void
.end method

.method public excludedReopenDelimiters()[C
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    new-array v0, v0, [C

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
    .line 574
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v0, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/controller/EventObject;>;"
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "delete-previous-grapheme"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "delete-previous-word"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "move-cursor-down"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "move-cursor-left"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "move-cursor-right"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "move-cursor-up"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "move-cursor-word-left"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "move-cursor-word-right"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "select-current-candidate"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "toggle-keyboard-mode"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "perform-enter-key-action"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v2, -0x1

    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v2, -0x3

    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v2, -0x5

    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonyericsson/ned/controller/EventObject;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonyericsson/ned/controller/EventObject;

    return-object v1
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 540
    invoke-super {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->init()V

    .line 541
    iput-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->prevKey:Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 542
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->currentMapIndex:I

    .line 543
    iput-object v1, p0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->timeout:Lcom/sonyericsson/ned/glue/DelayedRunnable;

    .line 544
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 3
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "consumed":Z
    instance-of v2, p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-eqz v2, :cond_4

    move-object v1, p1

    .line 514
    check-cast v1, Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 515
    .local v1, "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;->matchAction(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->handleVirtualKeyRelease(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    .line 535
    .end local v1    # "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_0
    :goto_0
    return v0

    .line 517
    .restart local v1    # "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_1
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;->matchAction(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 518
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->handleVirtualKeyLongPress(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    goto :goto_0

    .line 519
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;->matchAction(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->handleVirtualKeyPress(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    goto :goto_0

    .line 521
    :cond_3
    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Lcom/sonyericsson/ned/controller/VirtualKey;->matchAction(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    const/4 v0, 0x0

    goto :goto_0

    .line 532
    .end local v1    # "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->handleCommandEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v0

    goto :goto_0
.end method

.method public onIndexChange(Ljava/lang/Object;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;ILcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p3, "composing"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p4, "reason"    # I
    .param p5, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "characterIndex"    # I

    .prologue
    .line 593
    return-void
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "events"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->endCurrentTapProcess()Z

    .line 504
    return-void
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 586
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->selectCurrentMultitapCandidate(I)V

    .line 588
    return-void
.end method

.method public onUpdateInputView(Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 597
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->selectCurrentMultitapCandidate(I)V

    .line 598
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->cancelTapTimeout()V

    .line 599
    return-void
.end method
