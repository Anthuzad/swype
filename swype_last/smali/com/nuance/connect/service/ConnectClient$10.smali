.class Lcom/nuance/connect/service/ConnectClient$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/ConnectClient;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/ConnectClient;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const-wide/16 v10, 0x2710

    const/16 v6, 0x2710

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendStopMessage this="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->boolListener:Lcom/nuance/connect/internal/Property$ValueListener;
    invoke-static {v2}, Lcom/nuance/connect/service/ConnectClient;->access$700(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/internal/Property$ValueListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$800(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v7

    monitor-enter v7

    const-wide v2, 0x7fffffffffffffffL

    :try_start_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x0

    :goto_34
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$800(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$800(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-gez v8, :cond_96

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_58
    sub-long/2addr v2, v10

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->lastMessageProcessed:J
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$900(Lcom/nuance/connect/service/ConnectClient;)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v2, v4, v10

    if-eqz v1, :cond_a5

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Alarms have passed...waiting for possible intent triggers"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    const v0, 0xea60

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_7c
    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->mHostMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/nuance/connect/service/ConnectClient;->access$1000(Lcom/nuance/connect/service/ConnectClient;)Landroid/os/Messenger;

    move-result-object v1

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/connect/service/ConnectClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->sendStopMessage:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/nuance/connect/service/ConnectClient;->access$600(Lcom/nuance/connect/service/ConnectClient;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_94
    monitor-exit v7

    return-void

    :cond_96
    iget-object v8, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->triggerTimes:Ljava/util/List;
    invoke-static {v8}, Lcom/nuance/connect/service/ConnectClient;->access$800(Lcom/nuance/connect/service/ConnectClient;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14f

    const/4 v0, 0x1

    :goto_a3
    move v1, v0

    goto :goto_34

    :cond_a5
    cmp-long v0, v8, v2

    if-gez v0, :cond_c5

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Alarm too soon... delaying shutdown. Requested time["

    invoke-static {v8, v9}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "] min time["

    invoke-static {v8, v9}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v6

    goto :goto_7c

    :cond_c5
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/comm/CommandQueue;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$200(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/comm/CommandQueue;

    move-result-object v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/comm/CommandQueue;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$200(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/comm/CommandQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_f1

    :cond_d9
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget-object v0, v0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    iget-object v0, v0, Lcom/nuance/connect/service/ConnectClient;->registry:Lcom/nuance/connect/service/manager/ManagerRegistry;

    invoke-virtual {v0}, Lcom/nuance/connect/service/manager/ManagerRegistry;->getIdleProperty()Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_100

    :cond_f1
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Not idle..."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    move v0, v6

    goto/16 :goto_7c

    :cond_100
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/comm/CommandQueue;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$200(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/comm/CommandQueue;

    move-result-object v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->commandQueue:Lcom/nuance/connect/comm/CommandQueue;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$200(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/comm/CommandQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/connect/comm/CommandQueue;->hasPendingTransactions()Z

    move-result v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Sending shutdown message... restart on reconnection"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    :goto_122
    iget-object v2, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    sget-object v3, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_HOST_ON_SERVICE_SHUTDOWN:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/nuance/connect/service/ConnectClient;->sendMessageToHost(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)V

    move v0, v6

    goto/16 :goto_7c

    :cond_130
    iget-object v0, p0, Lcom/nuance/connect/service/ConnectClient$10;->this$0:Lcom/nuance/connect/service/ConnectClient;

    # getter for: Lcom/nuance/connect/service/ConnectClient;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/ConnectClient;->access$000(Lcom/nuance/connect/service/ConnectClient;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Sending shutdown message... time["

    invoke-static {v8, v9}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "] now["

    invoke-static {v4, v5}, Lcom/nuance/connect/util/TimeConversion;->prettyDateFormat(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide v0, v8

    goto :goto_122

    :catchall_14c
    move-exception v0

    monitor-exit v7
    :try_end_14e
    .catchall {:try_start_2f .. :try_end_14e} :catchall_14c

    throw v0

    :cond_14f
    move v0, v1

    goto/16 :goto_a3
.end method
