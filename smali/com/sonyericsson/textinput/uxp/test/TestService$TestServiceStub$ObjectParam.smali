.class final Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;
.super Ljava/lang/Object;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ObjectParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V
    .locals 0

    .prologue
    .line 1694
    .local p0, "this":Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;, "Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam<TE;>;"
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;->this$1:Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;Lcom/sonyericsson/textinput/uxp/test/TestService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/test/TestService$1;

    .prologue
    .line 1694
    .local p0, "this":Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;, "Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam<TE;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub$ObjectParam;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;)V

    return-void
.end method
