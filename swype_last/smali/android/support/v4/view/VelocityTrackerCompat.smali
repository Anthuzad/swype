.class public final Landroid/support/v4/view/VelocityTrackerCompat;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;,
        Landroid/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;,
        Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 68
    new-instance v0, Landroid/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->IMPL:Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    .line 72
    :goto_d
    return-void

    .line 70
    :cond_e
    new-instance v0, Landroid/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->IMPL:Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    goto :goto_d
.end method

.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
    .registers 3
    .param p0, "tracker"    # Landroid/view/VelocityTracker;
    .param p1, "pointerId"    # I

    .prologue
    .line 82
    sget-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->IMPL:Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
    .registers 3
    .param p0, "tracker"    # Landroid/view/VelocityTracker;
    .param p1, "pointerId"    # I

    .prologue
    .line 91
    sget-object v0, Landroid/support/v4/view/VelocityTrackerCompat;->IMPL:Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
