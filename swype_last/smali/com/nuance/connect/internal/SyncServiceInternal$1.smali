.class Lcom/nuance/connect/internal/SyncServiceInternal$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/SyncServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/SyncServiceInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->backupAndSyncEnabled:Z
    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$000(Lcom/nuance/connect/internal/SyncServiceInternal;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # invokes: Lcom/nuance/connect/internal/SyncServiceInternal;->sendDLMSyncStatus()V
    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$100(Lcom/nuance/connect/internal/SyncServiceInternal;)V

    :cond_d
    iget-object v0, p0, Lcom/nuance/connect/internal/SyncServiceInternal$1;->this$0:Lcom/nuance/connect/internal/SyncServiceInternal;

    # getter for: Lcom/nuance/connect/internal/SyncServiceInternal;->backdownCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/nuance/connect/internal/SyncServiceInternal;->access$200(Lcom/nuance/connect/internal/SyncServiceInternal;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
