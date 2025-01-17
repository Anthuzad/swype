.class public abstract Lcom/nuance/swypeconnect/ac/ACScanner;
.super Ljava/lang/Object;


# static fields
.field public static final CATEGORY_USER:I = 0x0

.field public static final CORE_ALPHA:I = 0x1

.field public static final CORE_CHINESE:I = 0x3

.field public static final CORE_KOREAN:I = 0x2

.field static final DLM_TEXT_SCAN_ACTION_DELAY_REORDER:I = 0x1

.field static final DLM_TEXT_USER_ACTION_DELAY_REORDER:I = 0x1

.field static final EXPLICIT_WORD_ADDITION_DELAY_REORDER:I = 0x0

.field public static final FAILURE_FAILURE:I = 0x1

.field public static final FAILURE_INVALID_TOKEN:I = 0x2

.field static final NAMES_SCAN_ACTION_DELAY_REORDER:I = 0x1

.field static final NAMES_USER_ACTION_DELAY_REORDER:I = 0x1

.field static final NEW_WORD_SCAN_ACTION_DELAY_REORDER:I = 0x1

.field static final NEW_WORD_USER_ACTION_DELAY_REORDER:I = 0x1


# instance fields
.field protected appContext1:Ljava/lang/String;

.field protected appContext2:Ljava/lang/String;

.field protected appContext3:Ljava/lang/String;

.field protected calendarPreferenceName:Ljava/lang/String;

.field protected callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

.field protected categoryId:I

.field protected currentProcess:I

.field protected volatile lastRunCalendar:Ljava/util/Calendar;

.field protected maxToProcess:I

.field protected removeDuplicates:Z

.field protected scanAction:I

.field protected scanCoreList:[I

.field protected service:Lcom/nuance/swypeconnect/ac/ACScannerService;

.field protected store:Lcom/nuance/connect/store/PersistentDataStore;

.field protected userAction:I


# direct methods
.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    aput v1, v0, v2

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->scanCoreList:[I

    iput v2, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->categoryId:I

    iput-boolean v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->removeDuplicates:Z

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->userAction:I

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->scanAction:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->calendarPreferenceName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->maxToProcess:I

    iput v2, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->currentProcess:I

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->store:Lcom/nuance/connect/store/PersistentDataStore;

    return-void
.end method

.method constructor <init>(Lcom/nuance/swypeconnect/ac/ACScannerService;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    aput v1, v0, v2

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->scanCoreList:[I

    iput v2, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->categoryId:I

    iput-boolean v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->removeDuplicates:Z

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->userAction:I

    iput v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->scanAction:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->calendarPreferenceName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->maxToProcess:I

    iput v2, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->currentProcess:I

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getStore()Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->calendarPreferenceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->calendarPreferenceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->lastRunCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static checkDependencies()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clearLastRun()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->lastRunCalendar:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->calendarPreferenceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nuance/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    return-void
.end method

.method protected endScan(Z)V
    .registers 5

    if-eqz p1, :cond_11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->lastRunCalendar:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->calendarPreferenceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->lastRunCalendar:Ljava/util/Calendar;

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_11
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onFinish()V

    return-void
.end method

.method abstract fail(ILjava/lang/String;)V
.end method

.method getBucket(IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    .registers 15

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->appContext1:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->appContext2:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->appContext3:Ljava/lang/String;

    iget v4, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->userAction:I

    iget v5, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->scanAction:I

    iget v9, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->categoryId:I

    iget-boolean v10, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->removeDuplicates:Z

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v10}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v0

    return-object v0
.end method

.method getBucket([IIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;
    .registers 15

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->appContext1:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->appContext2:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->appContext3:Ljava/lang/String;

    iget v4, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->userAction:I

    iget v5, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->scanAction:I

    iget v9, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->categoryId:I

    iget-boolean v10, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->removeDuplicates:Z

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v10}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getBucket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[IIZIZ)Lcom/nuance/connect/api/DLMConnector$ScannerBucket;

    move-result-object v0

    return-object v0
.end method

.method public getLastRun()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->lastRunCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxToProcess()I
    .registers 2

    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->maxToProcess:I

    return v0
.end method

.method abstract getType()Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;
.end method

.method abstract scan()V
.end method

.method public setApplicationPredictionContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->appContext1:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->appContext2:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->appContext3:Ljava/lang/String;

    return-void
.end method

.method setCategoryId(I)V
    .registers 2

    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->categoryId:I

    return-void
.end method

.method public setMaxToProcess(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    if-gez p1, :cond_d

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x7a

    const-string/jumbo v2, "value must be greater then zero"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->maxToProcess:I

    return-void
.end method

.method public setScanCore([I)V
    .registers 6

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_e

    :cond_5
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "A valid core must be set"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    array-length v1, p1

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_5b

    aget v2, p1, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_34

    const/4 v3, 0x2

    if-eq v2, v3, :cond_34

    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid core selection."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    :try_start_34
    iget-object v3, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nuance/swypeconnect/ac/ACManager;->getCoreVersion(I)Ljava/lang/String;
    :try_end_3d
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_34 .. :try_end_3d} :catch_40

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :catch_40
    move-exception v0

    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->scanCoreList:[I

    return-void
.end method

.method public start(Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACScannerException;
        }
    .end annotation

    const/16 v5, 0x7c

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->scanCoreList:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->scanCoreList:[I

    array-length v0, v0

    if-nez v0, :cond_16

    :cond_b
    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x66

    const-string/jumbo v2, "You must set at least one core active for a scanner"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_16
    iget v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->categoryId:I

    if-eqz v0, :cond_4d

    :try_start_1a
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->scanCoreList:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v2, :cond_4d

    aget v3, v1, v0

    iget-object v4, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->service:Lcom/nuance/swypeconnect/ac/ACScannerService;

    invoke-virtual {v4}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/nuance/swypeconnect/ac/ACManager;->getCoreVersion(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "9.8"

    invoke-static {v3, v4}, Lcom/nuance/connect/util/VersionUtils;->isAtLeastVerson(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const/16 v1, 0x7c

    const-string/jumbo v2, "Category Scanning is not available until core 9.8"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_40
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_1a .. :try_end_40} :catch_40

    :catch_40
    move-exception v0

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACScannerException;

    const-string/jumbo v1, "Category Scanning is not available until core 9.8"

    invoke-direct {v0, v5, v1}, Lcom/nuance/swypeconnect/ac/ACScannerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_4d
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    return-void
.end method

.method protected startScan()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->callback:Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACScannerService$ACScannerCallback;->onStart()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swypeconnect/ac/ACScanner;->currentProcess:I

    return-void
.end method
