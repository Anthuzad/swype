.class Lcom/nuance/connect/comm/SingleCommandTransaction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/ResponseCallback;
.implements Lcom/nuance/connect/comm/Transaction;


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field private volatile c:Lcom/nuance/connect/comm/Command;

.field private downloadFilePath:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final processingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

.field private final responder:Lcom/nuance/connect/comm/ResponseCallback;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/comm/Command;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->processingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iput-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    iput-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    iput-object p0, p1, Lcom/nuance/connect/comm/Command;->responseCallback:Lcom/nuance/connect/comm/ResponseCallback;

    return-void
.end method


# virtual methods
.method public allowDuplicates()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->allowDuplicateOfCommand:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public cancel()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    return-void
.end method

.method public createDownloadFile(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->downloadFilePath:Ljava/lang/String;

    if-nez v0, :cond_18

    :try_start_4
    const-string/jumbo v0, "temp"

    const-string/jumbo v1, ".download"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->downloadFilePath:Ljava/lang/String;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_1b

    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0

    :catch_1b
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->downloadFilePath:Ljava/lang/String;

    goto :goto_18
.end method

.method public getDownloadFile()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextCommand()Lcom/nuance/connect/comm/Command;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    iget-boolean v1, v1, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-eqz v1, :cond_c

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    goto :goto_b
.end method

.method public getPersistantConfig()Lcom/nuance/connect/comm/PersistantConnectionConfig;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    return-object v0
.end method

.method public isSame(Lcom/nuance/connect/comm/Transaction;)Z
    .registers 4

    invoke-interface {p1}, Lcom/nuance/connect/comm/Transaction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/connect/comm/SingleCommandTransaction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCancel(Lcom/nuance/connect/comm/Command;)V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onCancel(Lcom/nuance/connect/comm/Command;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    :cond_a
    iput-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    return-void

    :catchall_d
    move-exception v0

    iput-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    throw v0
.end method

.method public onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/connect/comm/ResponseCallback;->onDownloadStatusResponse(Lcom/nuance/connect/comm/Command;II)V

    :cond_9
    return-void
.end method

.method public onEndProcessing()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->processingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "onEndProcessing can be called at most once."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onFailure(Lcom/nuance/connect/comm/Command;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    :cond_a
    iput-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    return-void

    :catchall_d
    move-exception v0

    iput-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    throw v0
.end method

.method public onFileResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onFileResponse(Lcom/nuance/connect/comm/Response;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    :cond_a
    iput-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    return-void

    :catchall_d
    move-exception v0

    iput-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    throw v0
.end method

.method public onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onIOExceptionResponse(Lcom/nuance/connect/comm/Command;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    :cond_a
    iput-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    return-void

    :catchall_d
    move-exception v0

    iput-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    throw v0
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ResponseCallback;->onResponse(Lcom/nuance/connect/comm/Response;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    :cond_a
    iput-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    return-void

    :catchall_d
    move-exception v0

    iput-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    throw v0
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->processingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_35

    move-result v1

    if-eqz v1, :cond_11

    :cond_a
    :goto_a
    iput-object v3, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_10

    iput-object p1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    :cond_10
    return v0

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->responder:Lcom/nuance/connect/comm/ResponseCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nuance/connect/comm/ResponseCallback;->onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z

    move-result v0

    goto :goto_a

    :cond_20
    if-eqz p1, :cond_a

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->requestType:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    sget-object v2, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    if-ne v1, v2, :cond_2a

    if-nez p2, :cond_a

    :cond_2a
    iget v1, p1, Lcom/nuance/connect/comm/Command;->retryCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lcom/nuance/connect/comm/Command;->retryCount:I
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_35

    const/4 v2, 0x3

    if-gt v1, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_a

    :catchall_35
    move-exception v0

    iput-object v3, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    throw v0
.end method

.method public onTransactionOfflineQueued()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onTransactionRejected(I)V
    .registers 4

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->processingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "onTransactionRejected() cannot be called after onEndProcessing()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method public requiresDeviceId()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->needDevice:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public requiresPersistantConnection()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public requiresSessionId()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->requireSession:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public wifiOnly()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nuance/connect/comm/SingleCommandTransaction;->c:Lcom/nuance/connect/comm/Command;

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->wifiOnly:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method