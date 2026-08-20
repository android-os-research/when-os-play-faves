.class public Landroid/graphics/BitmapFactory$Options;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public whitelist inBitmap:Landroid/graphics/Bitmap;

.field public blacklist inCalledByResource:Z

.field public whitelist inDensity:I

.field public whitelist inDither:Z

.field public whitelist inInputShareable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist inJustDecodeBounds:Z

.field public whitelist inMutable:Z

.field public whitelist inPreferQualityOverSpeed:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist inPreferredColorSpace:Landroid/graphics/ColorSpace;

.field public whitelist inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field public whitelist inPremultiplied:Z

.field public whitelist inPurgeable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist inSampleSize:I

.field public whitelist inScaled:Z

.field public whitelist inScreenDensity:I

.field public whitelist inTargetDensity:I

.field public whitelist inTempStorage:[B

.field public whitelist mCancel:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist outColorSpace:Landroid/graphics/ColorSpace;

.field public whitelist outConfig:Landroid/graphics/Bitmap$Config;

.field public whitelist outHeight:I

.field public whitelist outMimeType:Ljava/lang/String;

.field public whitelist outWidth:I

.field public whitelist semIsPreview:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inCalledByResource:Z

    .line 184
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 215
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 468
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->semIsPreview:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 80
    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 81
    return-void
.end method

.method static blacklist nativeColorSpace(Landroid/graphics/BitmapFactory$Options;)J
    .registers 3
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 538
    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    if-nez v0, :cond_7

    goto :goto_c

    .line 542
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v0

    return-wide v0

    .line 539
    :cond_c
    :goto_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static blacklist nativeInBitmap(Landroid/graphics/BitmapFactory$Options;)J
    .registers 3
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 524
    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    goto :goto_c

    .line 528
    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v0

    return-wide v0

    .line 525
    :cond_c
    :goto_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static greylist-max-o validate(Landroid/graphics/BitmapFactory$Options;)V
    .registers 3
    .param p0, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 490
    if-nez p0, :cond_3

    return-void

    .line 492
    :cond_3
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    .line 493
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_20

    .line 497
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_28

    .line 498
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot reuse a recycled Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmaps with Config.HARDWARE are always immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_28
    :goto_28
    iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_33

    goto :goto_3b

    .line 504
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmaps with Config.HARDWARE cannot be decoded into - they are immutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v0, :cond_5c

    .line 509
    instance-of v1, v0, Landroid/graphics/ColorSpace$Rgb;

    if-eqz v1, :cond_54

    .line 513
    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v0

    if-eqz v0, :cond_4c

    goto :goto_5c

    .line 514
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The destination color space must use an ICC parametric transfer function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The destination color space must use the RGB color model"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_5c
    :goto_5c
    return-void
.end method


# virtual methods
.method public whitelist requestCancelDecode()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 487
    return-void
.end method
