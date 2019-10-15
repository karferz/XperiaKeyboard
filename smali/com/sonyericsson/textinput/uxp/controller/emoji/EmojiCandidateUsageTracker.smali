.class public final Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;
.super Ljava/lang/Object;
.source "EmojiCandidateUsageTracker.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker$Factory;
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

.field private static final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v3

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->REQUIRED:[Ljava/lang/Class;

    .line 30
    new-array v0, v2, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "select-candidate"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private isEmojiCandidate(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 3
    .param p1, "candidate"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 49
    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v2

    .line 48
    invoke-static {v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isPictogram(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

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
    .line 68
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
    .line 59
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 60
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->mContext:Landroid/content/Context;

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    if-ne p2, v0, :cond_0

    .line 62
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->persistUsageData()V

    .line 88
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 97
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
    .line 73
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->initialize(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 2
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 38
    const-string v1, "select-candidate"

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    check-cast p1, Lcom/sonyericsson/ned/controller/Command;

    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/Command;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 40
    .local v0, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->isEmojiCandidate(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->noteUsage(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 44
    .end local v0    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 55
    return-void
.end method
