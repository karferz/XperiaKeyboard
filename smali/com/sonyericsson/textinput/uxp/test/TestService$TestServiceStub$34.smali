.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->activateLearning(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLoginBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonalizeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

.field private mPersonalizerManagerListener:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;

.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$serviceIdToTest:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 1580
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->val$serviceIdToTest:I

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1593
    const-string v3, "Timeout"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->setFailureMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 1595
    new-instance v3, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$1;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;)V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->mLoginBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1609
    new-instance v3, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$2;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;)V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->mPersonalizeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1624
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v3, v3, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    .line 1625
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;

    move-result-object v0

    .line 1626
    .local v0, "localBroadcastManager":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "personalizer_login"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1628
    .local v1, "loginBroadcastIntentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->mLoginBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1630
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "personalizer_service"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1632
    .local v2, "personalizeBroadcastIntentFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->mPersonalizeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1635
    new-instance v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    invoke-direct {v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    .line 1636
    new-instance v3, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$3;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34$3;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;)V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->mPersonalizerManagerListener:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;

    .line 1648
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->mPersonalizerManagerListener:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;

    .line 1649
    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->setPersonalizerManagerListener(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager$IPersonalizerManagerListener;)V

    .line 1650
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->mPersonalizerManager:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$34;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v4, v4, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerManager;->bindToService(Landroid/content/Context;)V

    .line 1651
    return-void
.end method
