.class public final enum Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACScannerTwitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTwitterScannerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

.field public static final enum DIRECT_MESSAGES:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

.field public static final enum FRIENDS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

.field public static final enum MEMBERSHIPS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

.field public static final enum STATUS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    const-string/jumbo v1, "FRIENDS"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->FRIENDS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    const-string/jumbo v1, "MEMBERSHIPS"

    invoke-direct {v0, v1, v3}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->MEMBERSHIPS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    const-string/jumbo v1, "DIRECT_MESSAGES"

    invoke-direct {v0, v1, v4}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->DIRECT_MESSAGES:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    const-string/jumbo v1, "STATUS"

    invoke-direct {v0, v1, v5}, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->STATUS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->FRIENDS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->MEMBERSHIPS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->DIRECT_MESSAGES:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->STATUS:Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;
    .registers 2

    const-class v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;
    .registers 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->$VALUES:[Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    invoke-virtual {v0}, [Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACScannerTwitter$ACTwitterScannerType;

    return-object v0
.end method
