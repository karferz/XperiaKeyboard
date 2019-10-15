.class final Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseCloser;
.super Ljava/lang/Object;
.source "UnsyncedMessagesDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseCloser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseCloser;->this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$1;

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseCloser;-><init>(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseCloser;->this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->access$200(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;)V

    .line 260
    return-void
.end method
