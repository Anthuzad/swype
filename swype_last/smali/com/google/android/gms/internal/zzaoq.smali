.class public final Lcom/google/android/gms/internal/zzaoq;
.super Ljava/lang/Object;


# instance fields
.field final bhE:[B

.field bhF:I

.field bhG:I


# direct methods
.method public constructor <init>([B)V
    .registers 9

    const/16 v6, 0x100

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v6, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    move v0, v1

    :goto_b
    if-ge v0, v6, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    move v0, v1

    move v2, v1

    :goto_17
    if-ge v2, v6, :cond_39

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    aget-byte v3, v3, v2

    add-int/2addr v0, v3

    array-length v3, p1

    rem-int v3, v2, v3

    aget-byte v3, p1, v3

    add-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    aget-byte v5, v5, v0

    aput-byte v5, v4, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    aput-byte v3, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_39
    iput v1, p0, Lcom/google/android/gms/internal/zzaoq;->bhF:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaoq;->bhG:I

    return-void
.end method


# virtual methods
.method public final zzax([B)V
    .registers 9

    iget v2, p0, Lcom/google/android/gms/internal/zzaoq;->bhF:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaoq;->bhG:I

    const/4 v0, 0x0

    :goto_5
    const/16 v3, 0x100

    if-ge v0, v3, :cond_3c

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    aget-byte v3, v3, v2

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    aget-byte v3, v3, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    aget-byte v5, v5, v1

    aput-byte v5, v4, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    aput-byte v3, v4, v1

    aget-byte v3, p1, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    aget-byte v5, v5, v2

    iget-object v6, p0, Lcom/google/android/gms/internal/zzaoq;->bhE:[B

    aget-byte v6, v6, v1

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3c
    iput v2, p0, Lcom/google/android/gms/internal/zzaoq;->bhF:I

    iput v1, p0, Lcom/google/android/gms/internal/zzaoq;->bhG:I

    return-void
.end method
