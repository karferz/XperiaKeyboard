.class Lcom/sonymobile/runtimeskinning/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mCause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reThrow()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    instance-of v1, v1, Landroid/os/RemoteException;

    if-eqz v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    check-cast v0, Landroid/os/RemoteException;

    .line 45
    .local v0, "re":Landroid/os/RemoteException;
    :goto_0
    throw v0

    .line 42
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .line 43
    .restart local v0    # "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Landroid/os/RemoteException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    .line 47
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    iput-object p2, p0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->mCause:Ljava/lang/Throwable;

    .line 29
    return-void
.end method
