.class public final Lcom/google/android/gms/internal/zzfc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/gms/internal/zzfb;",
        ">;"
    }
.end annotation


# instance fields
.field public final zzbje:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzfb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzbje:Ljava/util/List;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzlh;)Z
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzfc;->zzf(Lcom/google/android/gms/internal/zzlh;)Lcom/google/android/gms/internal/zzfb;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfb;->zzbjb:Lcom/google/android/gms/internal/zzfd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfd;->abort()V

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static zzf(Lcom/google/android/gms/internal/zzlh;)Lcom/google/android/gms/internal/zzfb;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfc;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfb;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzfb;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    if-ne v2, p0, :cond_8

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gms/internal/zzfb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzbje:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
