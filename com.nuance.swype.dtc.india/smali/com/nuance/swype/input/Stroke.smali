.class public abstract Lcom/nuance/swype/input/Stroke;
.super Ljava/lang/Object;
.source "Stroke.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/Stroke$Arc;,
        Lcom/nuance/swype/input/Stroke$MultiStroke;
    }
.end annotation


# instance fields
.field protected mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/nuance/swype/input/Stroke;
    .locals 1
    .param p0, "strokeWidth"    # I

    .prologue
    .line 20
    new-instance v0, Lcom/nuance/swype/input/Stroke$MultiStroke;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/Stroke$MultiStroke;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getArcs()[Lcom/nuance/swype/input/Stroke$Arc;
.end method

.method public abstract getPaths()[Landroid/graphics/Path;
.end method

.method public abstract handleMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract handleTouchEnd(IILcom/nuance/input/swypecorelib/KeyType;Z)V
.end method

.method public abstract handleTouchMoved(II[F[F[IZ)V
.end method
