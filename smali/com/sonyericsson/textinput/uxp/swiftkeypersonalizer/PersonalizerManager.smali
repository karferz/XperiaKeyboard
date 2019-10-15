.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;
.super Ljava/lang/Object;
.source "PersonalizerManager.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerPreference$IPersonalizationCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;,
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final GMAIL:Ljava/lang/String; = "Gmail"

.field public static final SMS:Ljava/lang/String; = "SMS"

.field private static final TAG:Ljava/lang/String;

.field private static final sListenerLock:Ljava/lang/Object;


# instance fields
.field private final mConnection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;

.field private final mIsLoginRunning:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonalizerManagerListener:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;

.field private mService:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->sListenerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mConnection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mIsLoginRunning:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mService:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mService:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->isLoginRunning(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->startPersonalizationLogin(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->sListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mPersonalizerManagerListener:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;

    return-object v0
.end method

.method private isLoginRunning(I)Z
    .locals 2
    .param p1, "serviceId"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mIsLoginRunning:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private setFailed(I)V
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mConnection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mService:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->setFailed(I)V

    .line 89
    :cond_0
    return-void
.end method

.method private startPersonalization(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "secret"    # Ljava/lang/String;
    .param p5, "consumerKey"    # Ljava/lang/String;
    .param p6, "consumerSecret"    # Ljava/lang/String;
    .param p7, "account"    # Landroid/accounts/Account;

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "serviceId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v1, "token"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v1, "token_secret"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v1, "consumer_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v1, "consumer_secret"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v1, "account"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 300
    instance-of v1, p1, Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 301
    const-string v1, "broadcast_result_needed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 304
    return-void
.end method

.method private startPersonalizationLogin(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I

    .prologue
    const/4 v3, 0x1

    .line 216
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mIsLoginRunning:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    invoke-static {p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->createIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 224
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 225
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    instance-of v1, p1, Landroid/app/Service;

    if-eqz v1, :cond_0

    .line 228
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    const-string v1, "broadcast_result_needed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public bindToService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mConnection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 96
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public createPersonalizer(Landroid/content/Context;I)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I

    .prologue
    .line 127
    packed-switch p2, :pswitch_data_0

    .line 193
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No service with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;

    invoke-direct {v0, p0, p1, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$1;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;Landroid/content/Context;Landroid/content/Context;I)V

    .line 196
    .local v0, "personalizer":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
    :goto_0
    return-object v0

    .line 164
    .end local v0    # "personalizer":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$2;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;Landroid/content/Context;)V

    .line 190
    .restart local v0    # "personalizer":Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/Personalizer;
    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPersonalizerState(I)I
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mService:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mConnection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onPersonalizerLogin(Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "resultCode"    # I
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mIsLoginRunning:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    packed-switch p3, :pswitch_data_0

    .line 276
    :goto_0
    :pswitch_0
    return-void

    .line 250
    :pswitch_1
    const-string v0, "token"

    .line 253
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "token_secret"

    .line 254
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "consumer_key"

    .line 256
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "consumer_secret"

    .line 258
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "account"

    .line 261
    invoke-virtual {p4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/accounts/Account;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 250
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->startPersonalization(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_0

    .line 271
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->setFailed(I)V

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public resetAllStoredStates()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mService:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->resetAllStoredStates()V

    .line 83
    return-void
.end method

.method public setPersonalizerManagerListener(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;)V
    .locals 2
    .param p1, "personalizerManagerListener"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;

    .prologue
    .line 62
    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->sListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mPersonalizerManagerListener:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbindFromService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mConnection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->mConnection:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$PersonalizationServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
