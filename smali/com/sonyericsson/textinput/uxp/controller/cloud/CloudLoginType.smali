.class public final enum Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
.super Ljava/lang/Enum;
.source "CloudLoginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

.field private static final CLOUD_SERVER_TOKEN_TYPE_GOOGLE:Ljava/lang/String; = "google"

.field private static final CLOUD_SERVER_TOKEN_TYPE_NPAM2:Ljava/lang/String; = "npTicket"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CLOUD_SERVER_TOKEN_TYPE_NPAM3:Ljava/lang/String; = "idToken"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CLOUD_SERVER_TOKEN_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final DEBUG:Z

.field public static final enum Google:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

.field public static final enum Npam2:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum Npam3:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final enum Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 24
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    const-string v1, "Npam2"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Npam2:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 29
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    const-string v1, "Npam3"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Npam3:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 31
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    const-string v1, "Google"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Google:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Npam2:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Npam3:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Google:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->TAG:Ljava/lang/String;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getUriString(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;
    .locals 2
    .param p0, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    const-string v0, "unknown"

    .line 75
    :goto_0
    return-object v0

    .line 67
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType$1;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$cloud$CloudLoginType:[I

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    const-string v0, "unknown"

    goto :goto_0

    .line 69
    :pswitch_0
    const-string v0, "npTicket"

    goto :goto_0

    .line 71
    :pswitch_1
    const-string v0, "idToken"

    goto :goto_0

    .line 73
    :pswitch_2
    const-string v0, "google"

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isTypeDepricated(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z
    .locals 3
    .param p0, "cloudLoginType"    # Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_0
    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Deprecated;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static safeGetValue(I)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .locals 2
    .param p0, "ordinal"    # I

    .prologue
    .line 50
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->values()[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v0

    .line 51
    .local v0, "values":[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-gt p0, v1, :cond_0

    .line 52
    aget-object v1, v0, p0

    .line 54
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    return-object v0
.end method
