.class public final Landroid/support/v4/view/MenuItemCompat;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;,
        Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;,
        Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 248
    .local v0, "version":I
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 249
    new-instance v1, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;

    invoke-direct {v1}, Landroid/support/v4/view/MenuItemCompat$IcsMenuVersionImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 251
    new-instance v1, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;

    invoke-direct {v1}, Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_0

    .line 253
    :cond_1
    new-instance v1, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;

    invoke-direct {v1}, Landroid/support/v4/view/MenuItemCompat$BaseMenuVersionImpl;-><init>()V

    sput-object v1, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    goto :goto_0
.end method

.method public static expandActionView(Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 383
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 384
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0}, Landroid/support/v4/internal/view/SupportMenuItem;->expandActionView()Z

    move-result v0

    .line 386
    .restart local p0    # "item":Landroid/view/MenuItem;
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->expandActionView(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "provider"    # Landroid/support/v4/view/ActionProvider;

    .prologue
    .line 344
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 345
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;

    move-result-object p0

    .line 349
    :goto_0
    return-object p0

    .line 348
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    const-string/jumbo v0, "MenuItemCompat"

    const-string/jumbo v1, "setActionProvider: item does not implement SupportMenuItem; ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "resId"    # I

    .prologue
    .line 309
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 310
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 287
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 288
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_0
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .locals 1
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "actionEnum"    # I

    .prologue
    .line 268
    instance-of v0, p0, Landroid/support/v4/internal/view/SupportMenuItem;

    if-eqz v0, :cond_0

    .line 269
    check-cast p0, Landroid/support/v4/internal/view/SupportMenuItem;

    .end local p0    # "item":Landroid/view/MenuItem;
    invoke-interface {p0, p1}, Landroid/support/v4/internal/view/SupportMenuItem;->setShowAsAction(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    .restart local p0    # "item":Landroid/view/MenuItem;
    :cond_0
    sget-object v0, Landroid/support/v4/view/MenuItemCompat;->IMPL:Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;->setShowAsAction(Landroid/view/MenuItem;I)V

    goto :goto_0
.end method
