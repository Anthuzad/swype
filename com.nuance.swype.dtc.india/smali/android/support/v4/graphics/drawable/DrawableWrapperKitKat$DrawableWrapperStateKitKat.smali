.class final Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat$DrawableWrapperStateKitKat;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;
.source "DrawableWrapperKitKat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableWrapperStateKitKat"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;)V
    .locals 0
    .param p1, "orig"    # Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 58
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperDonut$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
