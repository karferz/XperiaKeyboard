.class public Lcom/sonyericsson/ned/controller/Command;
.super Lcom/sonyericsson/ned/controller/EventObject;
.source "Command.java"


# instance fields
.field private final mBlockType:Lcom/sonyericsson/ned/controller/EventBlockType;

.field private final mData:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/String;)V
    .locals 1
    .param p1, "blockType"    # Lcom/sonyericsson/ned/controller/EventBlockType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/ned/controller/Command;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "blockType"    # Lcom/sonyericsson/ned/controller/EventBlockType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "data"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/EventObject;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/Command;->mBlockType:Lcom/sonyericsson/ned/controller/EventBlockType;

    .line 63
    iput-object p2, p0, Lcom/sonyericsson/ned/controller/Command;->mName:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/sonyericsson/ned/controller/Command;->mData:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    sget-object v0, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_NONE:Lcom/sonyericsson/ned/controller/EventBlockType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sonyericsson/ned/controller/Command;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "data"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    sget-object v0, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_NONE:Lcom/sonyericsson/ned/controller/EventBlockType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 91
    if-ne p0, p1, :cond_1

    .line 94
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/sonyericsson/ned/controller/Command;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/sonyericsson/ned/controller/Command;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/sonyericsson/ned/controller/Command;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/controller/Command;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBlockType()Lcom/sonyericsson/ned/controller/EventBlockType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/Command;->mBlockType:Lcom/sonyericsson/ned/controller/EventBlockType;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/Command;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/Command;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 1
    .param p1, "obj"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 103
    instance-of v0, p1, Lcom/sonyericsson/ned/controller/Command;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sonyericsson/ned/controller/Command;

    .end local p1    # "obj":Lcom/sonyericsson/ned/controller/EventObject;
    iget-object v0, p1, Lcom/sonyericsson/ned/controller/Command;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/controller/Command;->matchString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchObject(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public matchString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/Command;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/Command;->mName:Ljava/lang/String;

    return-object v0
.end method
