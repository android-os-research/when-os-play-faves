.class public Landroid/graphics/LayerRasterizer;
.super Landroid/graphics/Rasterizer;
.source "LayerRasterizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/graphics/Rasterizer;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist addLayer(Landroid/graphics/Paint;)V
    .registers 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 33
    return-void
.end method

.method public greylist addLayer(Landroid/graphics/Paint;FF)V
    .registers 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 31
    return-void
.end method
