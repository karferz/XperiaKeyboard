.class public Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;
.super Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;
.source "CBasicInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/method/CBasicInputMethod$Factory;
    }
.end annotation


# static fields
.field private static final EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

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
.field final mLongPressObject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v3, -0x3

    invoke-direct {v2, v4, v3}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/sonyericsson/ned/controller/VirtualKey;

    const/4 v3, -0x5

    invoke-direct {v2, v4, v3}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Ljava/lang/Object;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "perform-enter-key-action"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->BASE_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/EventObject;

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 27
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;->BASE_REQUIRED:[Ljava/lang/Class;

    invoke-static {v4, v0}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/method/CAbstractInputMethod;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->mLongPressObject:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private handleNewKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 3
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v2, p1, v1}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 92
    .local v0, "charsForKey":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v2, v0

    if-lez v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    aget-object v1, v0, v1

    invoke-interface {v2, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 94
    const/4 v1, 0x1

    .line 96
    :cond_0
    return v1
.end method

.method private handleVirtualKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->handleNewKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    return v0
.end method

.method private handleVirtualLongpress(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->keyMap:Lcom/sonyericsson/ned/model/KeyMap;

    invoke-interface {v2, p1, v1}, Lcom/sonyericsson/ned/model/KeyMap;->getCharactersForKey(Lcom/sonyericsson/ned/controller/VirtualKey;Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 78
    .local v0, "charsForKey":[Lcom/sonyericsson/ned/model/CodePointString;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->mLongPressObject:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    aget-object v1, v0, v1

    invoke-interface {v2, v1}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 81
    const/4 v1, 0x1

    .line 83
    :cond_0
    return v1
.end method


# virtual methods
.method public excludedReopenDelimiters()[C
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
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
    .line 33
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 3
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 43
    instance-of v1, p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 44
    check-cast v0, Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 45
    .local v0, "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    invoke-virtual {v0}, Lcom/sonyericsson/ned/controller/VirtualKey;->getActionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 66
    .end local v0    # "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 48
    .restart local v0    # "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->mLongPressObject:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->handleVirtualKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v1

    goto :goto_1

    .line 53
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->handleVirtualLongpress(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v1

    goto :goto_1

    .line 55
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->mLongPressObject:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v0    # "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/ned/controller/Command;

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "perform-enter-key-action"

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod;->textBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->insert(Lcom/sonyericsson/ned/model/CodePointString;)Z

    .line 63
    const/4 v1, 0x1

    goto :goto_1

    .line 45
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
