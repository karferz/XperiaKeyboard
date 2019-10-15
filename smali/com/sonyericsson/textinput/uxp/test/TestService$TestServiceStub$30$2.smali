.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$2;
.super Ljava/lang/Object;
.source "TestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;)V
    .locals 0
    .param p1, "this$2"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1404
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->access$900(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->access$1000(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->access$900(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->unregisterListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;

    invoke-static {v0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->access$902(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .line 1408
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->access$1000(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 1409
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;

    invoke-static {v0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;->access$1002(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$30;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 1410
    return-void
.end method
