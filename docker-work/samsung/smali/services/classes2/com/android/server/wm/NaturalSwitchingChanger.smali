.class public abstract Lcom/android/server/wm/NaturalSwitchingChanger;
.super Ljava/lang/Object;
.source "NaturalSwitchingChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/NaturalSwitchingChanger$SplitToSplitChanger;,
        Lcom/android/server/wm/NaturalSwitchingChanger$SplitToFreeformChanger;,
        Lcom/android/server/wm/NaturalSwitchingChanger$FreeformToFreeformChanger;,
        Lcom/android/server/wm/NaturalSwitchingChanger$FreeformToSplitChanger;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NaturalSwitchingChanger"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mCreateMode:I

.field public mCurrentDockSide:I

.field public final mDropBounds:Landroid/graphics/Rect;

.field public mFromWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field

.field public mNeedToReparentCell:Z

.field public mOptions:Landroid/app/ActivityOptions;

.field public mRequestedDockSide:I

.field public mSplitMode:I

.field public mTask:Lcom/android/server/wm/Task;

.field public mToPosition:I

.field public mToWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mToWindowingMode:I

    .line 56
    iput v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mFromWindowingMode:I

    .line 58
    iput v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mToPosition:I

    const/16 v1, 0x8

    .line 59
    iput v1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mSplitMode:I

    const/4 v1, -0x1

    .line 61
    iput v1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mCurrentDockSide:I

    .line 62
    iput v1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mRequestedDockSide:I

    .line 63
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    .line 65
    iput v1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mCreateMode:I

    .line 66
    iput-boolean v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    .line 69
    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public abstract changeLayout()V
.end method

.method public abstract isExitAnimationNeeded()Z
.end method

.method public setInitialState(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 5

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mTask:Lcom/android/server/wm/Task;

    .line 74
    iput-object p2, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mOptions:Landroid/app/ActivityOptions;

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mDropBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 77
    iget-object p3, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p3}, Lcom/android/server/wm/MultiTaskingController;->getMultiSplitFlags()I

    move-result p3

    and-int/lit8 v0, p3, 0x38

    .line 78
    iput v0, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mSplitMode:I

    .line 79
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mFromWindowingMode:I

    .line 80
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mToWindowingMode:I

    .line 81
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getSplitPosition()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mToPosition:I

    .line 82
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mCreateMode:I

    .line 83
    invoke-static {p3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->multiSplitFlagsToDockSide(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mCurrentDockSide:I

    .line 84
    iget p1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mCreateMode:I

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->createModeToDockSide(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mRequestedDockSide:I

    .line 85
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->needToReparentCell()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/NaturalSwitchingChanger;->mNeedToReparentCell:Z

    return-void
.end method

.method public shouldSyncTask()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
