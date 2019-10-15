.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$24;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->clearSharedPreferences(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$disablePopups:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$24;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$24;->val$disablePopups:Z

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1215
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getInstance()Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    move-result-object v0

    .line 1216
    .local v0, "ime":Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    if-nez v0, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$24;->jobComplete()V

    .line 1225
    :goto_0
    return-void

    .line 1220
    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1221
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$24;->val$disablePopups:Z

    invoke-static {v1, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;->clearSharedPreferences(Landroid/content/SharedPreferences;Z)V

    .line 1223
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$24;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->this$0:Lcom/sonyericsson/textinput/uxp/test/TestService;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/test/TestService;->access$400(Lcom/sonyericsson/textinput/uxp/test/TestService;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->reinitialize()V

    .line 1224
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$24;->jobComplete()V

    goto :goto_0
.end method
