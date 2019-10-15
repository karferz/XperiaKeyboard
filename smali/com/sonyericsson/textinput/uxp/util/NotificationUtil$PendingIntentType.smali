.class public final enum Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;
.super Ljava/lang/Enum;
.source "NotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PendingIntentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

.field public static final enum ACTIVITY:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

.field public static final enum SERVICE:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 245
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    const-string v1, "ACTIVITY"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->ACTIVITY:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    const-string v1, "SERVICE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->SERVICE:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    .line 244
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->ACTIVITY:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->SERVICE:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    const-class v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    return-object v0
.end method
