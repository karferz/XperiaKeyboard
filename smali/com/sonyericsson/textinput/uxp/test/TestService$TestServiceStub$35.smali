.class Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$35;
.super Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;->getPreviewShowTime()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field final synthetic val$measureTime:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$35;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$35;->val$measureTime:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$35;->val$measureTime:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/MeasurementUtil;->getMeasuredTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    .line 1680
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$35;->val$measureTime:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$35;->setJobResult(Z)V

    .line 1681
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$35;->jobComplete()V

    .line 1682
    return-void

    .line 1680
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
