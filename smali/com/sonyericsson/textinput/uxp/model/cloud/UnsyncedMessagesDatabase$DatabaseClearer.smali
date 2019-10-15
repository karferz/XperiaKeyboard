.class final Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseClearer;
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
    name = "DatabaseClearer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseClearer;->this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseClearer;->mContext:Landroid/content/Context;

    .line 271
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseClearer;->this$0:Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$DatabaseClearer;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;->access$300(Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;Landroid/content/Context;)V

    .line 276
    return-void
.end method
