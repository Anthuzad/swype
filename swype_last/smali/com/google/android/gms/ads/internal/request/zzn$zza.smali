.class public Lcom/google/android/gms/ads/internal/request/zzn$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzkl",
        "<",
        "Lcom/google/android/gms/internal/zzfp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzfp;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/request/zzn;->zzc(Lcom/google/android/gms/internal/zzfp;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzfp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/request/zzn$zza;->zza(Lcom/google/android/gms/internal/zzfp;)V

    return-void
.end method
