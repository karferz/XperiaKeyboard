.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;
.super Landroid/app/Activity;
.source "PersonalizerLoginActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field public static final BROADCAST_ACTION:Ljava/lang/String; = "personalizer_login"

.field public static final BROADCAST_EXTRA_RESULT:Ljava/lang/String; = "personalizer_login_result"

.field public static final BROADCAST_EXTRA_SERVICE_ID:Ljava/lang/String; = "personalizer_login_service_id"

.field private static final GMAIL_TOKEN_TYPE:Ljava/lang/String; = "oauth2:https://mail.google.com/"

.field public static final LOGIN_RESULT_EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final LOGIN_RESULT_EXTRA_CONSUMER_KEY:Ljava/lang/String; = "consumer_key"

.field public static final LOGIN_RESULT_EXTRA_CONSUMER_SECRET:Ljava/lang/String; = "consumer_secret"

.field public static final LOGIN_RESULT_EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final LOGIN_RESULT_EXTRA_TOKEN_SECRET:Ljava/lang/String; = "token_secret"

.field public static final START_BROADCAST_RESULT_NEEDED:Ljava/lang/String; = "broadcast_result_needed"

.field public static final START_SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mIsResultBroadcastNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;
    .param p1, "x1"    # Landroid/accounts/AccountManager;
    .param p2, "x2"    # Landroid/accounts/Account;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->authorizeGmailAccount(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Landroid/accounts/Account;

    .prologue
    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->finishSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->finishFail(IZ)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private authorizeGmailAccount(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V
    .locals 8
    .param p1, "am"    # Landroid/accounts/AccountManager;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string v2, "oauth2:https://mail.google.com/"

    move-object v0, p1

    move-object v1, p2

    move-object v4, p0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v7

    .line 154
    .local v7, "resultBundle":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;

    invoke-direct {v0, p0, v7, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;Landroid/accounts/AccountManagerFuture;Landroid/accounts/Account;)V

    .line 172
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$3;->start()V

    .line 173
    return-void
.end method

.method private createChooseGoogleAccountDialog(Landroid/accounts/AccountManager;[Landroid/accounts/Account;)V
    .locals 4
    .param p1, "manager"    # Landroid/accounts/AccountManager;
    .param p2, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0700ec

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 132
    array-length v3, p2

    new-array v2, v3, [Ljava/lang/String;

    .line 133
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 134
    aget-object v3, p2, v1

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_0
    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$1;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity$2;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;Landroid/accounts/AccountManager;[Landroid/accounts/Account;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 149
    return-void
.end method

.method public static createIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceId"    # I

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "serviceId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    return-object v0
.end method

.method private finishFail(IZ)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "broadCastResult"    # Z

    .prologue
    .line 190
    if-eqz p2, :cond_0

    .line 191
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->setAndBroadcastResult(IILandroid/content/Intent;)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->finish()V

    .line 195
    return-void
.end method

.method private finishSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;
    .param p4, "consumerKey"    # Ljava/lang/String;
    .param p5, "consumerSecret"    # Ljava/lang/String;
    .param p6, "account"    # Landroid/accounts/Account;

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "serviceId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    const-string v1, "token"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "token_secret"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "consumer_key"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "consumer_secret"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "account"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->setAndBroadcastResult(IILandroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->finish()V

    .line 187
    return-void
.end method

.method private setAndBroadcastResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    if-nez p3, :cond_2

    .line 111
    invoke-virtual {p0, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->setResult(I)V

    .line 116
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->mIsResultBroadcastNeeded:Z

    if-eqz v1, :cond_1

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "personalizer_login"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "personalizer_login_service_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v1, "personalizer_login_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    if-eqz p3, :cond_0

    .line 121
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 125
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 113
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 71
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 72
    const-string v4, "serviceId"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 73
    .local v3, "serviceId":I
    const-string v4, "broadcast_result_needed"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->mIsResultBroadcastNeeded:Z

    .line 75
    packed-switch v3, :pswitch_data_0

    .line 92
    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 97
    .end local v3    # "serviceId":I
    :goto_0
    return-void

    .line 78
    .restart local v3    # "serviceId":I
    :pswitch_0
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->getDeviceGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 79
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v4, v0

    if-le v4, v6, :cond_0

    .line 81
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->createChooseGoogleAccountDialog(Landroid/accounts/AccountManager;[Landroid/accounts/Account;)V

    goto :goto_0

    .line 82
    :cond_0
    array-length v4, v0

    if-ne v4, v6, :cond_1

    .line 84
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    aget-object v5, v0, v5

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->authorizeGmailAccount(Landroid/accounts/AccountManager;Landroid/accounts/Account;)V

    goto :goto_0

    .line 87
    :cond_1
    const/4 v4, 0x2

    invoke-direct {p0, v4, v6}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->finishFail(IZ)V

    goto :goto_0

    .line 95
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "serviceId":I
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->finish()V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerLoginActivity;->mDialog:Landroid/app/Dialog;

    .line 106
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    return-void
.end method
