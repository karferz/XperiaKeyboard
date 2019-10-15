.class final Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;
.super Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
.source "NativeCrashWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/NativeCrashWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RepeatedMessage"
.end annotation


# instance fields
.field private final messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;


# direct methods
.method public varargs constructor <init>([Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V
    .locals 2
    .param p1, "messages"    # [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .prologue
    const/4 v1, 0x0

    .line 127
    new-array v0, v1, [Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;)V

    .line 128
    iput-object p1, p0, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    .line 129
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 6

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "size":I
    iget-object v3, p0, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 142
    .local v0, "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v0}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->getSize()I

    move-result v5

    add-int/2addr v1, v5

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
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
    .line 133
    iget-object v2, p0, Lcom/crashlytics/android/core/NativeCrashWriter$RepeatedMessage;->messages:[Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 134
    .local v0, "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;->write(Lcom/crashlytics/android/core/CodedOutputStream;)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "message":Lcom/crashlytics/android/core/NativeCrashWriter$ProtobufMessage;
    :cond_0
    return-void
.end method
