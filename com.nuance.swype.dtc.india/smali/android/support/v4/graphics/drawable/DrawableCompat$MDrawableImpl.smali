.class final Landroid/support/v4/graphics/drawable/DrawableCompat$MDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 276
    .line 1030
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    .line 276
    return v0
.end method

.method public final setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 271
    .line 1026
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v0

    .line 271
    return v0
.end method

.method public final wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 282
    return-object p1
.end method
