.class public Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;
.super Ljava/lang/Object;
.source "CBasicDeletionHandler.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/collaboration/Bindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler$Factory;
    }
.end annotation


# static fields
.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field private static final EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

.field private static final FAST_DELETE_COUNT:I = 0x2

.field private static final FLAG_DELETE_COUNT:I = 0x4

.field private static final IS_FLAG_SUPPORTED:Z

.field private static final NORMAL_DELETE_COUNT:I = 0x1

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SURROGATE_PAIR_DELETE_COUNT:I = 0x2


# instance fields
.field private mRepeatDeleteCount:I

.field private mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isFlagEmojiSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->IS_FLAG_SUPPORTED:Z

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "delete-previous-grapheme"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "repeat-delete-previous-grapheme"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 53
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private getEmojiSequenceLength()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "done":Z
    const/4 v1, 0x0

    .line 141
    .local v1, "length":I
    :goto_0
    if-nez v0, :cond_6

    .line 142
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    add-int/lit8 v5, v1, 0x2

    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-static {v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isSkinTone(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    add-int/lit8 v5, v1, 0x4

    .line 144
    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-direct {p0, v4}, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->isSurrogatePair(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    add-int/lit8 v1, v1, 0x4

    .line 165
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "previous":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-ne v4, v5, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x200d

    if-ne v4, v5, :cond_5

    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 172
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isZwjSequencesSupported()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x1

    :goto_2
    goto :goto_0

    .line 149
    .end local v2    # "previous":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    add-int/lit8 v5, v1, 0x1

    .line 150
    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v4

    .line 149
    invoke-static {v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isVariationSelection(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    add-int/lit8 v5, v1, 0x3

    .line 151
    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-direct {p0, v4}, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->isSurrogatePair(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 155
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 156
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    add-int/lit8 v5, v1, 0x2

    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 157
    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-direct {p0, v4}, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->isSurrogatePair(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    add-int/lit8 v5, v1, 0x1

    .line 158
    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v4

    .line 157
    invoke-static {v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isVariationSelection(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 163
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .restart local v2    # "previous":Ljava/lang/String;
    :cond_4
    move v0, v3

    .line 172
    goto :goto_2

    .line 174
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 177
    .end local v2    # "previous":Ljava/lang/String;
    :cond_6
    return v1
.end method

.method private isMarshmallowSupportedFlagSequence()Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 120
    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 121
    .local v0, "codePointString":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toIntArray()[I

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isMarshmallowSupportedFlag([I)Z

    move-result v1

    .line 124
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSurrogatePair(Ljava/lang/String;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "isSurrogatePair":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 192
    .local v0, "high":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 193
    .local v2, "low":C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const/4 v1, 0x1

    .line 197
    .end local v0    # "high":C
    .end local v2    # "low":C
    :cond_0
    return v1
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
    .line 219
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
    .line 212
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_0

    .line 213
    check-cast p1, Lcom/sonyericsson/ned/model/ITextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 215
    :cond_0
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x6

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
    .line 229
    sget-object v0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 6
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 67
    instance-of v4, p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-nez v4, :cond_8

    const-string v4, "repeat-delete-previous-grapheme"

    .line 68
    invoke-virtual {p1, v4}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "delete-previous-grapheme"

    .line 69
    invoke-virtual {p1, v4}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 71
    :cond_0
    const-string v4, "delete-previous-grapheme"

    invoke-virtual {p1, v4}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    iput v3, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mRepeatDeleteCount:I

    .line 77
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v4, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 79
    .local v1, "previousText":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 80
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toIntArray()[I

    move-result-object v4

    aget v4, v4, v3

    .line 79
    invoke-static {v4}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isPictogram(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 81
    iput v3, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mRepeatDeleteCount:I

    .line 87
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isVariationSelection(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 89
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->delete(I)Z

    .line 110
    .end local v1    # "previousText":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_1
    return v2

    .line 73
    :cond_2
    const-string v4, "repeat-delete-previous-grapheme"

    invoke-virtual {p1, v4}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    iget v4, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mRepeatDeleteCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mRepeatDeleteCount:I

    goto :goto_0

    .line 90
    .restart local v1    # "previousText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_3
    sget-boolean v3, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->IS_FLAG_SUPPORTED:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->isMarshmallowSupportedFlagSequence()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Lcom/sonyericsson/ned/model/ITextBuffer;->delete(I)Z

    goto :goto_1

    .line 97
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->getEmojiSequenceLength()I

    move-result v0

    .line 98
    .local v0, "emojiSequenceLength":I
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v0}, Lcom/sonyericsson/ned/model/ITextBuffer;->delete(I)Z

    goto :goto_1

    .line 100
    .end local v0    # "emojiSequenceLength":I
    :cond_5
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->isSurrogatePair(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 101
    iput v3, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mRepeatDeleteCount:I

    .line 102
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->delete(I)Z

    goto :goto_1

    .line 103
    :cond_6
    iget v3, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mRepeatDeleteCount:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_7

    .line 104
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v5}, Lcom/sonyericsson/ned/model/ITextBuffer;->delete(I)Z

    goto :goto_1

    .line 106
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-interface {v3, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->delete(I)Z

    goto :goto_1

    .end local v1    # "previousText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_8
    move v2, v3

    .line 110
    goto :goto_1
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "events"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 203
    return-void
.end method
