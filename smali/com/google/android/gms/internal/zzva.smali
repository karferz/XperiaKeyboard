.class public final Lcom/google/android/gms/internal/zzva;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/HintRequest;Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.auth.api.credentials.PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.credentials.hintRequestVersion"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.credentials.RequestType"

    const-string v2, "Hints"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.credentials.PasswordSpecification"

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.credentials.HintRequest"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;Landroid/content/Intent;Ljava/lang/String;)V

    return-object v0
.end method
