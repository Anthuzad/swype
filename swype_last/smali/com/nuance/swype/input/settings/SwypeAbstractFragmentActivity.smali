.class public abstract Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SwypeAbstractFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 10
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 16
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 12
    :pswitch_c
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SwypeAbstractFragmentActivity;->onBackPressed()V

    .line 13
    const/4 v0, 0x1

    goto :goto_b

    .line 10
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
