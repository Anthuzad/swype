.class final Lcom/nuance/swype/startup/ChooseLanguageDelegate$2;
.super Ljava/lang/Object;
.source "ChooseLanguageDelegate.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ChooseLanguageDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30

    .line 85
    :cond_5
    :goto_5
    const/4 v1, 0x0

    return v1

    .line 76
    :pswitch_7
    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    # getter for: Lcom/nuance/swype/startup/ChooseLanguageDelegate;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;
    invoke-static {v1}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$100(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .line 77
    # getter for: Lcom/nuance/swype/startup/ChooseLanguageDelegate;->dlManager:Lcom/nuance/swype/connect/SDKDownloadManager;
    invoke-static {v1}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$200(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)Lcom/nuance/swype/connect/SDKDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKDownloadManager;->isLanguageListAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 79
    :cond_1f
    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    # invokes: Lcom/nuance/swype/startup/ChooseLanguageDelegate;->timeoutDialog()Landroid/app/AlertDialog$Builder;
    invoke-static {v1}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$300(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 80
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$2;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->showDialog(Landroid/app/Dialog;)V

    goto :goto_5

    .line 74
    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method
