.class public final Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;
.super Ljava/lang/Object;
.source "DebugInformationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileInfo"
.end annotation


# instance fields
.field private final mDate:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;

.field private final mGroup:Ljava/lang/String;

.field private final mOwner:Ljava/lang/String;

.field private final mPermissions:Ljava/lang/String;

.field private final mSize:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "permissions"    # Ljava/lang/String;
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v4, "No size (folder)"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$1;

    .prologue
    .line 139
    invoke-direct/range {p0 .. p5}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "permissions"    # Ljava/lang/String;
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "group"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/String;
    .param p6, "fileName"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mPermissions:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mOwner:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mGroup:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mSize:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mDate:Ljava/lang/String;

    .line 154
    iput-object p6, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mFileName:Ljava/lang/String;

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$1;

    .prologue
    .line 139
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mFileName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permissions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mPermissions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nOwner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nCreation date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nFile/folder name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/util/DebugInformationUtil$FileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
