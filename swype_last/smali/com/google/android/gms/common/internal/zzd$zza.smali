.class abstract Lcom/google/android/gms/common/internal/zzd$zza;
.super Lcom/google/android/gms/common/internal/zzd$zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzd$zze",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final statusCode:I

.field public final xF:Landroid/os/Bundle;

.field final synthetic xG:Lcom/google/android/gms/common/internal/zzd;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/zzd;ILandroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzd$zza;->xG:Lcom/google/android/gms/common/internal/zzd;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzd$zze;-><init>(Lcom/google/android/gms/common/internal/zzd;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/zzd$zza;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzd$zza;->xF:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected abstract zzasd()Z
.end method

.method protected abstract zzl(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method protected final synthetic zzv(Ljava/lang/Object;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 0
    check-cast p1, Ljava/lang/Boolean;

    .line 1000
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zza;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzd;->zza$60506585(Lcom/google/android/gms/common/internal/zzd;I)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget v1, p0, Lcom/google/android/gms/common/internal/zzd$zza;->statusCode:I

    sparse-switch v1, :sswitch_data_54

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd$zza;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzd;->zza$60506585(Lcom/google/android/gms/common/internal/zzd;I)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd$zza;->xF:Landroid/os/Bundle;

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zza;->xF:Landroid/os/Bundle;

    const-string/jumbo v1, "pendingIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_25
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzd$zza;->statusCode:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zzd$zza;->zzl(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_b

    :sswitch_30
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzd$zza;->zzasd()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzd$zza;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzd;->zza$60506585(Lcom/google/android/gms/common/internal/zzd;I)V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zzd$zza;->zzl(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_b

    :sswitch_46
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzd$zza;->xG:Lcom/google/android/gms/common/internal/zzd;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzd;->zza$60506585(Lcom/google/android/gms/common/internal/zzd;I)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_30
        0xa -> :sswitch_46
    .end sparse-switch
.end method
