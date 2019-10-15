.class abstract Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.super Ljava/lang/Object;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ProtobufMessage"
.end annotation


# instance fields
.field private final children:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

.field private final tag:I


# direct methods
.method public varargs constructor <init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "children"    # [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->tag:I

    .line 52
    if-eqz p2, :cond_0

    .end local p2    # "children":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    :goto_0
    iput-object p2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .line 53
    return-void

    .line 52
    .restart local p2    # "children":[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/core/NativeCrashWriter;->access$000()[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public getPropertiesSize()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->getSizeNoTag()I

    move-result v0

    .line 62
    .local v0, "size":I
    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    iget v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->tag:I

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    return v0
.end method

.method public getSizeNoTag()I
    .locals 6

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->getPropertiesSize()I

    move-result v1

    .line 74
    .local v1, "size":I
    iget-object v3, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 75
    .local v0, "child":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->getSize()I

    move-result v5

    add-int/2addr v1, v5

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "child":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    :cond_0
    return v1
.end method

.method public write(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 4
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget v1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->tag:I

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    .line 88
    invoke-virtual {p0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->getSizeNoTag()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V

    .line 90
    iget-object v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->children:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 91
    .local v0, "child":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->write(Lcom/crashlytics/android/core/CodedOutputStream;)V

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "child":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    :cond_0
    return-void
.end method

.method public writeProperties(Lcom/crashlytics/android/core/CodedOutputStream;)V
    .locals 0
    .param p1, "cos"    # Lcom/crashlytics/android/core/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    return-void
.end method
