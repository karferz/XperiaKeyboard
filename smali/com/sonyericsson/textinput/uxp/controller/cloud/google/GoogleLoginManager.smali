.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;
.super Lcom/sonyericsson/textinput/uxp/controller/cloud/AbstractCloudLoginManagerImpl;
.source "GoogleLoginManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_VERBOSE:Z = false

.field private static final ERROR_DIALOG_REQUEST:I = 0x200f1

.field private static final ESSENTIAL_PERMISSIONS:[Ljava/lang/String;

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final GOOGLE_CHOOSE_ACCOUNT:I = 0x18a92

.field private static final GOOGLE_USER_RECOVERABLE_CODE:I = 0x1d97c

.field private static final OPTIONAL_PERMISSIONS:[Ljava/lang/String;

.field private static final RECOVERABLE_ERROR:Ljava/lang/String; = "recoverable"

.field private static final SCOPE:Ljava/lang/String; = "oauth2:server:client_id:489915510622-hop7hlv5d25me0b139knr9uq450c9cr5.apps.googleusercontent.com:api_scope:https://www.googleapis.com/auth/plus.me"

.field private static final SERVER_CLIENT_ID:Ljava/lang/String; = "489915510622-hop7hlv5d25me0b139knr9uq450c9cr5.apps.googleusercontent.com"

.field private static final TAG:Ljava/lang/String;

.field private static final sExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

.field private mOldToken:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->TAG:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionManager;->EMPTY_PERMISSIONS:[Ljava/lang/String;

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->ESSENTIAL_PERMISSIONS:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->OPTIONAL_PERMISSIONS:[Ljava/lang/String;

    .line 86
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->sExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/AbstractCloudLoginManagerImpl;-><init>(Landroid/app/Activity;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;)V

    .line 81
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->IDLE:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mOldToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->handleError(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;

    return-object v0
.end method

.method private getDeviceGoogleAccountName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->getDeviceGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 199
    .local v0, "accounts":[Landroid/accounts/Account;
    const/4 v1, 0x0

    .line 200
    .local v1, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 201
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v1, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 203
    :cond_0
    return-object v1
.end method

.method public static getDeviceGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.GET_ACCOUNTS"
    .end annotation

    .prologue
    .line 216
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 217
    .local v0, "accMan":Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1
.end method

.method private getGoogleAccount(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 155
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 156
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v9

    .line 162
    .local v9, "result":I
    if-eqz v9, :cond_1

    .line 166
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, v9}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->handleUserRecoverableError(I)V

    .line 190
    :goto_0
    return-void

    .line 169
    :cond_0
    const v0, 0x7f070011

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->handleError(I)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->getDeviceGoogleAccountName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mAccountName:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mAccountName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->getGoogleToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 184
    new-array v2, v3, [Ljava/lang/String;

    const-string v1, "com.google"

    aput-object v1, v2, v4

    move-object v1, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 186
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mActivity:Landroid/app/Activity;

    const v1, 0x18a92

    invoke-virtual {v0, v8, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 188
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;

    const-string v1, "Cannot choose among multiple accounts without UI"

    invoke-interface {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;->onFlowEnd(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private getGoogleToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->sExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    return-void
.end method

.method private handleError(I)V
    .locals 4
    .param p1, "message"    # I

    .prologue
    .line 292
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;

    const-string v2, "Google login error "

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;->onFlowEnd(Ljava/lang/String;Z)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/dialogs/CloudUserInteractionActivity;->newFailureDialogIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 297
    .local v0, "dialogIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mActivity:Landroid/app/Activity;

    const v2, 0x200f1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private handleUserRecoverableError(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;

    const-string v1, "handleUserRecoverableError not possible without UI"

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;->onFlowEnd(Ljava/lang/String;Z)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$2;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;)V

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0
.end method


# virtual methods
.method public connectAndGetIdToken(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "oldIdToken"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mContext:Landroid/content/Context;

    .line 125
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getCloudLoginType()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Google:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getTokenData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mOldToken:Ljava/lang/String;

    .line 129
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager$3;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudLoginManager$FlowState:[I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid flow State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->getGoogleAccount(Landroid/content/Context;)V

    .line 142
    :pswitch_1
    return-void

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public getEssentialPermissions()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->ESSENTIAL_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public getFlowState()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    return-object v0
.end method

.method public getOptionalPermissions()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->OPTIONAL_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 306
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 333
    :goto_0
    return v1

    .line 308
    :sswitch_0
    if-ne p2, v3, :cond_0

    .line 309
    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "accountName":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->getGoogleToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 311
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mAccountName:Ljava/lang/String;

    goto :goto_0

    .line 313
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;

    const-string v4, "Authentication activity returned without an account"

    invoke-interface {v3, v4, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;->onFlowEnd(Ljava/lang/String;Z)V

    goto :goto_0

    .line 318
    :sswitch_1
    if-ne p2, v3, :cond_1

    .line 319
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->getGoogleToken(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_1
    if-nez p2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;

    const-string v3, "Operation canceled: The user canceled the process"

    invoke-interface {v2, v3, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;->onFlowEnd(Ljava/lang/String;Z)V

    goto :goto_0

    .line 326
    :cond_2
    const v2, 0x7f070031

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->handleError(I)V

    goto :goto_0

    .line 330
    :sswitch_2
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mListener:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;

    const-string v4, "Google login error"

    invoke-interface {v3, v4, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManagerListener;->onFlowEnd(Ljava/lang/String;Z)V

    goto :goto_0

    .line 306
    nop

    :sswitch_data_0
    .sparse-switch
        0x18a92 -> :sswitch_0
        0x1d97c -> :sswitch_1
        0x200f1 -> :sswitch_2
    .end sparse-switch
.end method

.method public restoreState(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;)V
    .locals 0
    .param p1, "state"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/cloud/google/GoogleLoginManager;->mFlowState:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginManager$FlowState;

    .line 114
    return-void
.end method
