.class Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;
.super Ljava/lang/Object;
.source "OmsSkinGlueFactory.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;


# direct methods
.method constructor <init>(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;->this$1:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;->this$1:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    invoke-static {p2}, Lcom/sonymobile/runtimeskinning/ISkinManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/runtimeskinning/ISkinManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->access$102(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;Lcom/sonymobile/runtimeskinning/ISkinManager;)Lcom/sonymobile/runtimeskinning/ISkinManager;

    .line 170
    invoke-static {}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "SkinGlueOMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;->this$1:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    invoke-static {v2}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->access$100(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)Lcom/sonymobile/runtimeskinning/ISkinManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;->this$1:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    invoke-static {v0}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->access$300(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;->this$1:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    invoke-static {v0}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->access$300(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;->this$1:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    invoke-static {v0}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->access$400(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 178
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;->this$1:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    invoke-static {v0}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->access$300(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 191
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;->this$1:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->access$102(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;Lcom/sonymobile/runtimeskinning/ISkinManager;)Lcom/sonymobile/runtimeskinning/ISkinManager;

    .line 194
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms$1;->this$1:Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;

    invoke-static {v0}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;->access$500(Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory$SkinGlueOms;)V

    .line 195
    invoke-static {}, Lcom/sonymobile/runtimeskinning/OmsSkinGlueFactory;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "SkinGlueOMS"

    const-string v1, "onServiceDisconnected mService=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    return-void
.end method
