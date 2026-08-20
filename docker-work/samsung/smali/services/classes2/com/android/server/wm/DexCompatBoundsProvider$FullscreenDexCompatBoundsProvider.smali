.class public Lcom/android/server/wm/DexCompatBoundsProvider$FullscreenDexCompatBoundsProvider;
.super Lcom/android/server/wm/DexCompatBoundsProvider;
.source "DexCompatBoundsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexCompatBoundsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullscreenDexCompatBoundsProvider"
.end annotation


# static fields
.field public static final DEFAULT_FULLSCREEN_RATIO:F = 0.9f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBounds(Landroid/graphics/Rect;)V
    .registers 6

    .line 193
    iget-boolean v0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mIsPortrait:Z

    if-nez v0, :cond_8

    .line 194
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 198
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDexMode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDisplayShortSize()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultWidth(II)I

    move-result v0

    .line 199
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDexMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDisplayShortSize()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/DexCompatBoundsProvider;->getDefaultHeight(II)I

    move-result v1

    if-lez v0, :cond_6f

    if-gtz v1, :cond_25

    goto :goto_6f

    :cond_25
    if-ge v0, v1, :cond_2b

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_2f

    :cond_2b
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 211
    :goto_2f
    iget-object v1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-eqz v1, :cond_52

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    add-float/2addr p0, v2

    float-to-int p0, p0

    .line 214
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v3, v3, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 218
    :cond_52
    iget-object p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr p0, v1

    add-float/2addr p0, v2

    float-to-int p0, p0

    int-to-float v1, p0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 221
    invoke-virtual {p1, v3, v3, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 201
    :cond_6f
    :goto_6f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getBounds: invalid value, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexCompatBoundsProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
