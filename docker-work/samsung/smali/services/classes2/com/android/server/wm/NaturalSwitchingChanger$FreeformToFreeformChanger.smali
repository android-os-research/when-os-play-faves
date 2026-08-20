.class public Lcom/android/server/wm/NaturalSwitchingChanger$FreeformToFreeformChanger;
.super Lcom/android/server/wm/NaturalSwitchingChanger;
.source "NaturalSwitchingChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/NaturalSwitchingChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FreeformToFreeformChanger"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wm/NaturalSwitchingChanger;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    return-void
.end method


# virtual methods
.method public changeLayout()V
    .registers 5

    .line 144
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_SA_LOGGING:Z

    if-eqz v0, :cond_b

    const-string v0, "1041"

    const-string v1, "Layout changed"

    .line 145
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 151
    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 152
    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 153
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mTask:Lcom/android/server/wm/Task;

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    return-void
.end method

.method public isExitAnimationNeeded()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
