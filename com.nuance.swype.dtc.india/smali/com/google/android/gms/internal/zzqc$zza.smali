.class final Lcom/google/android/gms/internal/zzqc$zza;
.super Ljava/lang/ref/PhantomReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lcom/google/android/gms/common/api/zzc",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final sx:I

.field final synthetic uQ:Lcom/google/android/gms/internal/zzqc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/common/api/zzc;ILjava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc;",
            "I",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqc$zza;->uQ:Lcom/google/android/gms/internal/zzqc;

    invoke-direct {p0, p2, p4}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p3, p0, Lcom/google/android/gms/internal/zzqc$zza;->sx:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzqc$zza;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzqc$zza;->sx:I

    return v0
.end method
