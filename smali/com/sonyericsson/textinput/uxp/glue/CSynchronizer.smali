.class public Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;
.super Ljava/lang/Object;
.source "CSynchronizer.java"

# interfaces
.implements Lcom/sonyericsson/ned/glue/ISynchronize;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Scheduled;,
        Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Factory;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/sonyericsson/collaboration/ObjectFactory;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Factory;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;->FACTORY:Lcom/sonyericsson/collaboration/ObjectFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public synchronize(Ljava/lang/Runnable;J)Lcom/sonyericsson/ned/glue/DelayedRunnable;
    .locals 2
    .param p1, "code"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Scheduled;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Scheduled;-><init>(Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public synchronize(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/Runnable;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method
