.class Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$9;
.super Ljava/lang/Object;
.source "TransactionRunner.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->createConnectTransaction(Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;Z)Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

.field final synthetic val$listener:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;)V
    .registers 3

    .prologue
    .line 589
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$9;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$9;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;
    .param p2, "errorCode"    # I
    .param p3, "errorText"    # Ljava/lang/String;
    .param p4, "suggestion"    # Ljava/lang/String;

    .prologue
    .line 592
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$9;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;->error(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;ILjava/lang/String;Ljava/lang/String;)V

    .line 594
    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    .line 595
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$9;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    # invokes: Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->restartManager()V
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->access$100(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;)V

    .line 596
    :cond_d
    return-void
.end method

.method public transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    .registers 3
    .param p1, "t"    # Lcom/nuance/nmdp/speechkit/transaction/ITransaction;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$9;->this$0:Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    # invokes: Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V
    invoke-static {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->access$000(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 601
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner$9;->val$listener:Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;

    invoke-interface {v0, p1}, Lcom/nuance/nmdp/speechkit/transaction/ITransactionListener;->transactionDone(Lcom/nuance/nmdp/speechkit/transaction/ITransaction;)V

    .line 602
    return-void
.end method