.class public Lcom/sonyericsson/ned/controller/multitap/CBasicMultitapTimeout;
.super Ljava/lang/Object;
.source "CBasicMultitapTimeout.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IMultitapTimeout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/multitap/CBasicMultitapTimeout$Factory;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/sonyericsson/collaboration/ObjectFactory;


# instance fields
.field private final timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/sonyericsson/ned/controller/multitap/CBasicMultitapTimeout$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/multitap/CBasicMultitapTimeout$Factory;-><init>()V

    sput-object v0, Lcom/sonyericsson/ned/controller/multitap/CBasicMultitapTimeout;->FACTORY:Lcom/sonyericsson/collaboration/ObjectFactory;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/sonyericsson/ned/controller/multitap/CBasicMultitapTimeout;->timeout:J

    .line 31
    return-void
.end method


# virtual methods
.method public getLongPressTimeout()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/sonyericsson/ned/controller/multitap/CBasicMultitapTimeout;->timeout:J

    return-wide v0
.end method

.method public getPreEditTimeout()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/sonyericsson/ned/controller/multitap/CBasicMultitapTimeout;->timeout:J

    return-wide v0
.end method
