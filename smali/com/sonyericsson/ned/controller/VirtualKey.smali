.class public Lcom/sonyericsson/ned/controller/VirtualKey;
.super Lcom/sonyericsson/ned/controller/EventObject;
.source "VirtualKey.java"


# static fields
.field public static final CANCEL:I = -0x5

.field public static final END_TRACE:I = -0x7

.field public static final LONG_PRESS:I = -0x3

.field public static final MOVE:I = -0x8

.field public static final PRESS:I = -0x1

.field public static final RELEASE:I = -0x2

.field public static final REPEATED_PRESS:I = -0x4

.field public static final TRACE:I = -0x6


# instance fields
.field private final mAction:I

.field private final mBlockType:Lcom/sonyericsson/ned/controller/EventBlockType;

.field private final mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "blockType"    # Lcom/sonyericsson/ned/controller/EventBlockType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "actionType"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sonyericsson/ned/controller/EventObject;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mObject:Ljava/lang/Object;

    .line 89
    iput p3, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mAction:I

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mBlockType:Lcom/sonyericsson/ned/controller/EventBlockType;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actionType"    # I

    .prologue
    .line 102
    sget-object v0, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_NONE:Lcom/sonyericsson/ned/controller/EventBlockType;

    invoke-direct {p0, v0, p1, p2}, Lcom/sonyericsson/ned/controller/VirtualKey;-><init>(Lcom/sonyericsson/ned/controller/EventBlockType;Ljava/lang/Object;I)V

    .line 103
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 185
    if-ne p0, p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v3

    .line 188
    :cond_1
    instance-of v5, p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-eqz v5, :cond_3

    move-object v2, p1

    .line 189
    check-cast v2, Lcom/sonyericsson/ned/controller/VirtualKey;

    .line 190
    .local v2, "anotherVirtualKey":Lcom/sonyericsson/ned/controller/VirtualKey;
    iget v0, v2, Lcom/sonyericsson/ned/controller/VirtualKey;->mAction:I

    .line 191
    .local v0, "anotherAction":I
    iget-object v1, v2, Lcom/sonyericsson/ned/controller/VirtualKey;->mObject:Ljava/lang/Object;

    .line 192
    .local v1, "anotherObject":Ljava/lang/Object;
    iget v5, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mAction:I

    if-ne v5, v0, :cond_2

    iget-object v5, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mObject:Ljava/lang/Object;

    if-eq v5, v1, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mObject:Ljava/lang/Object;

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mObject:Ljava/lang/Object;

    .line 193
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .end local v0    # "anotherAction":I
    .end local v1    # "anotherObject":Ljava/lang/Object;
    .end local v2    # "anotherVirtualKey":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_3
    move v3, v4

    .line 195
    goto :goto_0
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mAction:I

    return v0
.end method

.method public getBlockType()Lcom/sonyericsson/ned/controller/EventBlockType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mBlockType:Lcom/sonyericsson/ned/controller/EventBlockType;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 180
    iget v1, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mAction:I

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public match(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 1
    .param p1, "obj"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 200
    instance-of v0, p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sonyericsson/ned/controller/VirtualKey;

    .end local p1    # "obj":Lcom/sonyericsson/ned/controller/EventObject;
    iget v0, p1, Lcom/sonyericsson/ned/controller/VirtualKey;->mAction:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/ned/controller/VirtualKey;->matchAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchAction(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 147
    if-gez p1, :cond_0

    iget v0, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mAction:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchObject(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/sonyericsson/ned/controller/VirtualKey;->mAction:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
