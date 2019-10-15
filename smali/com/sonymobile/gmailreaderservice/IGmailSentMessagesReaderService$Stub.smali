.class public abstract Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService$Stub;
.super Landroid/os/Binder;
.source "IGmailSentMessagesReaderService.java"

# interfaces
.implements Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.gmailreaderservice.IGmailSentMessagesReaderService"

.field static final TRANSACTION_close:I = 0x4

.field static final TRANSACTION_connectToImap:I = 0x1

.field static final TRANSACTION_getSentMessageHtmlText:I = 0x3

.field static final TRANSACTION_getSentMessagesCount:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sonymobile.gmailreaderservice.IGmailSentMessagesReaderService"

    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.sonymobile.gmailreaderservice.IGmailSentMessagesReaderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.sonymobile.gmailreaderservice.IGmailSentMessagesReaderService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.sonymobile.gmailreaderservice.IGmailSentMessagesReaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService$Stub;->connectToImap(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 53
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 59
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_2
    const-string v3, "com.sonymobile.gmailreaderservice.IGmailSentMessagesReaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService$Stub;->getSentMessagesCount()I

    move-result v2

    .line 61
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v2    # "_result":I
    :sswitch_3
    const-string v3, "com.sonymobile.gmailreaderservice.IGmailSentMessagesReaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService$Stub;->getSentMessageHtmlText(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.sonymobile.gmailreaderservice.IGmailSentMessagesReaderService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/sonymobile/gmailreaderservice/IGmailSentMessagesReaderService$Stub;->close()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
