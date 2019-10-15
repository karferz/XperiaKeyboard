.class public abstract Lcom/sonyericsson/ned/controller/EventObject;
.super Ljava/lang/Object;
.source "EventObject.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getBlockType()Lcom/sonyericsson/ned/controller/EventBlockType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract match(Lcom/sonyericsson/ned/controller/EventObject;)Z
.end method

.method public matchAction(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public abstract matchObject(Ljava/lang/Object;)Z
.end method

.method public matchString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
