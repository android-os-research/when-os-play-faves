.class public Lcom/android/server/wm/ActivityRecordInputSink;
.super Ljava/lang/Object;
.source "ActivityRecordInputSink.java"


# static fields
.field public static final ENABLE_TOUCH_OPAQUE_ACTIVITIES:J = 0xb978b5fL


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

.field public final mIsCompatEnabled:Z

.field public final mName:Ljava/lang/String;

.field public mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 53
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    const-wide/32 v1, 0xb978b5f

    .line 52
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mIsCompatEnabled:Z

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ActivityRecordInputSink "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 55
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    if-eqz p2, :cond_3e

    .line 57
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    iput p0, p2, Lcom/android/server/wm/ActivityRecord;->mAllowedTouchUid:I

    :cond_3e
    return-void
.end method


# virtual methods
.method public applyChangesToSurfaceIfChanged(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 62
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordInputSink;->getInputWindowHandleWrapper()Lcom/android/server/wm/InputWindowHandleWrapper;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_e

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecordInputSink;->createSurface(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 66
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/InputWindowHandleWrapper;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 67
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/InputWindowHandleWrapper;->applyChangesToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_19
    return-void
.end method

.method public final createInputWindowHandle()Landroid/view/InputWindowHandle;
    .registers 4

    .line 112
    new-instance v0, Landroid/view/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 113
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, v0, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    .line 115
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    iput-object p0, v0, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    const/16 p0, 0x7e6

    .line 116
    iput p0, v0, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 117
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    iput p0, v0, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 118
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    iput p0, v0, Landroid/view/InputWindowHandle;->ownerPid:I

    const/4 p0, 0x5

    .line 119
    iput p0, v0, Landroid/view/InputWindowHandle;->inputConfig:I

    return-object v0
.end method

.method public final createSurface(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const-string v0, "ActivityRecordInputSink.createSurface"

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 v0, -0x80000000

    .line 78
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public final getInputWindowHandleWrapper()Lcom/android/server/wm/InputWindowHandleWrapper;
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    if-nez v0, :cond_f

    .line 84
    new-instance v0, Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecordInputSink;->createInputWindowHandle()Landroid/view/InputWindowHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    .line 89
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 90
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 91
    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mAllowedTouchUid:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 92
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    if-eq v2, v3, :cond_34

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 93
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    move v0, v1

    :goto_37
    const/16 v2, 0x8

    if-nez v0, :cond_6c

    .line 94
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mIsCompatEnabled:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInTransition()Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 97
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_6c

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 99
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInSplitActivityMode()Z

    move-result v0

    if-nez v0, :cond_6c

    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 101
    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_6c

    .line 106
    :cond_66
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    goto :goto_71

    .line 103
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    .line 108
    :goto_71
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    return-object p0
.end method

.method public releaseSurfaceControl()V
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    .line 125
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_a
    return-void
.end method
