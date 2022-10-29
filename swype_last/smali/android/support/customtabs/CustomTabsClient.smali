.class public Landroid/support/customtabs/CustomTabsClient;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"


# instance fields
.field private final mService:Landroid/support/customtabs/ICustomTabsService;

.field private final mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "service"    # Landroid/support/customtabs/ICustomTabsService;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 41
    iput-object p2, p0, Landroid/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    .line 42
    return-void
.end method


# virtual methods
.method public final newSession$6f4c7b26()Landroid/support/customtabs/CustomTabsSession;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 89
    new-instance v0, Landroid/support/customtabs/CustomTabsClient$1;

    invoke-direct {v0, p0}, Landroid/support/customtabs/CustomTabsClient$1;-><init>(Landroid/support/customtabs/CustomTabsClient;)V

    .line 102
    .local v0, "wrapper":Landroid/support/customtabs/ICustomTabsCallback$Stub;
    :try_start_6
    iget-object v2, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    invoke-interface {v2, v0}, Landroid/support/customtabs/ICustomTabsService;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_19

    move-result v2

    if-nez v2, :cond_f

    .line 106
    :goto_e
    return-object v1

    :cond_f
    new-instance v1, Landroid/support/customtabs/CustomTabsSession;

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Landroid/support/customtabs/CustomTabsClient;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0, v3}, Landroid/support/customtabs/CustomTabsSession;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;)V

    goto :goto_e

    .line 104
    :catch_19
    move-exception v2

    goto :goto_e
.end method

.method public final warmup$1349f3()Z
    .registers 5

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient;->mService:Landroid/support/customtabs/ICustomTabsService;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v2, v3}, Landroid/support/customtabs/ICustomTabsService;->warmup(J)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 73
    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method
