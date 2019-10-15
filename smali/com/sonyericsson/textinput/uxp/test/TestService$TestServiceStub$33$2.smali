.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$2;
.super Ljava/lang/Object;
.source "TestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;)V
    .locals 0
    .param p1, "this$2"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1536
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->access$1200(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->access$1300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->access$1200(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->unregisterListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 1538
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    invoke-static {v0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->access$1202(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->access$1300(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 1541
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$2;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    invoke-static {v0, v2}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->access$1302(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 1542
    return-void
.end method
