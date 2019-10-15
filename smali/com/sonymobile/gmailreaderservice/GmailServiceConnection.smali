.class public Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;
.super Ljava/lang/Object;
.source "GmailServiceConnection.java"

# interfaces
.implements Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DEBUG:Z = false

.field private static final RECEIVER_FULL_CLASS_NAME:Ljava/lang/String; = "com.sonymobile.gmailreaderservice.IGmailSentMessagesReaderService"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHasServiceConnection:Z

.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private serviceConnected()V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mHasServiceConnection:Z

    .line 89
    iget-object v0, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private waitForServiceConnection()V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mHasServiceConnection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0

    .line 67
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindToGmailService(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 33
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sonymobile.gmailreaderservice.IGmailSentMessagesReaderService"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, "implicitIntent":Landroid/content/Intent;
    invoke-static {p1, v2}, Lcom/sonyericsson/textinput/uxp/util/IntentUtil;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, "explicitIntent":Landroid/content/Intent;
    const/4 v4, 0x1

    invoke-virtual {p1, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->waitForServiceConnection()V

    .line 42
    iget-object v4, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mService:Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_0

    .line 51
    .end local v1    # "explicitIntent":Landroid/content/Intent;
    .end local v2    # "implicitIntent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Ljava/security/GeneralSecurityException;
    sget-object v3, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mService:Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;

    invoke-interface {v1}, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->TAG:Ljava/lang/String;

    const-string v2, "Failed to close service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public connectToImap(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mService:Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;->connectToImap(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSentMessageHtmlText(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mService:Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;

    invoke-interface {v0, p1}, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;->getSentMessageHtmlText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentMessagesCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mService:Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;

    invoke-interface {v0}, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;->getSentMessagesCount()I

    move-result v0

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 79
    invoke-static {p2}, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mService:Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;

    .line 83
    invoke-direct {p0}, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->serviceConnected()V

    .line 84
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/gmailreaderservice/GmailServiceConnection;->mService:Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;

    .line 106
    return-void
.end method
