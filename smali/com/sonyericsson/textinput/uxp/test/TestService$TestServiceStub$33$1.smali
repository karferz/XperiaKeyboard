.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$1;
.super Ljava/lang/Object;
.source "TestService.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->clearDeviceSyncMessageDatabase()V
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
    .line 1505
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$1;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingsChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1509
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_OLD_BACKUP_AND_SYNC_DATA_EXISTS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33$1;->this$2:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$33;->jobComplete()V

    .line 1512
    :cond_0
    return-void
.end method
