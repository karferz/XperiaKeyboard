.class public Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "EmojiCandidateUsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 102
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 103
    const-string v0, "symbols-type"

    const-string v1, "emoji"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 104
    const-string v0, "session-type"

    const-string v1, "normal"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 105
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker;-><init>()V

    return-object v0
.end method
