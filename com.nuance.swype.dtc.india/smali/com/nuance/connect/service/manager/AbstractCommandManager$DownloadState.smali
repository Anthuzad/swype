.class public final enum Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/AbstractCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

.field public static final enum DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

.field public static final enum DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

.field public static final enum DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    const-string/jumbo v1, "DOWNLOAD_LIST_STATE_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    new-instance v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    const-string/jumbo v1, "DOWNLOAD_LIST_STATE_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    new-instance v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    const-string/jumbo v1, "DOWNLOAD_LIST_STATE_NONE"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_AVAILABLE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_NONE:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->$VALUES:[Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DownloadState name incorrect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;
    .locals 1

    const-class v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;
    .locals 1

    sget-object v0, Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->$VALUES:[Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    invoke-virtual {v0}, [Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/service/manager/AbstractCommandManager$DownloadState;

    return-object v0
.end method
