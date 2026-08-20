.class public Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;
.super Ljava/lang/Object;
.source "CustomLetterboxEnhancedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CustomLetterboxEnhancedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapturedBlurWallpaperInfo"
.end annotation


# instance fields
.field public mBlurRadius:I

.field public mEnabled:Z

.field public mHeight:I

.field public mReason:I

.field public mScreenshot:Landroid/graphics/Bitmap;

.field public mSeq:J

.field public mWidth:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBlurRadius(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mBlurRadius:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnabled(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHeight(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mHeight:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScreenshot(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mScreenshot:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSeq(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mSeq:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmWidth(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mWidth:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmBlurRadius(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mBlurRadius:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnabled(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHeight(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mHeight:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReason(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mReason:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmScreenshot(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mScreenshot:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSeq(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mSeq:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWidth(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mWidth:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapturedBlurWallpaperInfo{"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSeq="

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEnabled="

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mReason="

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mReason:I

    invoke-static {v1}, Lcom/android/server/wm/CustomLetterboxEnhancedController;->-$$Nest$smenhancedReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget-boolean v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mEnabled:Z

    if-eqz v1, :cond_4e

    const-string v1, ", mBlurRadius="

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mBlurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/CustomLetterboxEnhancedController$CapturedBlurWallpaperInfo;->mHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4e
    const-string/jumbo p0, "}"

    .line 334
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
