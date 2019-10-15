.class public Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;
.super Ljava/lang/Object;
.source "DoubleSpaceHandler.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/model/ITextBufferListener;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;
.implements Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;
.implements Lcom/sonyericsson/ned/controller/ICursorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler$Factory;
    }
.end annotation


# static fields
.field private static final COLON_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

.field private static final DEVANAGARI_DANDA_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

.field private static final DOT_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SPACE_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

.field public static final TIME_INTERVAL_DOUBLE_TAP_SPACE:J = 0x3e8L


# instance fields
.field private mAutoChanged:Z

.field protected mCurrentCase:I

.field protected mKeyMap:Lcom/sonyericsson/ned/model/KeyMap;

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field protected final mLanguages:[Ljava/lang/String;

.field private mLastInsertedSpaceTime:J

.field protected mMapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

.field protected mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

.field private mSpaceKeyPressed:Z

.field private mStopNextSpace:Z

.field private mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

.field private mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-string v0, "  "

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->SPACE_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 57
    const-string v0, ". "

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->DOT_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 58
    const-string v0, "\u0964 "

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->DEVANAGARI_DANDA_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 59
    const-string v0, ": "

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->COLON_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/ned/controller/ICursor;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/ned/model/IWaitForTextModifications;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguages:[Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 78
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private getReplacementString()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    const-string v0, "hin"

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguages:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->DEVANAGARI_DANDA_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 212
    :goto_0
    return-object v0

    .line 208
    :cond_0
    const-string v0, "hye"

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguages:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    sget-object v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->COLON_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0

    .line 212
    :cond_1
    sget-object v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->DOT_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method private handleNewText(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 3
    .param p1, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "commitedText"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mAutoChanged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->getReplacementString()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mAutoChanged:Z

    .line 143
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mSpaceKeyPressed:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mStopNextSpace:Z

    .line 144
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 145
    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0

    :cond_1
    move v1, v2

    .line 143
    goto :goto_1
.end method

.method private handleRestoreAutoCorrectionCommand()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-boolean v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mAutoChanged:Z

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->getReplacementString()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    .line 176
    invoke-interface {v2, v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 178
    .local v0, "text":Lcom/sonyericsson/ned/model/CodePointString;
    iput-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mAutoChanged:Z

    .line 180
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->getReplacementString()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->getReplacementString()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    sget-object v3, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->SPACE_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->replace(ILcom/sonyericsson/ned/model/CodePointString;)Z

    .line 182
    const/4 v1, 0x1

    .line 186
    .end local v0    # "text":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    return v1
.end method

.method private handleSelectCandidateCommand()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mSpaceKeyPressed:Z

    .line 191
    return v0
.end method

.method private handleVirtualKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 8
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "consumed":Z
    iget-boolean v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mSpaceKeyPressed:Z

    .line 223
    .local v1, "lastSpaceKeyPressed":Z
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->isSpaceKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mSpaceKeyPressed:Z

    .line 225
    iget-boolean v4, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mSpaceKeyPressed:Z

    if-eqz v4, :cond_1

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 228
    .local v2, "currentTimeMillis":J
    iget-boolean v4, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mStopNextSpace:Z

    if-eqz v4, :cond_2

    .line 229
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mStopNextSpace:Z

    .line 230
    const/4 v0, 0x1

    .line 240
    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLastInsertedSpaceTime:J

    .line 243
    .end local v2    # "currentTimeMillis":J
    :cond_1
    return v0

    .line 231
    .restart local v2    # "currentTimeMillis":J
    :cond_2
    iget-wide v4, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLastInsertedSpaceTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 232
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_3
    iget-wide v4, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLastInsertedSpaceTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 235
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->shouldDoubleSpaceReplaceText()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->replaceSpaceBeforeCursor()Z

    move-result v0

    goto :goto_0
.end method

.method private isSpaceKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 3
    .param p1, "virtualKey"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mKeyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v2, p1, v1}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 170
    .local v0, "charsForKey":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    if-lez v2, :cond_0

    aget-object v2, v0, v1

    .line 171
    invoke-virtual {v2, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private replaceSpaceBeforeCursor()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 216
    iput-boolean v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mAutoChanged:Z

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->getReplacementString()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->replace(ILcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    return v0
.end method

.method private shouldDoubleSpaceReplaceText()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v3, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 196
    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    .line 195
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/ned/model/CodePointString;->substring(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 197
    .local v0, "lastTwoCharacters":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->getComposingText()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 202
    invoke-virtual {v0, v2}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
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
    .line 99
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
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
    .line 104
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_1

    .line 105
    check-cast p1, Lcom/sonyericsson/ned/model/ITextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_2

    .line 107
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 108
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    if-ne p2, v0, :cond_3

    .line 109
    check-cast p1, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mMapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    goto :goto_0

    .line 110
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    if-ne p2, v0, :cond_0

    .line 111
    check-cast p1, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 156
    const/16 v0, 0xc

    return v0
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
    .line 117
    sget-object v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 5

    .prologue
    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "restore-auto-correction"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "select-candidate"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguages:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLastInsertedSpaceTime:J

    .line 88
    return-void
.end method

.method public initOptional()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->getCurrentCase()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mCurrentCase:I

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguages:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mMapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguages:[Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mCurrentCase:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;->getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mKeyMap:Lcom/sonyericsson/ned/model/KeyMap;

    .line 95
    return-void
.end method

.method public onCaseChanged(IZ)V
    .locals 3
    .param p1, "newCase"    # I
    .param p2, "tapped"    # Z

    .prologue
    .line 287
    iput p1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mCurrentCase:I

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mMapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguages:[Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mCurrentCase:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;->getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mKeyMap:Lcom/sonyericsson/ned/model/KeyMap;

    .line 289
    return-void
.end method

.method public onDeletion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I
    .param p5, "nbrDeleted"    # I

    .prologue
    .line 123
    iput-object p2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mStopNextSpace:Z

    .line 125
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 2
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "consumed":Z
    instance-of v1, p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-eqz v1, :cond_1

    .line 251
    check-cast p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->handleVirtualKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 252
    .restart local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/ned/controller/Command;

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "select-candidate"

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->handleSelectCandidateCommand()Z

    move-result v0

    goto :goto_0

    .line 256
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->handleRestoreAutoCorrectionCommand()Z

    move-result v0

    goto :goto_0
.end method

.method public onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 138
    invoke-direct {p0, p2, p4}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->handleNewText(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 139
    return-void
.end method

.method public onIndexChange(Ljava/lang/Object;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;ILcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p3, "composing"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p4, "reason"    # I
    .param p5, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "characterIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 295
    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    .line 296
    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mStopNextSpace:Z

    .line 297
    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mAutoChanged:Z

    .line 306
    :cond_0
    :goto_0
    iput-object p5, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 307
    return-void

    .line 298
    :cond_1
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p5, v1}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 299
    invoke-virtual {v1, v2}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 300
    invoke-virtual {p5, v1}, Lcom/sonyericsson/ned/model/CodePointString;->startsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p5}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_0

    .line 304
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguages:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "vie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mStopNextSpace:Z

    goto :goto_0
.end method

.method public onInsertion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 131
    invoke-direct {p0, p2, p4}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->handleNewText(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 132
    return-void
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 265
    return-void
.end method

.method public onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mSpaceKeyPressed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p4, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mStopNextSpace:Z

    .line 279
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 283
    return-void
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguages:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mMapRepository:Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;

    iget-object v1, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mLanguages:[Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mCurrentCase:I

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/ned/model/IKeyMapRepositoryV2;->getKeyMap([Ljava/lang/String;I)Lcom/sonyericsson/ned/model/KeyMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mKeyMap:Lcom/sonyericsson/ned/model/KeyMap;

    .line 272
    return-void
.end method

.method public onReplacement(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "replaced"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 151
    iput-object p2, p0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler;->mTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 152
    return-void
.end method

.method public onUpdateInputView(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 311
    return-void
.end method
