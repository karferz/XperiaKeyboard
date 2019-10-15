.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$27;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getSharedPreferenceString(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$sharedPreferenceValue:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$27;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$27;->val$sharedPreferenceValue:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$27;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1292
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getInstance()Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    move-result-object v0

    .line 1293
    .local v0, "ime":Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    if-nez v0, :cond_0

    .line 1294
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$27;->jobComplete()V

    .line 1301
    :goto_0
    return-void

    .line 1297
    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1298
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$27;->val$sharedPreferenceValue:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$27;->val$key:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;->getSharedPreferenceString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    .line 1300
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$27;->jobComplete()V

    goto :goto_0
.end method
