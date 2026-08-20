.class public final Lcom/android/server/wm/DexCompatBoundsProvider$CustomDexCompatBoundsProvider;
.super Lcom/android/server/wm/DexCompatBoundsProvider;
.source "DexCompatBoundsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexCompatBoundsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomDexCompatBoundsProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Lcom/android/server/wm/DexCompatBoundsProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBounds(Landroid/graphics/Rect;)V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    if-nez v0, :cond_22

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBounds: Cannot find custom size, use default, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DexCompatBoundsProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0, p1}, Lcom/android/server/wm/DexCompatBoundsProvider;->getBounds(Landroid/graphics/Rect;)V

    return-void

    .line 172
    :cond_22
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mTask:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 174
    iget-boolean p0, p0, Lcom/android/server/wm/DexCompatBoundsProvider;->mIsPortrait:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_3f

    .line 175
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_42

    .line 177
    :cond_3f
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_42
    return-void
.end method
