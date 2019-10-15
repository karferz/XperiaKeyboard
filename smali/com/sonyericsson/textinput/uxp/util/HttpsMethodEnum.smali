.class public final enum Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;
.super Ljava/lang/Enum;
.source "HttpsMethodEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum CLEAR_SYNCED_DATA:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum DELETE_USER_DATA:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum GET_DELTA_SINCE:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum GET_DELTA_SINCE_CONT:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum GET_DEVICE_LIST:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum GET_MODEL:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum GET_REFRESH_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum GET_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum POST_MESSAGES:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum POST_MODEL:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum RENEW_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum UNREGISTER_DEVICE:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

.field public static final enum UNREGISTER_USER:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "POST_MESSAGES"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->POST_MESSAGES:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "GET_DELTA_SINCE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_DELTA_SINCE:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "GET_DELTA_SINCE_CONT"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_DELTA_SINCE_CONT:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "POST_MODEL"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->POST_MODEL:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "GET_MODEL"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_MODEL:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "GET_TOKEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    .line 13
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "GET_DEVICE_LIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_DEVICE_LIST:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "DELETE_USER_DATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->DELETE_USER_DATA:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "UNREGISTER_DEVICE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->UNREGISTER_DEVICE:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "UNREGISTER_USER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->UNREGISTER_USER:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "GET_REFRESH_TOKEN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_REFRESH_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    .line 14
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "RENEW_ACCESS_TOKEN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->RENEW_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    const-string v1, "CLEAR_SYNCED_DATA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->CLEAR_SYNCED_DATA:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    .line 11
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->POST_MESSAGES:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_DELTA_SINCE:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_DELTA_SINCE_CONT:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->POST_MODEL:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_MODEL:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_DEVICE_LIST:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->DELETE_USER_DATA:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->UNREGISTER_DEVICE:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->UNREGISTER_USER:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->GET_REFRESH_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->RENEW_ACCESS_TOKEN:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->CLEAR_SYNCED_DATA:Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->$VALUES:[Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->$VALUES:[Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/util/HttpsMethodEnum;

    return-object v0
.end method
