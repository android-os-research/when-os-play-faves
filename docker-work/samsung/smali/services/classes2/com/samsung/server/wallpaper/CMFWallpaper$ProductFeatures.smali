.class public Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;
.super Ljava/lang/Object;
.source "CMFWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/CMFWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProductFeatures"
.end annotation


# static fields
.field public static final COLOR_CODE_BURGUNDY_RED:Ljava/lang/String; = "zr"

.field public static final COLOR_CODE_PINK:Ljava/lang/String; = "zi"

.field public static final COLOR_CODE_SILVER:Ljava/lang/String; = "zs"

.field public static final COLOR_CODE_WHITE:Ljava/lang/String; = "zw"

.field public static final PRODUCT_BEYOND:Ljava/lang/String; = "beyond"

.field public static final PRODUCT_BEYONDX:Ljava/lang/String; = "beyondx"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_2d

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2d

    .line 286
    :cond_9
    invoke-static {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->-$$Nest$smswitchCmfByCscFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 288
    invoke-static {}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->isBeyond()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "zs"

    .line 289
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo p0, "zw"

    return-object p0

    :cond_20
    const-string/jumbo v0, "zr"

    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo p0, "zi"

    :cond_2c
    return-object p0

    :cond_2d
    :goto_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getProductInfo()Ljava/lang/String;
    .registers 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.build.flavor"

    const-string v2, "None"

    .line 263
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ro.build.product"

    .line 265
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.product.model"

    .line 267
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBeyond()Z
    .registers 2

    .line 279
    invoke-static {}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "beyond"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->isBeyondX()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public static isBeyondX()Z
    .registers 2

    .line 274
    invoke-static {}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getProductInfo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "beyondx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
