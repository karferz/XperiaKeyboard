.class Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "SimpleMenuPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState$1;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;->mValue:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 231
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;->mValue:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    return-void
.end method
