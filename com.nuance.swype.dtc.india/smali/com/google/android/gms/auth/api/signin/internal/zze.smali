.class public final Lcom/google/android/gms/auth/api/signin/internal/zze;
.super Ljava/lang/Object;


# static fields
.field static ef:I


# instance fields
.field public eg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    sput v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->ef:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->eg:I

    return-void
.end method


# virtual methods
.method public final zzba(Z)Lcom/google/android/gms/auth/api/signin/internal/zze;
    .locals 2

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->ef:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->eg:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->eg:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zzq(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zze;
    .locals 2

    sget v0, Lcom/google/android/gms/auth/api/signin/internal/zze;->ef:I

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->eg:I

    mul-int/2addr v1, v0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zze;->eg:I

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
