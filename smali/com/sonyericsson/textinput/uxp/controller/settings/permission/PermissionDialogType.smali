.class public final enum Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
.super Ljava/lang/Enum;
.source "PermissionDialogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

.field public static final enum Information:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

.field public static final enum Rationale:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

.field public static final enum Unknown:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;


# instance fields
.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    const-string v1, "Unknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    const-string v1, "Rationale"

    invoke-direct {v0, v1, v3, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Rationale:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    const-string v1, "Information"

    invoke-direct {v0, v1, v4, v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Information:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Rationale:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Information:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->mType:I

    .line 19
    return-void
.end method

.method public static get(I)Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 22
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->values()[Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 23
    .local v0, "type":Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
    iget v4, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->mType:I

    if-ne v4, p0, :cond_0

    .line 27
    .end local v0    # "type":Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
    :goto_1
    return-object v0

    .line 22
    .restart local v0    # "type":Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "type":Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;

    return-object v0
.end method


# virtual methods
.method public getDialogType()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogType;->mType:I

    return v0
.end method
