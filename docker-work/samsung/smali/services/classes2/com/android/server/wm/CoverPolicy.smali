.class public Lcom/android/server/wm/CoverPolicy;
.super Ljava/lang/Object;
.source "CoverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "CoverPolicy"


# instance fields
.field public mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field public mCoverWindow:Lcom/android/server/wm/WindowState;

.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

.field public mHandler:Landroid/os/Handler;

.field public mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

.field public mLastClearCoverState:Z

.field public mLastCoverAppCovered:Z

.field public mWallpaperTargetMayChange:Z

.field public mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$dNZIIw4gqOnkJagBixr6rQB5d08(Lcom/android/server/wm/CoverPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/CoverPolicy;->lambda$updateOrientationListener$0()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 73
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/wm/CoverPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayPolicyExt;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    .line 83
    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    .line 90
    new-instance v0, Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/CoverPolicy$CoverPolicyHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    .line 94
    iget-object v0, p1, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, p0, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 95
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 96
    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method private synthetic lambda$updateOrientationListener$0()V
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    return-void
.end method


# virtual methods
.method public applyForceHidePolicyLw(Lcom/android/server/wm/WindowState;)Z
    .registers 7

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicy;->canBeHiddenByViewCoverLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_80

    .line 215
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicy;->shouldBeHiddenByViewCover(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const-string v2, "CoverPolicy"

    const/4 v3, 0x1

    if-eqz v0, :cond_3f

    .line 216
    invoke-virtual {p1, v1, v3}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 217
    sget-boolean v0, Lcom/android/server/wm/CoverPolicy;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyForceHidePolicyLw, hide by cover, win="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_2e
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    .line 221
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 220
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WmCoverState;->windowAttrsHasShowWallpaperOrShowWhenLocked(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 222
    iput-boolean v3, p0, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    :cond_3e
    return v3

    .line 228
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->shouldApplyAodPolicy()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayPolicyExt;->canBeForceHiddenByAodLw(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    goto :goto_50

    .line 231
    :cond_4c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeHiddenByKeyguard()Z

    move-result v0

    :goto_50
    if-nez v0, :cond_80

    .line 234
    invoke-virtual {p1, v1, v3}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 235
    sget-boolean v0, Lcom/android/server/wm/CoverPolicy;->DEBUG:Z

    if-eqz v0, :cond_70

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyForceHidePolicyLw, show by cover, win="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_70
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    .line 239
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 238
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WmCoverState;->windowAttrsHasShowWallpaperOrShowWhenLocked(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 240
    iput-boolean v3, p0, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    :cond_80
    return v1
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    .line 130
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/WmCoverState;->isCoverAppSupported()Z

    move-result p2

    if-eqz p2, :cond_78

    .line 131
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p2

    if-eqz p2, :cond_78

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CoverPolicy;->isApplyWindow(Lcom/android/server/wm/WindowState;)Z

    move-result p2

    if-eqz p2, :cond_78

    iget-object p2, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-nez p2, :cond_78

    .line 133
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2d

    .line 134
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v0

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    if-eqz v1, :cond_78

    .line 136
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_54

    .line 137
    iget-object v1, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-ne p2, v0, :cond_3e

    .line 139
    iget-object p2, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_3e
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4d

    .line 141
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->willBeHideSViewCoverOnce()Z

    move-result p2

    if-eqz p2, :cond_54

    .line 142
    iget-object p2, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_4d
    if-eqz v1, :cond_54

    .line 145
    iget-object p2, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_54
    :goto_54
    iget-object p2, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_78

    .line 149
    iput-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 150
    sget-boolean p0, Lcom/android/server/wm/CoverPolicy;->DEBUG:Z

    if-eqz p0, :cond_78

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyPostLayoutPolicyLw, set mHideSViewCoverWindow to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CoverPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    return-void
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mAppsToBeHiddenBySViewCover:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    .line 123
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 124
    iput-boolean v1, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 126
    :cond_13
    iput-boolean v1, p0, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    return-void
.end method

.method public canBeHiddenByViewCoverLw(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 250
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getCoverMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    if-eq v0, v1, :cond_18

    const/4 v3, 0x2

    if-eq v0, v3, :cond_12

    const/16 v3, 0xa

    if-eq v0, v3, :cond_18

    goto :goto_43

    .line 271
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->willBeHideSViewCoverOnce()Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_18
    return v2

    .line 252
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_56

    const/16 v3, 0x7d5

    if-eq v0, v3, :cond_56

    const/16 v3, 0x7dd

    if-eq v0, v3, :cond_56

    const/16 v3, 0x7f8

    if-eq v0, v3, :cond_56

    const/16 v3, 0x96b

    if-eq v0, v3, :cond_56

    const/16 v3, 0x7e3

    if-eq v0, v3, :cond_56

    const/16 v3, 0x7e4

    if-eq v0, v3, :cond_56

    const/16 v3, 0xa46

    if-eq v0, v3, :cond_55

    const/16 v3, 0xa47

    if-eq v0, v3, :cond_55

    .line 277
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mWindowPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v0, 0x833

    .line 278
    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result p0

    if-gt p1, p0, :cond_54

    goto :goto_55

    :cond_54
    move v1, v2

    :cond_55
    :goto_55
    return v1

    :cond_56
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 381
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "CoverPolicy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2a

    .line 385
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCoverWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 387
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_3b

    .line 388
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHideSViewCoverWindow="

    .line 389
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 391
    :cond_3b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLastCoverAppCovered="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public finishPostLayoutPolicyLw()V
    .registers 6

    .line 161
    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    if-eqz v0, :cond_c

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 166
    :cond_c
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isCoverAppSupported()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 167
    sget-boolean v0, Lcom/android/server/wm/CoverPolicy;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishPostLayoutPolicyLw : mHideSViewCoverWindow ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverPolicy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    if-eqz v0, :cond_7c

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 175
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_50

    .line 176
    iget-boolean v3, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    if-nez v3, :cond_6d

    .line 177
    invoke-interface {v0, v2}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v1

    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_6d

    .line 179
    iput-boolean v2, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->updateOrientationListener()V

    goto :goto_6d

    .line 183
    :cond_50
    iget-boolean v3, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    if-eqz v3, :cond_6d

    .line 184
    invoke-interface {v0, v1}, Lcom/samsung/android/cover/ICoverManager;->onCoverAppCovered(Z)I

    move-result v0
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_58} :catch_69

    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_67

    .line 186
    :try_start_5c
    iput-boolean v1, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->updateOrientationListener()V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_61} :catch_62

    goto :goto_67

    :catch_62
    move-exception v1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_6a

    :cond_67
    :goto_67
    move v1, v0

    goto :goto_6d

    :catch_69
    move-exception v0

    .line 191
    :goto_6a
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6d
    :goto_6d
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_75

    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_7c

    .line 195
    :cond_75
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_7c
    return-void
.end method

.method public final declared-synchronized getCoverManager()Lcom/samsung/android/cover/ICoverManager;
    .registers 3

    monitor-enter p0

    .line 110
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1b

    const-string v0, "cover"

    .line 111
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1b

    const-string v0, "CoverPolicy"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApplyWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 203
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1f

    .line 204
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result p0

    .line 205
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v2, :cond_17

    iget-boolean p1, p1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    move p1, v1

    goto :goto_18

    :cond_17
    :goto_17
    move p1, v0

    :goto_18
    if-eqz p0, :cond_1d

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    return v0

    .line 208
    :cond_1f
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne p0, v2, :cond_34

    .line 209
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    return v0
.end method

.method public isLastCoverAppOpened()Z
    .registers 1

    .line 340
    iget-boolean p0, p0, Lcom/android/server/wm/CoverPolicy;->mLastCoverAppCovered:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isWallpaperTargetMayChange()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 370
    iget-boolean p0, p0, Lcom/android/server/wm/CoverPolicy;->mWallpaperTargetMayChange:Z

    return p0
.end method

.method public sendPowerKeyToCover()V
    .registers 3

    .line 298
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isFlipTypeCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 300
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->getCoverManager()Lcom/samsung/android/cover/ICoverManager;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 302
    invoke-interface {p0}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string v0, "CoverPolicy"

    const-string v1, "CoverManager threw RemoteException"

    .line 305
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    :goto_1c
    return-void
.end method

.method public shouldApplyAodPolicy()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 376
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return p0
.end method

.method public shouldApplyNoAnimation(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_38

    .line 349
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v0, 0x10000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_17

    move p1, v2

    goto :goto_18

    :cond_17
    move p1, v1

    .line 350
    :goto_18
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-nez p0, :cond_28

    move p0, v2

    goto :goto_29

    :cond_28
    move p0, v1

    :goto_29
    if-nez p1, :cond_37

    if-eqz p0, :cond_5d

    .line 353
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WmCoverState;->shouldHideStatusBarForCover()Z

    move-result p0

    if-eqz p0, :cond_5d

    :cond_37
    return v2

    .line 356
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayPolicyExt:Lcom/android/server/wm/DisplayPolicyExt;

    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne p1, v0, :cond_5d

    .line 357
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 358
    invoke-virtual {p1}, Lcom/android/server/wm/WmCoverState;->isClearTypeCover()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 359
    invoke-virtual {p1}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v0

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    if-nez v0, :cond_5d

    .line 361
    :cond_58
    iget-boolean p1, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iput-boolean p1, p0, Lcom/android/server/wm/CoverPolicy;->mLastClearCoverState:Z

    return v2

    :cond_5d
    return v1
.end method

.method public shouldBeHiddenByViewCover(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .line 283
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x833

    if-eq v0, v3, :cond_17

    const/16 v3, 0xa46

    if-eq v0, v3, :cond_17

    const/16 v3, 0xa47

    if-ne v0, v3, :cond_15

    goto :goto_17

    :cond_15
    move v0, v2

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v1

    .line 286
    :goto_18
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WmCoverState;->isViewCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_3a

    if-eqz v0, :cond_25

    return v2

    .line 290
    :cond_25
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v0, v3

    if-eqz v0, :cond_30

    move v0, v1

    goto :goto_31

    :cond_30
    move v0, v2

    .line 291
    :goto_31
    iget-object p0, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, p0, :cond_38

    if-nez v0, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    return v1

    :cond_3a
    return v0
.end method

.method public updateCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .registers 4

    .line 311
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result v0

    .line 312
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WmCoverState;->updateCoverState(Lcom/samsung/android/cover/CoverState;)Z

    .line 314
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WmCoverState;->isCoverAppSupported()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 315
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p1

    if-nez p1, :cond_2b

    .line 316
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mHideSViewCoverWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_2b

    const/4 v1, 0x1

    .line 317
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->disableHideSViewCoverOnce(Z)V

    .line 322
    :cond_2b
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object p1, p1, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    invoke-virtual {p1}, Lcom/android/server/wm/ExtraDisplayFactory;->cover()Lcom/android/server/wm/CoverDisplayController;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 323
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mExtraDisplayController:Lcom/android/server/wm/ExtraDisplayController;

    iget-object p1, p1, Lcom/android/server/wm/ExtraDisplayController;->as:Lcom/android/server/wm/ExtraDisplayFactory;

    invoke-virtual {p1}, Lcom/android/server/wm/ExtraDisplayFactory;->cover()Lcom/android/server/wm/CoverDisplayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/CoverDisplayController;->updateCoverStateLocked()V

    .line 326
    :cond_44
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->hideImmersiveModeConfirmation()V

    if-nez v0, :cond_61

    .line 327
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WmCoverState;->isCoverClosed()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 328
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 331
    :cond_61
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 332
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 334
    :cond_6e
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 335
    iget-object p1, p0, Lcom/android/server/wm/CoverPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 336
    invoke-virtual {p0}, Lcom/android/server/wm/CoverPolicy;->updateOrientationListener()V

    return-void
.end method

.method public final updateOrientationListener()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/CoverPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/CoverPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/CoverPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
