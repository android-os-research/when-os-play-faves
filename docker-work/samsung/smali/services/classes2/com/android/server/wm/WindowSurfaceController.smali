.class public Lcom/android/server/wm/WindowSurfaceController;
.super Ljava/lang/Object;
.source "WindowSurfaceController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field public mChildrenDetached:Z

.field public mLastDsdx:F

.field public mLastDsdy:F

.field public mLastDtdx:F

.field public mLastDtdy:F

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSurfaceAlpha:F

.field public mSurfaceControl:Landroid/view/SurfaceControl;

.field public mSurfaceLayer:I

.field public mSurfaceShown:Z

.field public mSurfaceX:F

.field public mSurfaceY:F

.field public final mWindowSession:Lcom/android/server/wm/Session;

.field public final mWindowType:I

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/android/server/wm/WindowStateAnimator;I)V
    .registers 13

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    const/4 v1, 0x0

    .line 65
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    .line 66
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 69
    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 70
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 71
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 72
    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 74
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    .line 76
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    .line 90
    iput-object p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    .line 94
    iget-object v1, p4, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 95
    iget-object v2, p4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 96
    iput p5, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    .line 97
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    .line 102
    iget v4, v3, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v4, v5, :cond_4b

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$_"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4b
    const-wide/16 v4, 0x20

    const-string p4, "new SurfaceControl"

    .line 108
    invoke-static {v4, v5, p4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object p4

    .line 110
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p4, v6}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p4

    .line 111
    invoke-virtual {p4, p1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p4

    .line 112
    invoke-virtual {p4, p2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 113
    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const/4 p3, 0x2

    .line 114
    invoke-virtual {p2, p3, p5}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    iget p3, v3, Lcom/android/server/wm/Session;->mUid:I

    const/4 p4, 0x1

    .line 115
    invoke-virtual {p2, p4, p3}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const/4 p3, 0x6

    iget p5, v3, Lcom/android/server/wm/Session;->mPid:I

    .line 116
    invoke-virtual {p2, p3, p5}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string p3, "WindowSurfaceController"

    .line 117
    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 119
    iget-boolean p3, v1, Lcom/android/server/wm/WindowManagerService;->mUseBLAST:Z

    if-eqz p3, :cond_93

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 p5, 0x2000000

    and-int/2addr p3, p5

    if-eqz p3, :cond_93

    move v0, p4

    :cond_93
    if-eqz v0, :cond_98

    .line 123
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 129
    :cond_98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    .line 133
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "makeSurface duration="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " name="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SUPPORT_IQI:Z

    if-eqz p2, :cond_c7

    if-eqz p1, :cond_c7

    const-string p2, "com.att.iqi"

    const-string p3, "PKG_01"

    .line 139
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_c7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    .line 137
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public clearWindowContentFrameStats()Z
    .registers 1

    .line 334
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 337
    :cond_6
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->clearContentFrameStats()Z

    move-result p0

    return p0
.end method

.method public destroy(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    .line 173
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_FORCE_SHOW_SURFACE_ALLOC_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x7496f5fd

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const-string v0, "Destroying surface %s called by %s"

    invoke-static {v3, v4, v1, v0, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    const/4 v0, 0x0

    .line 181
    :try_start_26
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2d

    .line 182
    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2d} :catch_35
    .catchall {:try_start_26 .. :try_end_2d} :catchall_33

    .line 187
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 188
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_4d

    :catchall_33
    move-exception p1

    goto :goto_4e

    :catch_35
    move-exception p1

    :try_start_36
    const-string v2, "WindowManager"

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error destroying surface in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_33

    goto :goto_2d

    :goto_4d
    return-void

    .line 187
    :goto_4e
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 188
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 189
    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 4

    if-eqz p3, :cond_f

    .line 420
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mSurface="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 422
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Surface: shown="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " layer="

    .line 423
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " alpha="

    .line 424
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    const-string p2, " rect=("

    .line 425
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    const-string p2, ","

    .line 426
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    const-string p2, ") "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " transform=("

    .line 427
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(F)V

    .line 429
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(F)V

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 412
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 413
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 414
    iget p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 415
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getShown()Z
    .registers 1

    .line 356
    iget-boolean p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    return p0
.end method

.method public getSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 352
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v0, "WindowSurfaceController.getSurfaceControl"

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    return-void
.end method

.method public getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 2

    .line 341
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 344
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl;->getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result p0

    return p0
.end method

.method public hasSurface()Z
    .registers 1

    .line 348
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .registers 9

    .line 147
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_20

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x4b0b2788

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 p2, 0x1

    aput-object v0, v4, p2

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_20
    iget-boolean p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz p2, :cond_27

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    :cond_27
    return-void
.end method

.method public final hideSurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 160
    :try_start_9
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 161
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v1, :cond_47

    const v1, 0x80e9

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 162
    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 163
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    .line 162
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_30} :catch_31

    goto :goto_47

    .line 166
    :catch_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception hiding surface in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-void
.end method

.method public prepareToShowInTransaction(Landroid/view/SurfaceControl$Transaction;F)Z
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 229
    :cond_6
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    .line 230
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x1

    return p0
.end method

.method public setColorSpaceAgnostic(Z)V
    .registers 12

    const-string v0, "<<< CLOSE TRANSACTION setColorSpaceAgnosticLocked"

    const-string/jumbo v1, "setColorSpaceAgnostic"

    .line 272
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x22dfdbf6

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_2b

    return-void

    .line 277
    :cond_2b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_36

    const-string v2, ">>> OPEN TRANSACTION setColorSpaceAgnosticLocked"

    .line 278
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 282
    :try_start_3b
    invoke-static {}, Landroid/view/SurfaceControl;->getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4, p1}, Landroid/view/SurfaceControl$Transaction;->setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_51

    .line 284
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 285
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_50

    .line 286
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void

    :catchall_51
    move-exception p1

    .line 284
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 285
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_5e

    .line 286
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_5e
    throw p1
.end method

.method public setInternalPresentationOnly(Z)V
    .registers 12

    const-string v0, "<<< CLOSE TRANSACTION setInternalPresentationOnlyLocked"

    const-string/jumbo v1, "setInternalPresentationOnly"

    .line 293
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0xedfa558

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_2b

    return-void

    .line 299
    :cond_2b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_36

    const-string v2, ">>> OPEN TRANSACTION setInternalPresentationOnlyLocked"

    .line 300
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 304
    :try_start_3b
    invoke-static {}, Landroid/view/SurfaceControl;->getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4, p1}, Landroid/view/SurfaceControl$Transaction;->setInternalPresentationOnly(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_51

    .line 307
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 308
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_50

    .line 309
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void

    :catchall_51
    move-exception p1

    .line 307
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 308
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_5e

    .line 309
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_5e
    throw p1
.end method

.method public setMatrix(Landroid/view/SurfaceControl$Transaction;FFFF)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 208
    iget v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_25

    iget v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_25

    iget v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_25

    iget v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_23

    goto :goto_25

    :cond_23
    const/4 v1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v1, 0x1

    :goto_26
    if-nez v1, :cond_29

    return-void

    .line 214
    :cond_29
    iput v2, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 215
    iput v3, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 216
    iput v4, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 217
    iput v5, v0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 219
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v1, :cond_6c

    float-to-double v8, v2

    float-to-double v10, v3

    float-to-double v12, v4

    float-to-double v14, v5

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const/4 v8, 0x2

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x3

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x4

    aput-object v1, v6, v8

    const v1, 0x126b9102

    const/16 v8, 0xaa

    const/4 v9, 0x0

    invoke-static {v7, v1, v8, v9, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 221
    :cond_6c
    iget-object v1, v0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setOpaque(Z)V
    .registers 12

    const-string v0, "<<< CLOSE TRANSACTION setOpaqueLocked"

    const-string/jumbo v1, "setOpaqueLocked"

    .line 235
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x214ef67a

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_2b

    return-void

    .line 240
    :cond_2b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_36

    const-string v2, ">>> OPEN TRANSACTION setOpaqueLocked"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 243
    :try_start_3b
    invoke-static {}, Landroid/view/SurfaceControl;->getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_51

    .line 245
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 246
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_50

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return-void

    :catchall_51
    move-exception p1

    .line 245
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 246
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_5e

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_5e
    throw p1
.end method

.method public setPosition(Landroid/view/SurfaceControl$Transaction;FF)V
    .registers 16

    .line 193
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    cmpl-float v0, v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    :goto_12
    if-nez v0, :cond_15

    return-void

    .line 198
    :cond_15
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    .line 199
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    .line 201
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_42

    float-to-double v3, p2

    float-to-double v5, p3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x25c4caf9

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v11, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v2

    const/4 v1, 0x2

    aput-object v0, v11, v1

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_42
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setSecure(Z)V
    .registers 12

    const-string v0, "<<< CLOSE TRANSACTION setSecureLocked"

    const-string/jumbo v1, "setSecure"

    .line 251
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x461fcb9c

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_2b

    return-void

    .line 256
    :cond_2b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_36

    const-string v2, ">>> OPEN TRANSACTION setSecureLocked"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 259
    :try_start_3b
    invoke-static {}, Landroid/view/SurfaceControl;->getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 261
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_53

    .line 263
    invoke-static {}, Landroid/view/SurfaceControl;->getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->refreshImeSecureFlag(Landroid/view/SurfaceControl$Transaction;)Z
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_60

    .line 266
    :cond_53
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 267
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_5f

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    return-void

    :catchall_60
    move-exception p1

    .line 266
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 267
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_6d

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_6d
    throw p1
.end method

.method public setShown(Z)V
    .registers 5

    .line 361
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 363
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 365
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 367
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->onSurfaceShownChanged(Z)V

    .line 369
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    if-eqz p1, :cond_1f

    .line 372
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/android/server/wm/Session;->onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZIZ)V

    :cond_1f
    return-void
.end method

.method public showRobustly(Landroid/view/SurfaceControl$Transaction;)Z
    .registers 9

    .line 316
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x40f62b88

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v1

    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :cond_19
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " during relayout"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WindowManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_38
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_3d

    return v2

    .line 324
    :cond_3d
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 326
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz p1, :cond_66

    const p1, 0x80e9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 327
    iget-object p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 328
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    .line 327
    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_66
    return v2
.end method

.method public startSurfaceAnimation(Ljava/lang/String;)V
    .registers 7

    const-string v0, "<<< CLOSE TRANSACTION startSurfaceAnimationLocked"

    const-string/jumbo v1, "startSurfaceAnimation"

    .line 385
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_a

    return-void

    .line 388
    :cond_a
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_15

    const-string v2, ">>> OPEN TRANSACTION startSurfaceAnimationLocked"

    .line 389
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 393
    :try_start_1a
    invoke-static {}, Landroid/view/SurfaceControl;->getGlobalTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v4, p1}, Landroid/view/SurfaceControl$Transaction;->startSurfaceAnimation(Landroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl$Transaction;
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_30

    .line 395
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 396
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_2f

    .line 397
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    return-void

    :catchall_30
    move-exception p1

    .line 395
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 396
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_3d

    .line 397
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_3d
    throw p1
.end method

.method public startSurfaceAnimationInTransaction(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)Z
    .registers 3

    .line 403
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 406
    :cond_6
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->startSurfaceAnimation(Landroid/view/SurfaceControl;Ljava/lang/String;)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 434
    iget-object p0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
