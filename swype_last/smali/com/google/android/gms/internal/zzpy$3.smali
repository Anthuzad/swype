.class final Lcom/google/android/gms/internal/zzpy$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpy;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uq:Lcom/google/android/gms/internal/zzpy;

.field final synthetic us:Lcom/google/android/gms/internal/zzqu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpy;Lcom/google/android/gms/internal/zzqu;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpy$3;->uq:Lcom/google/android/gms/internal/zzpy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpy$3;->us:Lcom/google/android/gms/internal/zzqu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpy$3;->us:Lcom/google/android/gms/internal/zzqu;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqu;->zzc(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
