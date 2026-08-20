.class public Lcom/android/server/wm/NoWaitRotationController;
.super Lcom/android/server/wm/PackagesChange;
.source "NoWaitRotationController.java"


# instance fields
.field public final mNoWaitRotationList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public mNoWaitRotationNeededCount:[Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$hMeATvcUfMRsFyv565ZocCF24-Q(Lcom/android/server/wm/NoWaitRotationController;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/NoWaitRotationController;->lambda$shouldPerformNoWaitRotation$0(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 40
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->ALLOW_NO_WAIT_ROTATION_FOR_4_1:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object p1, p0, Lcom/android/server/wm/NoWaitRotationController;->mNoWaitRotationList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    .line 43
    iput-object p1, p0, Lcom/android/server/wm/NoWaitRotationController;->mNoWaitRotationNeededCount:[Ljava/lang/Integer;

    return-void
.end method

.method private synthetic lambda$shouldPerformNoWaitRotation$0(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 65
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 68
    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_23

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldPerformNoWaitRotation, w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_23
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/NoWaitRotationController;->needToWait(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2b

    return v2

    .line 74
    :cond_2b
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/NoWaitRotationController;->noNeedToWait(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayPolicy;)Z

    move-result p1

    if-eqz p1, :cond_32

    return v1

    .line 77
    :cond_32
    iget-object p1, p0, Lcom/android/server/wm/NoWaitRotationController;->mNoWaitRotationList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 78
    iget-object p0, p0, Lcom/android/server/wm/NoWaitRotationController;->mNoWaitRotationNeededCount:[Ljava/lang/Integer;

    aget-object p1, p0, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    return v1

    :cond_4e
    return v2
.end method


# virtual methods
.method public final needToWait(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 3

    .line 94
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eq p1, p0, :cond_13

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez p0, :cond_13

    .line 96
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final noNeedToWait(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayPolicy;)Z
    .registers 3

    .line 100
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eq p1, p0, :cond_27

    .line 101
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eq p1, p0, :cond_27

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p2, 0x8b2

    if-eq p0, p2, :cond_27

    const/16 p2, 0xa2c

    if-eq p0, p2, :cond_27

    .line 105
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMultiWindowHandler()Z

    move-result p0

    if-nez p0, :cond_27

    .line 106
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMultiWindowMenuPopup()Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    :goto_28
    return p0
.end method

.method public shouldPerformNoWaitRotation(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ScreenRotationAnimation;)Z
    .registers 6

    .line 50
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    invoke-virtual {p2}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_6e

    .line 54
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p2

    if-eqz p2, :cond_17

    return v1

    .line 57
    :cond_17
    iget-object p2, p0, Lcom/android/server/wm/NoWaitRotationController;->mNoWaitRotationList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_20

    return v1

    .line 61
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p2

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/NoWaitRotationController;->mNoWaitRotationNeededCount:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    new-instance v0, Lcom/android/server/wm/NoWaitRotationController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/NoWaitRotationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/NoWaitRotationController;Lcom/android/server/wm/DisplayPolicy;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_43

    .line 84
    iget-object p2, p0, Lcom/android/server/wm/NoWaitRotationController;->mNoWaitRotationNeededCount:[Ljava/lang/Integer;

    aget-object p2, p2, v1

    .line 85
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_43

    const/4 p2, 0x1

    goto :goto_44

    :cond_43
    move p2, v1

    .line 86
    :goto_44
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-nez v0, :cond_4a

    if-eqz p2, :cond_6d

    .line 87
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldPerformNoWaitRotation, WaitingNeededWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", NoWaitRotationNeededCount="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/NoWaitRotationController;->mNoWaitRotationNeededCount:[Ljava/lang/Integer;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return p2

    :cond_6e
    :goto_6e
    return v1
.end method
