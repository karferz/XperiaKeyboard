.class public abstract Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;
.super Landroid/os/Binder;
.source "ITestService.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/test/ITestService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/test/ITestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonyericsson.textinput.uxp.test.ITestService"

.field static final TRANSACTION_activateBackupAndSync:I = 0x1e

.field static final TRANSACTION_activateLearning:I = 0x22

.field static final TRANSACTION_activateMeasurements:I = 0x23

.field static final TRANSACTION_addActiveLanguageLayout:I = 0x3

.field static final TRANSACTION_clearActiveLanguageLayouts:I = 0x6

.field static final TRANSACTION_clearDevicePredictionData:I = 0x1f

.field static final TRANSACTION_clearEmojiUsageDatabase:I = 0x20

.field static final TRANSACTION_clearSharedPreferences:I = 0x1b

.field static final TRANSACTION_clearSyncedUserData:I = 0x21

.field static final TRANSACTION_getCandidateLayout:I = 0x10

.field static final TRANSACTION_getEmojiBottomRow:I = 0xc

.field static final TRANSACTION_getEmojiLayout:I = 0xa

.field static final TRANSACTION_getEmojiTabs:I = 0xb

.field static final TRANSACTION_getKeyboardConstraints:I = 0x1c

.field static final TRANSACTION_getKeyboardLayout:I = 0x7

.field static final TRANSACTION_getKeyboardShiftState:I = 0x1d

.field static final TRANSACTION_getLanguages:I = 0xd

.field static final TRANSACTION_getLayouts:I = 0xe

.field static final TRANSACTION_getPreviewShowTime:I = 0x24

.field static final TRANSACTION_getPrimaryLanguageIso3:I = 0x9

.field static final TRANSACTION_getPrimaryLayoutId:I = 0x8

.field static final TRANSACTION_getSharedPreferenceInt:I = 0x17

.field static final TRANSACTION_getSharedPreferenceLong:I = 0x18

.field static final TRANSACTION_getSharedPreferenceString:I = 0x1a

.field static final TRANSACTION_isCandidateBarHidden:I = 0x2

.field static final TRANSACTION_isInputViewShown:I = 0x1

.field static final TRANSACTION_reInitializeTextInput:I = 0x12

.field static final TRANSACTION_removeLanguage:I = 0x5

.field static final TRANSACTION_setInputMode:I = 0xf

.field static final TRANSACTION_setPrimaryLanguage:I = 0x4

.field static final TRANSACTION_setSetupWizardDisabled:I = 0x13

.field static final TRANSACTION_setSharedPreference:I = 0x14

.field static final TRANSACTION_setSharedPreferenceInt:I = 0x15

.field static final TRANSACTION_setSharedPreferenceLong:I = 0x16

.field static final TRANSACTION_setSharedPreferenceString:I = 0x19

.field static final TRANSACTION_waitForPendingPredictions:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p0, p0, v0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/textinput/uxp/test/ITestService;
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
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sonyericsson/textinput/uxp/test/ITestService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sonyericsson/textinput/uxp/test/ITestService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 363
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->isInputViewShown()Z

    move-result v4

    .line 49
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v4, :cond_0

    move v1, v6

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 55
    .end local v4    # "_result":Z
    :sswitch_2
    const-string v7, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->isCandidateBarHidden()Z

    move-result v4

    .line 57
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v4, :cond_1

    move v1, v6

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v4    # "_result":Z
    :sswitch_3
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->addActiveLanguageLayout(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->setPrimaryLanguage(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->removeLanguage(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->clearActiveLanguageLayouts()V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 99
    :sswitch_7
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getKeyboardLayout()[Lcom/sonyericsson/textinput/uxp/test/TestKey;

    move-result-object v4

    .line 101
    .local v4, "_result":[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 107
    .end local v4    # "_result":[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    :sswitch_8
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getPrimaryLayoutId()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v4

    .line 117
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getEmojiLayout()[Lcom/sonyericsson/textinput/uxp/test/TestEmoji;

    move-result-object v4

    .line 125
    .local v4, "_result":[Lcom/sonyericsson/textinput/uxp/test/TestEmoji;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 131
    .end local v4    # "_result":[Lcom/sonyericsson/textinput/uxp/test/TestEmoji;
    :sswitch_b
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getEmojiTabs()[Lcom/sonyericsson/textinput/uxp/test/TestKey;

    move-result-object v4

    .line 133
    .local v4, "_result":[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 139
    .end local v4    # "_result":[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    :sswitch_c
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getEmojiBottomRow()[Lcom/sonyericsson/textinput/uxp/test/TestKey;

    move-result-object v4

    .line 141
    .restart local v4    # "_result":[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 147
    .end local v4    # "_result":[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    :sswitch_d
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getLanguages()[Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_e
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getLayouts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 159
    .restart local v4    # "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":[Ljava/lang/String;
    :sswitch_f
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->setInputMode(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 174
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_10
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getCandidateLayout()[Lcom/sonyericsson/textinput/uxp/test/TestKey;

    move-result-object v4

    .line 176
    .local v4, "_result":[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v4, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 182
    .end local v4    # "_result":[Lcom/sonyericsson/textinput/uxp/test/TestKey;
    :sswitch_11
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->waitForPendingPredictions()V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 189
    :sswitch_12
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->reInitializeTextInput()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 196
    :sswitch_13
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->setSetupWizardDisabled()V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 203
    :sswitch_14
    const-string v7, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v6

    .line 208
    .local v2, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->setSharedPreference(Ljava/lang/String;Z)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2    # "_arg1":Z
    :cond_2
    move v2, v1

    .line 207
    goto :goto_1

    .line 214
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_15
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->setSharedPreferenceInt(Ljava/lang/String;I)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 225
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_16
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 230
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->setSharedPreferenceLong(Ljava/lang/String;J)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 236
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    :sswitch_17
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getSharedPreferenceInt(Ljava/lang/String;)I

    move-result v4

    .line 240
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_18
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getSharedPreferenceLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 250
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 256
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":J
    :sswitch_19
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->setSharedPreferenceString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 267
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    :sswitch_1a
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getSharedPreferenceString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string v7, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v0, v6

    .line 280
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->clearSharedPreferences(Z)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v1

    .line 279
    goto :goto_2

    .line 286
    :sswitch_1c
    const-string v7, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getKeyboardConstraints()Landroid/graphics/Rect;

    move-result-object v4

    .line 288
    .local v4, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v4, :cond_4

    .line 290
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    invoke-virtual {v4, p3, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 294
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 300
    .end local v4    # "_result":Landroid/graphics/Rect;
    :sswitch_1d
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getKeyboardShiftState()I

    move-result v4

    .line 302
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 308
    .end local v4    # "_result":I
    :sswitch_1e
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->activateBackupAndSync()Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_1f
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->clearDevicePredictionData()V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 323
    :sswitch_20
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->clearEmojiUsageDatabase()V

    .line 325
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 330
    :sswitch_21
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->clearSyncedUserData()Ljava/lang/String;

    move-result-object v4

    .line 332
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_22
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->activateLearning(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 347
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_23
    const-string v7, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v6

    .line 350
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->activateMeasurements(Z)V

    .line 351
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_5
    move v0, v1

    .line 349
    goto :goto_3

    .line 356
    :sswitch_24
    const-string v1, "com.sonyericsson.textinput.uxp.test.ITestService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;->getPreviewShowTime()J

    move-result-wide v4

    .line 358
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
