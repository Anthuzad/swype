.class public final Lcom/google/android/gms/signin/internal/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/signin/internal/CheckServerAuthResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza$2809d959(Lcom/google/android/gms/signin/internal/CheckServerAuthResult;Landroid/os/Parcel;)V
    .registers 5

    .prologue
    .line 0
    .line 1000
    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzah(Landroid/os/Parcel;I)I

    move-result v0

    .line 0
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->mVersionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->atY:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->atZ:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc$62107c48(Landroid/os/Parcel;ILjava/util/List;)V

    .line 2000
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzai(Landroid/os/Parcel;I)V

    .line 0
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 4000
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzcm(Landroid/os/Parcel;)I

    move-result v3

    const/4 v0, 0x0

    move v2, v1

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v3, :cond_2d

    .line 5000
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 6000
    const v5, 0xffff

    and-int/2addr v5, v4

    .line 4000
    packed-switch v5, :pswitch_data_56

    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_7

    :pswitch_1c
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_7

    :pswitch_21
    invoke-static {p1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_7

    :pswitch_26
    sget-object v0, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_7

    :cond_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-eq v4, v3, :cond_4f

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_4f
    new-instance v3, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;-><init>(IZLjava/util/List;)V

    .line 0
    return-object v3

    .line 4000
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_21
        :pswitch_26
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 0
    .line 3000
    new-array v0, p1, [Lcom/google/android/gms/signin/internal/CheckServerAuthResult;

    .line 0
    return-object v0
.end method
