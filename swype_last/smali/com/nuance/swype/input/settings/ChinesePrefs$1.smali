.class Lcom/nuance/swype/input/settings/ChinesePrefs$1;
.super Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.source "ChinesePrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefs;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefs;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-direct {p0, p2}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public showConnectDialog()V
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$1;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/ChinesePrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 91
    return-void
.end method
