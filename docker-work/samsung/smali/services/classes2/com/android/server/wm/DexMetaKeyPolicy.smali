.class public Lcom/android/server/wm/DexMetaKeyPolicy;
.super Ljava/lang/Object;
.source "DexMetaKeyPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;,
        Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;,
        Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;,
        Lcom/android/server/wm/DexMetaKeyPolicy$LeftMetaKeyBoundsProvider;,
        Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "DexMetaKeyPolicy"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mDexController:Lcom/android/server/wm/DexController;

.field public final mDisplayBounds:Landroid/graphics/Rect;

.field public final mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

.field public final mLeftHalfDisplayBounds:Landroid/graphics/Rect;

.field public final mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

.field public final mMaxHeightBounds:Landroid/graphics/Rect;

.field public final mMetaKeyBoundsProviderMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;",
            ">;"
        }
    .end annotation
.end field

.field public final mMinHeightBounds:Landroid/graphics/Rect;

.field public mOtherSnappingBounds:Landroid/graphics/Rect;

.field public final mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

.field public final mRightHalfDisplayBounds:Landroid/graphics/Rect;

.field public final mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

.field public mSnappingTask:Lcom/android/server/wm/Task;

.field public final mTaskBounds:Landroid/graphics/Rect;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/wm/DexMetaKeyPolicy;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLeftBottomQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLeftHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLeftTopQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxHeightBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMaxHeightBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMinHeightBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMinHeightBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRightBottomQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRightHalfDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRightTopQuarterDisplayBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskBounds(Lcom/android/server/wm/DexMetaKeyPolicy;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 59
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/DexMetaKeyPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DexController;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMinHeightBounds:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMaxHeightBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    .line 76
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mOtherSnappingBounds:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMetaKeyBoundsProviderMap:Landroid/util/SparseArray;

    .line 84
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 85
    iput-object p2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDexController:Lcom/android/server/wm/DexController;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/wm/DexMetaKeyPolicy;->registerMetaKeyBoundsProviders()V

    return-void
.end method


# virtual methods
.method public getMetaKeyBoundsProvider(I)Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMetaKeyBoundsProviderMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;

    return-object p0
.end method

.method public final getTaskForMetaKey(Landroid/os/IBinder;)Lcom/android/server/wm/Task;
    .registers 3

    .line 152
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mInputToWindowMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/WindowState;

    const/4 p1, 0x0

    if-eqz p0, :cond_14

    .line 153
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_15

    :cond_14
    move-object p0, p1

    :goto_15
    if-eqz p0, :cond_39

    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isDexMode()Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_39

    .line 157
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_38

    .line 158
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_38

    :cond_37
    return-object p1

    :cond_38
    :goto_38
    return-object p0

    :cond_39
    :goto_39
    return-object p1
.end method

.method public handleDexMetaKeyForSnapping()V
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    if-nez v0, :cond_5

    return-void

    .line 138
    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_TASK_DOCKING:Z

    if-eqz v0, :cond_23

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    .line 140
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 139
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/DexDockingController;->initDockingBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexDockingController:Lcom/android/server/wm/DexDockingController;

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DexDockingController;->setCandidateTask(Lcom/android/server/wm/Task;)V

    .line 144
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mOtherSnappingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DexController;->scheduleNotifyDexSnappingCallback(ILandroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    .line 148
    iput-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mOtherSnappingBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public handleMetaKeyEvent(Landroid/os/IBinder;Landroid/view/KeyEvent;)V
    .registers 6

    .line 97
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DexMetaKeyPolicy;->getMetaKeyBoundsProvider(I)Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;

    move-result-object v0

    const-string v1, "DexMetaKeyPolicy"

    if-nez v0, :cond_25

    .line 99
    sget-boolean p0, Lcom/android/server/wm/DexMetaKeyPolicy;->DEBUG:Z

    if-eqz p0, :cond_24

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleMetaKeyEvent: cannot find provider, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void

    .line 102
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DexMetaKeyPolicy;->getTaskForMetaKey(Landroid/os/IBinder;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_44

    .line 104
    sget-boolean p0, Lcom/android/server/wm/DexMetaKeyPolicy;->DEBUG:Z

    if-eqz p0, :cond_43

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handleMetaKeyEvent: cannot find task, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void

    .line 107
    :cond_44
    invoke-virtual {p0, v2}, Lcom/android/server/wm/DexMetaKeyPolicy;->updateBoundsInfo(Lcom/android/server/wm/Task;)V

    .line 109
    invoke-virtual {v0, v2, p2}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->getLaunchBounds(Lcom/android/server/wm/Task;Landroid/view/KeyEvent;)Landroid/graphics/Rect;

    move-result-object p0

    .line 110
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils$MetaKeyBoundsChecker;->isInvalidBounds(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_57

    .line 111
    invoke-virtual {v0, v2, p0}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->updateTaskBoundsInfoIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 112
    invoke-virtual {v0, v2, p0}, Lcom/android/server/wm/DexMetaKeyPolicy$MetaKeyBoundsProvider;->applyBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    :cond_57
    return-void
.end method

.method public isBottomQuarterDisplayBounds(Landroid/graphics/Rect;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 240
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 241
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public isDexDualMode()Z
    .registers 2

    .line 198
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p0}, Lcom/android/server/wm/DexController;->getDexModeLocked()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isLeftHalfDisplayBounds(Landroid/graphics/Rect;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 202
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isMaxHeightBounds(Landroid/graphics/Rect;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 214
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMaxHeightBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isMinHeightBounds(Landroid/graphics/Rect;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 210
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMinHeightBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isQuarterDisplayBounds(Landroid/graphics/Rect;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 222
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 223
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 224
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 225
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    :cond_24
    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method public isRightHalfDisplayBounds(Landroid/graphics/Rect;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 206
    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isTopQuarterDisplayBounds(Landroid/graphics/Rect;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 232
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    .line 233
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public final registerMetaKeyBoundsProviders()V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMetaKeyBoundsProviderMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wm/DexMetaKeyPolicy$LeftMetaKeyBoundsProvider;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DexMetaKeyPolicy$LeftMetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMetaKeyBoundsProviderMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DexMetaKeyPolicy$RightMetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMetaKeyBoundsProviderMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DexMetaKeyPolicy$UpMetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMetaKeyBoundsProviderMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DexMetaKeyPolicy$DownMetaKeyBoundsProvider;-><init>(Lcom/android/server/wm/DexMetaKeyPolicy;)V

    const/16 p0, 0x14

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public updateBoundsInfo(Lcom/android/server/wm/Task;)V
    .registers 9

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 167
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mDisplayBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget v4, v1, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, v1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 171
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->appWidth:I

    div-int/lit8 v4, v3, 0x2

    iget v6, v1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 175
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftTopQuarterDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 176
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 177
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightTopQuarterDisplayBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 179
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 180
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 181
    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightBottomQuarterDisplayBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 183
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 184
    iget p1, p1, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    const/4 v2, -0x1

    if-ne p1, v2, :cond_81

    const p1, 0x1050132

    .line 185
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 187
    :cond_81
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMaxHeightBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v0, v3, v5, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mMinHeightBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mTaskBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v2

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public updateSnappingTaskIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 4

    .line 121
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isLeftHalfDisplayBounds(Landroid/graphics/Rect;)Z

    move-result v0

    .line 122
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DexMetaKeyPolicy;->isRightHalfDisplayBounds(Landroid/graphics/Rect;)Z

    move-result p2

    if-nez v0, :cond_12

    if-nez p2, :cond_12

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    .line 125
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mOtherSnappingBounds:Landroid/graphics/Rect;

    return-void

    .line 129
    :cond_12
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mSnappingTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_19

    .line 130
    iget-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mRightHalfDisplayBounds:Landroid/graphics/Rect;

    goto :goto_1b

    :cond_19
    iget-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mLeftHalfDisplayBounds:Landroid/graphics/Rect;

    :goto_1b
    iput-object p1, p0, Lcom/android/server/wm/DexMetaKeyPolicy;->mOtherSnappingBounds:Landroid/graphics/Rect;

    return-void
.end method
