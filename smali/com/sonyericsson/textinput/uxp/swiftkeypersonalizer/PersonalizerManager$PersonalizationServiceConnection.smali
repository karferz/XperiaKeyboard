.class Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;
.super Ljava/lang/Object;
.source "PersonalizerManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalizationServiceConnection"
.end annotation


# instance fields
.field private volatile mConnected:Z

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;)V
    .locals 1

    .prologue
    .line 313
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;->mConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 320
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;->mConnected:Z

    move-object v0, p2

    .line 321
    check-cast v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$PersonalizerServiceBinder;

    .line 322
    .local v0, "binder":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$PersonalizerServiceBinder;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$PersonalizerServiceBinder;->getService()Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->access$102(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .line 323
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->access$400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->access$500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;->this$0:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->access$500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;->onPersonalizerManagerActivation()V

    .line 327
    :cond_0
    monitor-exit v2

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;->mConnected:Z

    .line 333
    return-void
.end method
