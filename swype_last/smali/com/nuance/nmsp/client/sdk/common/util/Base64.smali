.class public Lcom/nuance/nmsp/client/sdk/common/util/Base64;
.super Ljava/lang/Object;


# static fields
.field private static a:[B

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x40

    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->b:Ljava/lang/String;

    new-array v0, v3, [B

    sput-object v0, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->a:[B

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v3, :cond_1c

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    sget-object v2, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->a:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->encode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Ljava/lang/String;
    .registers 14

    const/16 v10, 0x3d

    const/4 v1, 0x0

    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x2

    new-array v6, v0, [B

    add-int v7, p2, p1

    move v4, v1

    move v0, v1

    move v3, v1

    :goto_10
    if-ge p1, v7, :cond_5c

    aget-byte v5, p0, p1

    add-int/lit8 v0, v0, 0x1

    packed-switch v0, :pswitch_data_88

    move v2, v3

    :goto_1a
    add-int/lit8 p1, p1, 0x1

    move v4, v5

    move v3, v2

    goto :goto_10

    :pswitch_1f
    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->a:[B

    shr-int/lit8 v8, v5, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-byte v4, v4, v8

    aput-byte v4, v6, v3

    goto :goto_1a

    :pswitch_2c
    add-int/lit8 v2, v3, 0x1

    sget-object v8, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->a:[B

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x30

    shr-int/lit8 v9, v5, 0x4

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v4, v9

    aget-byte v4, v8, v4

    aput-byte v4, v6, v3

    goto :goto_1a

    :pswitch_3e
    add-int/lit8 v2, v3, 0x1

    sget-object v0, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->a:[B

    shl-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x3c

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v4, v8

    aget-byte v0, v0, v4

    aput-byte v0, v6, v3

    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->a:[B

    and-int/lit8 v4, v5, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, v6, v2

    move v2, v0

    move v0, v1

    goto :goto_1a

    :cond_5c
    packed-switch v0, :pswitch_data_92

    :goto_5f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :pswitch_65
    add-int/lit8 v0, v3, 0x1

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->a:[B

    shl-int/lit8 v2, v4, 0x4

    and-int/lit8 v2, v2, 0x30

    aget-byte v1, v1, v2

    aput-byte v1, v6, v3

    add-int/lit8 v1, v0, 0x1

    aput-byte v10, v6, v0

    aput-byte v10, v6, v1

    goto :goto_5f

    :pswitch_78
    add-int/lit8 v0, v3, 0x1

    sget-object v1, Lcom/nuance/nmsp/client/sdk/common/util/Base64;->a:[B

    shl-int/lit8 v2, v4, 0x2

    and-int/lit8 v2, v2, 0x3c

    aget-byte v1, v1, v2

    aput-byte v1, v6, v3

    aput-byte v10, v6, v0

    goto :goto_5f

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2c
        :pswitch_3e
    .end packed-switch

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_65
        :pswitch_78
    .end packed-switch
.end method
