.class public Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout;
.super Ljava/lang/Object;
.source "CStaticTimeout.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IMultitapTimeout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout$Factory;
    }
.end annotation


# instance fields
.field private final timeout:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout;->timeout:J

    .line 30
    return-void
.end method


# virtual methods
.method public getPreEditTimeout()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout;->timeout:J

    return-wide v0
.end method
