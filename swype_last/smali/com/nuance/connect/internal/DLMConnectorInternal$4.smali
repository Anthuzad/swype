.class Lcom/nuance/connect/internal/DLMConnectorInternal$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/DLMConnectorInternal;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "handleMessage what="

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    iget-object v0, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    # getter for: Lcom/nuance/connect/internal/DLMConnectorInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$200(Lcom/nuance/connect/internal/DLMConnectorInternal;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Unknown message: "

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_2a
    return v0

    :pswitch_2b
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->processDlmEvents(ILjava/lang/String;)V

    :goto_36
    const/4 v0, 0x1

    goto :goto_2a

    :pswitch_38
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/nuance/connect/internal/DLMConnectorInternal;->processDlmDelete(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$900(Lcom/nuance/connect/internal/DLMConnectorInternal;ILjava/lang/String;)V

    goto :goto_36

    :pswitch_44
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/nuance/connect/internal/DLMConnectorInternal;->processDlmScannerSet(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$1000(Lcom/nuance/connect/internal/DLMConnectorInternal;ILjava/lang/String;)V

    goto :goto_36

    :pswitch_50
    iget-object v1, p0, Lcom/nuance/connect/internal/DLMConnectorInternal$4;->this$0:Lcom/nuance/connect/internal/DLMConnectorInternal;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;

    # invokes: Lcom/nuance/connect/internal/DLMConnectorInternal;->processScanBatch(Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;)V
    invoke-static {v1, v0}, Lcom/nuance/connect/internal/DLMConnectorInternal;->access$1100(Lcom/nuance/connect/internal/DLMConnectorInternal;Lcom/nuance/connect/internal/DLMConnectorInternal$ScanningSetBatchInfo;)V

    goto :goto_36

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_38
        :pswitch_44
        :pswitch_50
    .end packed-switch
.end method
