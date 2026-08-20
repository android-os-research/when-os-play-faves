.class Lcom/android/server/wm/Transition$ChangeInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Transition$ChangeInfo$Flag;
    }
.end annotation


# static fields
.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SEAMLESS_ROTATION:I = 0x1


# instance fields
.field public final mAbsoluteBounds:Landroid/graphics/Rect;

.field public mChangeTransitMode:I
    .annotation build Lcom/samsung/android/multiwindow/MultiWindowManager$ChangeTransitionMode;
    .end annotation
.end field

.field public mExistenceChanged:Z

.field public mFlags:I

.field public mForceChange:Z

.field public mKnownConfigChanges:I

.field public mParent:Lcom/android/server/wm/WindowContainer;

.field public mRotation:I

.field public mShowWallpaper:Z

.field public mVisible:Z

.field public mWindowingMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 1614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1598
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 1602
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    .line 1604
    iput v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1607
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1608
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChange:Z

    .line 1612
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 1615
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 1616
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    .line 1617
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1618
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    .line 1619
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1598
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 1602
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 1604
    iput v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1607
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeTransitMode:I

    .line 1608
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChange:Z

    .line 1612
    iput v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 1624
    iput-boolean p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    .line 1625
    iput-boolean p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    .line 1626
    iput-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    return-void
.end method


# virtual methods
.method public getChangeFlags(Lcom/android/server/wm/WindowContainer;)I
    .registers 4
    .annotation build Landroid/window/TransitionInfo$ChangeFlags;
    .end annotation

    .line 1661
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-nez p0, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    .line 1664
    :goto_e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v0

    if-nez v0, :cond_16

    or-int/lit8 p0, p0, 0x4

    .line 1671
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1672
    iget-object v1, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_22

    or-int/lit8 p0, p0, 0x10

    :cond_22
    if-eqz v0, :cond_2d

    const/4 v1, 0x0

    .line 1675
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_2d

    or-int/lit8 p0, p0, 0x4

    .line 1678
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 1681
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_39

    or-int/lit16 p0, p0, 0x200

    .line 1685
    :cond_39
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mUseTransferredAnimation:Z

    if-eqz v1, :cond_3f

    or-int/lit8 p0, p0, 0x8

    .line 1688
    :cond_3f
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v0, :cond_52

    or-int/lit8 p0, p0, 0x10

    goto :goto_52

    .line 1692
    :cond_46
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION:Z

    if-eqz v0, :cond_52

    .line 1693
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-eqz v0, :cond_52

    or-int/lit16 p0, p0, 0x400

    .line 1698
    :cond_52
    :goto_52
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_62

    or-int/lit8 p0, p0, 0x20

    .line 1701
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result v0

    if-eqz v0, :cond_62

    or-int/lit16 p0, p0, 0x80

    .line 1705
    :cond_62
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smisWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_6a

    or-int/lit8 p0, p0, 0x2

    .line 1708
    :cond_6a
    invoke-static {p1}, Lcom/android/server/wm/Transition;->-$$Nest$smoccludesKeyguard(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-eqz p1, :cond_72

    or-int/lit8 p0, p0, 0x40

    :cond_72
    return p0
.end method

.method public getTransitMode(Lcom/android/server/wm/WindowContainer;)I
    .registers 3
    .annotation build Landroid/window/TransitionInfo$TransitionMode;
    .end annotation

    .line 1647
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    .line 1648
    iget-boolean v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-ne p1, v0, :cond_a

    const/4 p0, 0x6

    return p0

    .line 1651
    :cond_a
    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz p0, :cond_14

    if-eqz p1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x2

    :goto_13
    return p0

    :cond_14
    if-eqz p1, :cond_18

    const/4 p0, 0x3

    goto :goto_19

    :cond_18
    const/4 p0, 0x4

    :goto_19
    return p0
.end method

.method public hasChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5

    .line 1632
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    .line 1633
    iget-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    if-nez v1, :cond_c

    return v2

    :cond_c
    if-ne v0, v1, :cond_3e

    .line 1634
    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    if-nez v0, :cond_3e

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-eqz v0, :cond_1e

    .line 1638
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    if-ne v0, v1, :cond_3e

    .line 1639
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1640
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    if-ne v0, p1, :cond_3e

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p1, :cond_3f

    iget-boolean p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mForceChange:Z

    if-eqz p0, :cond_3f

    :cond_3e
    const/4 v2, 0x1

    :cond_3f
    return v2
.end method
