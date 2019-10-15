.class final Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseClearer;
.super Ljava/lang/Object;
.source "WhiteListDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseClearer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseClearer;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseClearer;->mContext:Landroid/content/Context;

    .line 262
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseClearer;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$DatabaseClearer;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;->access$000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase;Landroid/content/Context;)V

    .line 267
    return-void
.end method
