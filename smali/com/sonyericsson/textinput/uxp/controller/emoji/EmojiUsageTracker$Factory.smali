.class public Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "EmojiUsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 348
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 349
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;-><init>()V

    return-object v0
.end method
