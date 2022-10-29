.class public final Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;
.super Lcom/nuance/swypeconnect/ac/ACService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;
    }
.end annotation


# static fields
.field public static final CATEGORY_TYPE_HOTWORDS:I = 0x3

.field public static final CATEGORY_TYPE_UDA:I = 0x1


# instance fields
.field connect:Lcom/nuance/connect/api/ConnectServiceManager;

.field private final livinglanguageCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;",
            "Lcom/nuance/connect/api/LivingLanguageService$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field service:Lcom/nuance/connect/api/LivingLanguageService;


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/api/ConnectServiceManager;Lcom/nuance/connect/store/PersistentDataStore;)V
    .registers 4

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->connect:Lcom/nuance/connect/api/ConnectServiceManager;

    sget-object v0, Lcom/nuance/connect/common/ConnectFeature;->LIVING_LANGUAGE:Lcom/nuance/connect/common/ConnectFeature;

    invoke-interface {p1, v0}, Lcom/nuance/connect/api/ConnectServiceManager;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;)Lcom/nuance/connect/util/Logger$Log;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method


# virtual methods
.method public final cancelDownloads()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->cancelLivingDownloads()V

    return-void
.end method

.method public final disableLivingLanguage()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->disableLivingLanguage()V

    return-void
.end method

.method public final enableLivingLanguage()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->enableLivingLanguage()V

    return-void
.end method

.method public final getMaxNumberOfEvents()I
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->getMaxNumberOfLivingEvents()I

    move-result v0

    return v0
.end method

.method final getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "LIVING_LANGUAGE"

    return-object v0
.end method

.method public final isHotWordsEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->isHotWordsEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->livingLanguageAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final isLivingLanguageEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->isLivingLanguageEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->livingLanguageAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final isUDAEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->isUDAEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->livingLanguageAvailable()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final registerCallback(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V
    .registers 5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    monitor-enter v1

    if-eqz p1, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_d
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v2, "callback is null or already registered"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    monitor-exit v1

    :goto_16
    return-void

    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_2f

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;

    invoke-direct {v0, p0, p1}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$1;-><init>(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_20
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v2, v0}, Lcom/nuance/connect/api/LivingLanguageService;->registerLivingCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V

    monitor-exit v1

    goto :goto_16

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw v0

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method final requiresDocument(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final setLivingLanguageStatus(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0, p1, p2}, Lcom/nuance/connect/api/LivingLanguageService;->setLivingLanguageStatus(ZZ)V

    return-void
.end method

.method public final setMaxNumberOfEvents(I)V
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/LivingLanguageService;->setMaxNumberOfLivingEvents(I)V

    return-void
.end method

.method final shutdown()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->isShutdown:Z

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->unregisterCallbacks()V

    return-void
.end method

.method final start()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->isShutdown:Z

    return-void
.end method

.method public final unregisterCallback(Lcom/nuance/swypeconnect/ac/ACLivingLanguageService$ACLivingLanguageCallback;)V
    .registers 5

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/api/LivingLanguageService$Callback;

    invoke-interface {v2, v0}, Lcom/nuance/connect/api/LivingLanguageService;->unregisterLivingCallback(Lcom/nuance/connect/api/LivingLanguageService$Callback;)V

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public final unregisterCallbacks()V
    .registers 3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->livinglanguageCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLivingLanguageService;->service:Lcom/nuance/connect/api/LivingLanguageService;

    invoke-interface {v0}, Lcom/nuance/connect/api/LivingLanguageService;->unregisterLivingCallbacks()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method
