.class public final Lcom/google/android/gms/gass/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/gass/internal/GassResponseParcel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza$765441b7(Lcom/google/android/gms/gass/internal/GassResponseParcel;Landroid/os/Parcel;)V
    .registers 5

    .prologue
    .line 0
    .line 1000
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v1

    .line 0
    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->versionCode:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v2, 0x2

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YY:[B

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YY:[B

    .line 0
    :goto_13
    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza$52910762(Landroid/os/Parcel;I[B)V

    .line 3000
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    .line 0
    return-void

    .line 2000
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/gass/internal/GassResponseParcel;->YX:Lcom/google/android/gms/internal/zzae$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzapv;->zzf(Lcom/google/android/gms/internal/zzapv;)[B

    move-result-object v0

    goto :goto_13
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 7

    .prologue
    .line 0
    .line 5000
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcm(Landroid/os/Parcel;)I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v2, :cond_25

    .line 6000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 7000
    const v4, 0xffff

    and-int/2addr v4, v3

    .line 5000
    packed-switch v4, :pswitch_data_4e

    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_6

    :pswitch_1b
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_6

    :pswitch_20
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzt(Landroid/os/Parcel;I)[B

    move-result-object v0

    goto :goto_6

    :cond_25
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-eq v3, v2, :cond_47

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Overread allowed size end="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_47
    new-instance v2, Lcom/google/android/gms/gass/internal/GassResponseParcel;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/gass/internal/GassResponseParcel;-><init>(I[B)V

    .line 0
    return-object v2

    .line 5000
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_20
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 0
    .line 4000
    new-array v0, p1, [Lcom/google/android/gms/gass/internal/GassResponseParcel;

    .line 0
    return-object v0
.end method
