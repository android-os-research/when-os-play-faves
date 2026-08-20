.class public Lcom/android/server/wm/Session;
.super Landroid/view/IWindowSession$Stub;
.source "Session.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

.field public final mAlertWindowSurfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowSurfaceController;",
            ">;"
        }
    .end annotation
.end field

.field public final mAppOverlaySurfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowSurfaceController;",
            ">;"
        }
    .end annotation
.end field

.field public final mCallback:Landroid/view/IWindowSessionCallback;

.field public final mCanAddInternalSystemWindow:Z

.field public final mCanCreateSystemApplicationOverlay:Z

.field public final mCanHideNonSystemOverlayWindows:Z

.field public final mCanStartTasksFromRecents:Z

.field public mClientDead:Z

.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public final mDummyControls:[Landroid/view/InsetsSourceControl;

.field public final mDummyRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field public mLastReportedAnimatorScale:F

.field public mNumWindow:I

.field public mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public mRelayoutTag:Ljava/lang/String;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSetsUnrestrictedKeepClearAreas:Z

.field public mShowingAlertWindowNotificationAllowed:Z

.field public final mStringName:Ljava/lang/String;

.field public mSurfaceSession:Landroid/view/SurfaceSession;

.field public final mUid:I

.field public mUpdateViewVisibilityTag:Ljava/lang/String;

.field public mUpdateWindowLayoutTag:Ljava/lang/String;

.field public mWinSurfaceVisibleCount:I


# direct methods
.method public static synthetic $r8$lambda$0iTQYT1BXoitru025a8h4XsSvKY(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Session;->lambda$wallpaperOffsetsComplete$3(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3mCyETVElt7RYfRjrQFo6XLjm8E(FLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Session;->lambda$setWallpaperZoomOut$1(FLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4AUId5gPI2vsvwwbdmo0TMr_-0w(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Session;->lambda$wallpaperCommandComplete$5(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7PszRu7p1MYptOkTy-QfUwI6FHQ(ZLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Session;->lambda$setShouldZoomOutWallpaper$2(ZLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VeZ22s3C82nIzxmQtxNefR5W4g8(FFFFLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/Session;->lambda$setWallpaperPosition$0(FFFFLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dLH86fawkEx6SYT9olm1mvPTp1Q(IILcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/Session;->lambda$setWallpaperDisplayOffset$4(IILcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;)V
    .registers 9

    .line 137
    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 112
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    .line 114
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    .line 123
    iput-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 129
    new-instance v1, Landroid/view/InsetsVisibilities;

    invoke-direct {v1}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mDummyRequestedVisibilities:Landroid/view/InsetsVisibilities;

    new-array v1, v0, [Landroid/view/InsetsSourceControl;

    .line 130
    iput-object v1, p0, Lcom/android/server/wm/Session;->mDummyControls:[Landroid/view/InsetsSourceControl;

    .line 134
    iput v0, p0, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    .line 138
    iput-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 139
    iput-object p2, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    .line 140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 141
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 142
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    .line 143
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_46

    move v3, v4

    goto :goto_47

    :cond_46
    move v3, v0

    :goto_47
    iput-boolean v3, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 145
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_60

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.HIDE_OVERLAY_WINDOWS"

    .line 147
    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5e

    goto :goto_60

    :cond_5e
    move v3, v0

    goto :goto_61

    :cond_60
    :goto_60
    move v3, v4

    :goto_61
    iput-boolean v3, p0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    .line 149
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    .line 150
    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6f

    move v3, v4

    goto :goto_70

    :cond_6f
    move v3, v0

    :goto_70
    iput-boolean v3, p0, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    .line 152
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.START_TASKS_FROM_RECENTS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7e

    move v3, v4

    goto :goto_7f

    :cond_7e
    move v3, v0

    :goto_7f
    iput-boolean v3, p0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    .line 154
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.SET_UNRESTRICTED_KEEP_CLEAR_AREAS"

    .line 155
    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8c

    goto :goto_8d

    :cond_8c
    move v4, v0

    :goto_8d
    iput-boolean v4, p0, Lcom/android/server/wm/Session;->mSetsUnrestrictedKeepClearAreas:Z

    .line 157
    iget-boolean v3, p1, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 158
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iput-object p1, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 159
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session{"

    .line 160
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 162
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_c1

    const-string v2, ":"

    .line 165
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_d9

    :cond_c1
    const-string v2, ":u"

    .line 168
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x61

    .line 170
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_d9
    const-string/jumbo v1, "}"

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    .line 177
    :try_start_e5
    invoke-interface {p2}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_ec} :catch_ec

    :catch_ec
    return-void
.end method

.method public static synthetic lambda$setShouldZoomOutWallpaper$2(ZLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 674
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/WallpaperController;->setShouldZoomOutWallpaper(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method public static synthetic lambda$setWallpaperDisplayOffset$4(IILcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 692
    invoke-virtual {p2, p3, p0, p1}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V

    return-void
.end method

.method public static synthetic lambda$setWallpaperPosition$0(FFFFLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 12

    move-object v0, p4

    move-object v1, p5

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 646
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V

    return-void
.end method

.method public static synthetic lambda$setWallpaperZoomOut$1(FLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 663
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/WallpaperController;->setWallpaperZoomOut(Lcom/android/server/wm/WindowState;F)V

    return-void
.end method

.method public static synthetic lambda$wallpaperCommandComplete$5(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 718
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->wallpaperCommandComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$wallpaperOffsetsComplete$3(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 682
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public final actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/server/wm/WallpaperController;",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    const-string p0, "WindowManager"

    const-string p1, "actionOnWallpaper() IBinder should not be null"

    .line 632
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 636
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    .line 637
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-interface {p2, p1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .registers 20

    move-object v1, p0

    .line 212
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v1, Lcom/android/server/wm/Session;->mUid:I

    .line 213
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 212
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    return v0
.end method

.method public addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .registers 21

    move-object v1, p0

    .line 222
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    return v0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;)I
    .registers 17

    move-object v1, p0

    .line 229
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v1, Lcom/android/server/wm/Session;->mUid:I

    .line 230
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, v1, Lcom/android/server/wm/Session;->mDummyRequestedVisibilities:Landroid/view/InsetsVisibilities;

    iget-object v10, v1, Lcom/android/server/wm/Session;->mDummyControls:[Landroid/view/InsetsSourceControl;

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v9, p5

    .line 229
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    return v0
.end method

.method public final allowSetHasOverlayUi(I)Z
    .registers 2

    const/16 p0, 0x96e

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public binderDied()V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 201
    iget-object v1, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {v1}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x1

    .line 202
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 203
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 204
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final cancelAlertWindowNotification()V
    .registers 3

    .line 948
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 951
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AlertWindowNotification;->cancel(Z)V

    const/4 v0, 0x0

    .line 952
    iput-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    return-void
.end method

.method public cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 5

    .line 560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 562
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragDropController;->cancelDragAndDrop(Landroid/os/IBinder;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 564
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 565
    throw p0
.end method

.method public clearTouchableRegion(Landroid/view/IWindow;)V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->clearTouchableRegion(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    return-void
.end method

.method public clearTspDeadzone(Landroid/view/IWindow;)V
    .registers 3

    .line 1108
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->clearTspDeadzone(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    return-void
.end method

.method public disableTransientBars(Landroid/view/IWindow;)V
    .registers 3

    .line 1128
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->disableTransientBars(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    return-void
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 2

    .line 570
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientEntered(Landroid/view/IWindow;)V

    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 2

    .line 575
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientExited(Landroid/view/IWindow;)V

    return-void
.end method

.method public dropForAccessibility(Landroid/view/IWindow;II)Z
    .registers 6

    .line 365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 367
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragDropController;->dropForAccessibility(Landroid/view/IWindow;FF)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 956
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCanAddInternalSystemWindow="

    .line 957
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mAppOverlaySurfaces="

    .line 958
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mAlertWindowSurfaces="

    .line 959
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mClientDead="

    .line 960
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSurfaceSession="

    .line 961
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 962
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPackageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mWinSurfaceVisibleCount="

    .line 966
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public enableTransientBars(Landroid/view/IWindow;)V
    .registers 3

    .line 1133
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->enableTransientBars(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    .registers 6

    .line 304
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IWindow finishDrawing called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method

.method public finishMovingTask(Landroid/view/IWindow;)V
    .registers 4

    .line 593
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "finishMovingTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 597
    :try_start_f
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning(Landroid/view/IWindow;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1a

    .line 599
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 600
    throw p0
.end method

.method public generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 13

    .line 1077
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1079
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->generateDisplayHash(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1081
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1082
    throw p0
.end method

.method public getInTouchMode()Z
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getInTouchMode()Z

    move-result p0

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 827
    iget-object p0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getWinSurfaceVisibleCount()I
    .registers 1

    .line 831
    iget p0, p0, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    return p0
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 2

    .line 736
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object p0

    return-object p0
.end method

.method public grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    .registers 7

    .line 1056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-nez p1, :cond_18

    .line 1059
    :try_start_6
    iget-boolean p1, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-eqz p1, :cond_10

    .line 1064
    iget-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)V

    goto :goto_1d

    .line 1062
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1066
    :cond_18
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_21

    .line 1070
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    throw p0
.end method

.method public grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    .registers 28

    move-object/from16 v0, p0

    if-nez p4, :cond_11

    .line 991
    iget-boolean v1, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-eqz v1, :cond_9

    goto :goto_11

    .line 994
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_11
    :goto_11
    iget-boolean v1, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-nez v1, :cond_1e

    if-eqz p7, :cond_1e

    const-string v1, "WindowManager"

    const-string v2, "Requires INTERNAL_SYSTEM_WINDOW permission if assign type to input"

    .line 998
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1004
    :try_start_22
    iget-object v1, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v0, Lcom/android/server/wm/Session;->mUid:I

    iget v4, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 1005
    iget-boolean v2, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_30

    move/from16 v10, p6

    goto :goto_31

    :cond_30
    move v10, v5

    :goto_31
    if-eqz v2, :cond_36

    move/from16 v11, p7

    goto :goto_37

    :cond_36
    move v11, v5

    :goto_37
    move-object/from16 v2, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    .line 1004
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/WindowManagerService;->grantInputChannel(Lcom/android/server/wm/Session;IIILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_50

    .line 1009
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_50
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1010
    throw v0
.end method

.method public grantInputChannelWithSurfaceInset(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    .registers 30

    move-object/from16 v0, p0

    if-nez p4, :cond_11

    .line 1018
    iget-boolean v1, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-eqz v1, :cond_9

    goto :goto_11

    .line 1021
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_11
    :goto_11
    iget-boolean v1, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-nez v1, :cond_1e

    if-eqz p7, :cond_1e

    const-string v1, "WindowManager"

    const-string v2, "Requires INTERNAL_SYSTEM_WINDOW permission if assign type to input"

    .line 1025
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1031
    :try_start_22
    iget-object v1, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v0, Lcom/android/server/wm/Session;->mUid:I

    iget v4, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 1032
    iget-boolean v2, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_30

    move/from16 v10, p6

    goto :goto_31

    :cond_30
    move v10, v5

    :goto_31
    if-eqz v2, :cond_36

    move/from16 v11, p7

    goto :goto_37

    :cond_36
    move v11, v5

    :goto_37
    move-object/from16 v2, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    .line 1031
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/wm/WindowManagerService;->grantInputChannel(Lcom/android/server/wm/Session;IIILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_4e
    .catchall {:try_start_22 .. :try_end_4e} :catchall_52

    .line 1036
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_52
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1037
    throw v0
.end method

.method public hasAlertWindowSurfaces(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5

    .line 978
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_20

    .line 979
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowSurfaceController;

    .line 980
    iget-object v2, v2, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-ne v2, p1, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final killSessionLocked()V
    .registers 8

    .line 916
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    if-gtz v0, :cond_96

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    if-nez v0, :cond_a

    goto/16 :goto_96

    .line 920
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 921
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_16

    return-void

    .line 925
    :cond_16
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_3a

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last window removed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", destroying "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_3a
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x52be68c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 931
    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_84

    :catch_59
    move-exception v0

    .line 933
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when killing surface session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :goto_84
    iput-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 937
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 938
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 939
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 940
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    :cond_96
    :goto_96
    return-void
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 6

    .line 724
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1e

    .line 727
    :try_start_c
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_19

    .line 729
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p0

    .line 729
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 730
    throw p0

    :catchall_1e
    move-exception p0

    .line 731
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 191
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_11

    const-string p1, "WindowManager"

    const-string p2, "Window Session Crash"

    .line 192
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :cond_11
    throw p0
.end method

.method public onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V
    .registers 5

    const/4 v0, 0x0

    .line 839
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Session;->onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZIZ)V

    return-void
.end method

.method public onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZIZ)V
    .registers 8

    const/4 v0, 0x1

    if-eq p2, p4, :cond_12

    if-eqz p2, :cond_b

    .line 846
    iget p4, p0, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    add-int/2addr p4, v0

    iput p4, p0, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    goto :goto_12

    .line 848
    :cond_b
    iget p4, p0, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    if-lez p4, :cond_12

    sub-int/2addr p4, v0

    .line 849
    iput p4, p0, Lcom/android/server/wm/Session;->mWinSurfaceVisibleCount:I

    .line 855
    :cond_12
    :goto_12
    invoke-static {p3}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result p4

    if-nez p4, :cond_19

    return-void

    .line 861
    :cond_19
    iget-boolean p4, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-nez p4, :cond_62

    iget-boolean p4, p0, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    if-nez p4, :cond_62

    if-eqz p2, :cond_31

    .line 865
    iget-object p4, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {p4, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p4

    .line 866
    iget v1, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, p4, p3, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_3e

    .line 868
    :cond_31
    iget-object p4, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {p4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p4

    .line 869
    iget v1, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, p4, p3, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    :goto_3e
    if-eqz p4, :cond_62

    .line 873
    iget-object p4, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {p4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_4c

    .line 874
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    goto :goto_62

    .line 875
    :cond_4c
    iget-object p4, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez p4, :cond_62

    .line 876
    new-instance p4, Lcom/android/server/wm/AlertWindowNotification;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-direct {p4, v1, v2}, Lcom/android/server/wm/AlertWindowNotification;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 877
    iget-boolean v1, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    if-eqz v1, :cond_62

    .line 878
    invoke-virtual {p4}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    :cond_62
    :goto_62
    const/16 p4, 0x7f6

    if-eq p3, p4, :cond_6d

    .line 885
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Session;->allowSetHasOverlayUi(I)Z

    move-result p4

    if-nez p4, :cond_6d

    return-void

    :cond_6d
    const/4 p4, 0x0

    if-eqz p2, :cond_7e

    .line 890
    iget-object p2, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 891
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v1, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {p2, v1, p1, p3, p4}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_8b

    .line 893
    :cond_7e
    iget-object p2, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 894
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v1, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {p2, v1, p1, p3, p4}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    :goto_8b
    if-eqz p1, :cond_97

    .line 900
    iget-object p1, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    :cond_97
    return-void
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    move-result p0

    return p0
.end method

.method public performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 28

    move-object/from16 v0, p0

    .line 334
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 335
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 337
    iget-object v3, v0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    move-object/from16 v15, p9

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/server/wm/Session;->validateAndResolveDragMimeTypeExtras(Landroid/content/ClipData;IILjava/lang/String;)V

    move/from16 v2, p2

    .line 338
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/Session;->validateDragFlags(II)V

    .line 339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 341
    :try_start_1a
    iget-object v4, v0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget v5, v0, Lcom/android/server/wm/Session;->mPid:I

    iget v6, v0, Lcom/android/server/wm/Session;->mUid:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/wm/DragDropController;->performDrag(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_3a

    .line 344
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_3a
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    throw v0
.end method

.method public performDragWithArea(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;Landroid/graphics/RectF;Landroid/graphics/Point;)Landroid/os/IBinder;
    .registers 29

    move-object/from16 v0, p0

    .line 353
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 355
    :try_start_6
    iget-object v3, v0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget v4, v0, Lcom/android/server/wm/Session;->mPid:I

    iget v5, v0, Lcom/android/server/wm/Session;->mUid:I

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-virtual/range {v3 .. v16}, Lcom/android/server/wm/DragDropController;->performDragWithArea(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;Landroid/graphics/RectF;Landroid/graphics/Point;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_2a

    .line 358
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_2a
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    throw v0
.end method

.method public performHapticFeedback(IZ)Z
    .registers 12

    .line 320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 322
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v5, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    move v6, p1

    move v7, p2

    invoke-interface/range {v3 .. v8}, Lcom/android/server/policy/WindowManagerPolicy;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    throw p0
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .registers 5

    .line 741
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 743
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 745
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    throw p0
.end method

.method public prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 3

    .line 262
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindows(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I
    .registers 29

    move-object/from16 v1, p0

    .line 273
    iget-object v0, v1, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    const-wide/16 v14, 0x20

    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 274
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I

    move-result v0

    .line 278
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    return v0
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 5

    .line 550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 552
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragDropController;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 554
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 555
    throw p0
.end method

.method public reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 616
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mSetsUnrestrictedKeepClearAreas:Z

    if-nez v0, :cond_e

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 617
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 620
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 622
    :try_start_12
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->reportKeepClearAreasChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    .line 624
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    throw p0
.end method

.method public reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 605
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 607
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->reportSystemGestureExclusionChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 609
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    throw p0
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 22

    move-object v0, p0

    .line 702
    iget-object v1, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_38

    .line 705
    :try_start_d
    iget-object v4, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 706
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    .line 707
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_33

    .line 709
    :try_start_2b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_38

    .line 706
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_33
    move-exception v0

    .line 709
    :try_start_34
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    throw v0

    :catchall_38
    move-exception v0

    .line 711
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final setHasOverlayUi(Z)V
    .registers 4

    .line 944
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    const/16 v1, 0x3a

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 2

    .line 310
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->setInTouchMode(Z)V

    return-void
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    return-void
.end method

.method public setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    .registers 6

    .line 1089
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1090
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_2b

    const-string p1, "WindowManager"

    .line 1092
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOnBackInvokedCallback(): No window state for package:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1095
    :cond_2b
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->setOnBackInvokedCallbackInfo(Landroid/window/OnBackInvokedCallbackInfo;)V

    .line 1097
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_33
    move-exception p0

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .registers 5

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 673
    new-instance v1, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 675
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setShowingAlertWindowNotificationAllowed(Z)V
    .registers 2

    .line 905
    iput-boolean p1, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 906
    iget-object p0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-eqz p0, :cond_10

    if-eqz p1, :cond_c

    .line 908
    invoke-virtual {p0}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    goto :goto_10

    :cond_c
    const/4 p1, 0x0

    .line 910
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AlertWindowNotification;->cancel(Z)V

    :cond_10
    :goto_10
    return-void
.end method

.method public setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V
    .registers 4

    .line 1103
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTspDeadzone(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/os/Bundle;)V

    return-void
.end method

.method public setTspNoteMode(Landroid/view/IWindow;Z)V
    .registers 4

    .line 1115
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTspNoteMode(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)V

    return-void
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 8

    .line 688
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_21

    .line 691
    :try_start_c
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2, p3}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1c

    .line 694
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception p0

    .line 694
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    throw p0

    :catchall_21
    move-exception p0

    .line 696
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 10

    .line 642
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_21

    .line 645
    :try_start_c
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2, p3, p4, p5}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;-><init>(FFFF)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1c

    .line 648
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception p0

    .line 648
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 649
    throw p0

    :catchall_21
    move-exception p0

    .line 650
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 7

    const/4 v0, 0x0

    .line 655
    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_3c

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_3c

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 659
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_36

    .line 662
    :try_start_21
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda3;

    invoke-direct {v3, p2}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda3;-><init>(F)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_31

    .line 665
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 667
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_31
    move-exception p0

    .line 665
    :try_start_32
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    throw p0

    :catchall_36
    move-exception p0

    .line 667
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 656
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Zoom must be a valid float between 0 and 1: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 6

    .line 580
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMovingTask: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 585
    :try_start_2d
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskPositioningController;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result p0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_39

    .line 587
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_39
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 973
    iget-object p0, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    return-object p0
.end method

.method public updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V
    .registers 16

    .line 1044
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1046
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1047
    iget-boolean p0, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-eqz p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 p5, 0x0

    :goto_c
    move v7, p5

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v8, p6

    .line 1046
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WindowManagerService;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1049
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1050
    throw p0
.end method

.method public updateLayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V
    .registers 17

    move-object v1, p0

    .line 254
    iget-object v0, v1, Lcom/android/server/wm/Session;->mUpdateWindowLayoutTag:Ljava/lang/String;

    const-wide/16 v8, 0x20

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 255
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerService;->updateWindowLayout(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V

    .line 257
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public updatePointerIcon(Landroid/view/IWindow;)V
    .registers 4

    .line 751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 753
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->updatePointerIcon(Landroid/view/IWindow;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 756
    throw p0
.end method

.method public updateRequestedVisibilities(Landroid/view/IWindow;Landroid/view/InsetsVisibilities;)V
    .registers 6

    .line 771
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 772
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 776
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getRequestedVisibility(I)Z

    move-result v1

    .line 777
    invoke-virtual {p2, v2}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v2

    .line 779
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->setRequestedVisibilities(Landroid/view/InsetsVisibilities;)V

    .line 780
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/wm/InsetsPolicy;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V

    if-eqz v2, :cond_45

    if-nez v1, :cond_45

    .line 782
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-nez p2, :cond_45

    .line 785
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result p2

    if-eqz p2, :cond_45

    .line 786
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 787
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 791
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_4a
    move-exception p0

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 5

    .line 761
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 763
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 765
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 766
    throw p0
.end method

.method public updateVisibility(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .registers 19

    move-object v1, p0

    .line 244
    iget-object v0, v1, Lcom/android/server/wm/Session;->mUpdateViewVisibilityTag:Ljava/lang/String;

    const-wide/16 v9, 0x20

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 245
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/WindowManagerService;->updateViewVisibility(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 247
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    return v0
.end method

.method public validateAndResolveDragMimeTypeExtras(Landroid/content/ClipData;IILjava/lang/String;)V
    .registers 24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p2

    const/4 v11, 0x0

    if-eqz v1, :cond_e

    .line 410
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    goto :goto_f

    :cond_e
    move-object v2, v11

    :goto_f
    if-nez v2, :cond_12

    return-void

    :cond_12
    const-string v3, "application/vnd.android.activity"

    .line 415
    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "application/vnd.android.shortcut"

    .line 416
    invoke-virtual {v2, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "application/vnd.android.task"

    .line 417
    invoke-virtual {v2, v5}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    add-int v5, v3, v4

    add-int/2addr v5, v2

    if-nez v5, :cond_2a

    return-void

    :cond_2a
    const/4 v6, 0x1

    if-gt v5, v6, :cond_1ea

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-eqz v5, :cond_1e2

    const/4 v12, 0x0

    move v5, v12

    .line 431
    :goto_35
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_50

    .line 432
    invoke-virtual {v1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_48

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 433
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected item, expected an intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_50
    iget-object v5, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 440
    invoke-virtual {v5}, Lcom/android/server/wm/MultiTaskingController;->getSystemUiUid()I

    move-result v5

    const/16 v13, 0x3e8

    if-eq v5, v10, :cond_7d

    iget-object v5, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 441
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/server/wm/RecentTasks;->isRecentsUid(I)Z

    move-result v5

    if-nez v5, :cond_7d

    iget-object v5, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 442
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/server/wm/RecentTasks;->isEdgeUid(I)Z

    move-result v5

    if-eqz v5, :cond_7b

    goto :goto_7d

    :cond_7b
    move v14, v10

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v14, v13

    :goto_7e
    const-string v15, "android.intent.extra.USER"

    if-eqz v3, :cond_da

    .line 448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 451
    :goto_86
    :try_start_86
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v12, v4, :cond_d0

    .line 452
    invoke-virtual {v1, v12}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 453
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.PENDING_INTENT"

    .line 454
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 456
    invoke-virtual {v5, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    if-eqz v6, :cond_c8

    if-eqz v5, :cond_c8

    .line 461
    iget-object v7, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 462
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    .line 461
    invoke-virtual {v7, v6}, Landroid/app/ActivityManagerInternal;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v6

    .line 463
    iget-object v7, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 464
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 463
    invoke-virtual {v7, v6, v11, v5, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 468
    invoke-virtual {v4, v5}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_86

    .line 458
    :cond_c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Clip data must include the pending intent to launch and its associated user to launch for."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d0
    .catchall {:try_start_86 .. :try_end_d0} :catchall_d5

    .line 471
    :cond_d0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1e1

    :catchall_d5
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 472
    throw v0

    :cond_da
    const-string v3, "Requires START_TASKS_FROM_RECENTS permission"

    if-eqz v4, :cond_182

    .line 476
    iget-boolean v2, v0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    if-eqz v2, :cond_17c

    move v9, v12

    .line 479
    :goto_e3
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v9, v2, :cond_1e1

    .line 480
    invoke-virtual {v1, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    .line 481
    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.ID"

    .line 482
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 483
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 484
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/os/UserHandle;

    .line 485
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_174

    .line 486
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_174

    if-eqz v16, :cond_174

    .line 491
    const-class v2, Landroid/content/pm/ShortcutServiceInternal;

    .line 492
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutServiceInternal;

    .line 494
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 495
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v4, p4

    move-object/from16 v17, v8

    move/from16 v8, p3

    move/from16 v18, v9

    move/from16 v9, p2

    .line 493
    invoke-virtual/range {v2 .. v9}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_16c

    .line 496
    array-length v3, v2

    if-eqz v3, :cond_16c

    if-ne v14, v13, :cond_155

    .line 504
    aget-object v3, v2, v12

    iget-object v4, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 505
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 504
    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 506
    iget-object v4, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    aget-object v2, v2, v12

    .line 507
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 506
    invoke-virtual {v4, v2, v3, v5, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    goto :goto_163

    .line 511
    :cond_155
    iget-object v3, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    aget-object v2, v2, v12

    .line 512
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 511
    invoke-virtual {v3, v2, v11, v4, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    :goto_163
    move-object/from16 v3, v17

    .line 515
    invoke-virtual {v3, v2}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    add-int/lit8 v9, v18, 0x1

    goto/16 :goto_e3

    .line 497
    :cond_16c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid shortcut id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Clip item must include the package name, shortcut id, and the user to launch for."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_17c
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_182
    if-eqz v2, :cond_1e1

    .line 519
    iget-boolean v2, v0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    if-eqz v2, :cond_1db

    .line 522
    :goto_188
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v12, v2, :cond_1e1

    .line 523
    invoke-virtual {v1, v12}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 524
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.TASK_ID"

    const/4 v5, -0x1

    .line 525
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_1d3

    .line 529
    iget-object v4, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_1cb

    .line 533
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_1b9

    .line 534
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    goto :goto_1c8

    .line 537
    :cond_1b9
    iget-object v4, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v3, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v4, v5, v11, v3, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 542
    invoke-virtual {v2, v3}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    :goto_1c8
    add-int/lit8 v12, v12, 0x1

    goto :goto_188

    .line 531
    :cond_1cb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid task id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_1d3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Clip item must include the task id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_1db
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e1
    :goto_1e1
    return-void

    .line 429
    :cond_1e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of items (none)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_1ea
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not specify more than one of activity, shortcut, or task mime types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateDragFlags(II)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_11

    .line 389
    iget-boolean p0, p0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    if-eqz p0, :cond_9

    goto :goto_11

    .line 390
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires START_TASKS_FROM_RECENTS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    return-void
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4

    .line 716
    iget-object p2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p2

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 717
    new-instance v0, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 719
    monitor-exit p2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit p2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4

    .line 680
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 681
    new-instance v1, Lcom/android/server/wm/Session$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda4;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 683
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public windowAddedLocked()V
    .registers 8

    .line 795
    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    const-string v1, "WindowManager"

    if-nez v0, :cond_73

    .line 796
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget v2, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 798
    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "relayoutWindow: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVisibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mUpdateViewVisibilityTag:Ljava/lang/String;

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLayout: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mUpdateWindowLayoutTag:Ljava/lang/String;

    goto :goto_73

    .line 803
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown process pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    const/4 v2, 0x1

    if-nez v0, :cond_ca

    .line 807
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_95

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First window added to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", creating SurfaceSession"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_95
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 811
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v1, :cond_b2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x2447f01c

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 812
    :cond_b2
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 813
    iget v0, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_ca

    .line 814
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 817
    :cond_ca
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    return-void
.end method

.method public windowRemovedLocked()V
    .registers 2

    .line 821
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 822
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    return-void
.end method
