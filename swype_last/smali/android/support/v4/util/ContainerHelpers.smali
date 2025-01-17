.class public final Landroid/support/v4/util/ContainerHelpers;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field static final EMPTY_INTS:[I

.field static final EMPTY_LONGS:[J

.field static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 20
    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    .line 21
    new-array v0, v1, [J

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_LONGS:[J

    .line 22
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method public static binarySearch([III)I
    .registers 8
    .param p0, "array"    # [I
    .param p1, "size"    # I
    .param p2, "value"    # I

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 49
    .local v0, "hi":I
    :goto_3
    if-gt v1, v0, :cond_15

    .line 50
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 51
    .local v2, "mid":I
    aget v3, p0, v2

    .line 53
    .local v3, "midVal":I
    if-ge v3, p2, :cond_10

    .line 54
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 55
    :cond_10
    if-le v3, p2, :cond_17

    .line 56
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 61
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_15
    xor-int/lit8 v2, v1, -0x1

    :cond_17
    return v2
.end method

.method public static binarySearch([JIJ)I
    .registers 10
    .param p0, "array"    # [J
    .param p1, "size"    # I
    .param p2, "value"    # J

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "lo":I
    add-int/lit8 v0, p1, -0x1

    .line 68
    .local v0, "hi":I
    :goto_3
    if-gt v1, v0, :cond_19

    .line 69
    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    .line 70
    .local v2, "mid":I
    aget-wide v4, p0, v2

    .line 72
    .local v4, "midVal":J
    cmp-long v3, v4, p2

    if-gez v3, :cond_12

    .line 73
    add-int/lit8 v1, v2, 0x1

    goto :goto_3

    .line 74
    :cond_12
    cmp-long v3, v4, p2

    if-lez v3, :cond_1b

    .line 75
    add-int/lit8 v0, v2, -0x1

    goto :goto_3

    .line 80
    .end local v2    # "mid":I
    .end local v4    # "midVal":J
    :cond_19
    xor-int/lit8 v2, v1, -0x1

    :cond_1b
    return v2
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 41
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static idealByteArraySize(I)I
    .registers 4
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 33
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 34
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_11

    .line 35
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 37
    .end local p0    # "need":I
    :cond_10
    return p0

    .line 33
    .restart local p0    # "need":I
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static idealIntArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 25
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .registers 2
    .param p0, "need"    # I

    .prologue
    .line 29
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Landroid/support/v4/util/ContainerHelpers;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
