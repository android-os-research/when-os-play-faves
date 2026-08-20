.class public final Lcom/android/server/wm/ImeInsetsSourceProvider;
.super Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
.source "ImeInsetsSourceProvider.java"


# instance fields
.field public mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

.field public mImeShowing:Z

.field public mIsImeLayoutDrawn:Z

.field public final mLastSource:Landroid/view/InsetsSource;

.field public mShowImeRunner:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$rvjySZUXAI10R3XB6kYvMsUjUZQ(Lcom/android/server/wm/ImeInsetsSourceProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->lambda$scheduleShowImePostLayout$0()V

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 63
    new-instance p1, Landroid/view/InsetsSource;

    const/16 p2, 0x13

    invoke-direct {p1, p2}, Landroid/view/InsetsSource;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    return-void
.end method

.method public static isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 3

    .line 273
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 274
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne v0, p0, :cond_20

    .line 275
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-le p1, p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method public static isImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 3

    .line 268
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v0

    if-nez v0, :cond_e

    if-ne p0, p1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$scheduleShowImePostLayout$0()V
    .registers 10

    .line 170
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x72efe808

    invoke-static {v0, v3, v2, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isReadyToShowIme()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    .line 175
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v3, :cond_42

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    :cond_31
    move-object v3, v4

    :goto_32
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x22eb33ec

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v2

    invoke-static {v6, v7, v2, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_42
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setImeShowing(Z)V

    .line 178
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-interface {v0, v3, v5}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    const-wide/16 v6, 0x20

    const-string v3, "WMS.showImePostLayout"

    .line 179
    invoke-static {v6, v7, v3, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 180
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v0, v3, :cond_7d

    if-eqz v3, :cond_7d

    .line 181
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v0, :cond_7d

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_6d
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x5ca81f2e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    return-void
.end method


# virtual methods
.method public abortShowImePostLayout()V
    .registers 5

    .line 231
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x51d654b9

    invoke-static {v0, v3, v1, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :cond_e
    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 233
    iput-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    .line 234
    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    return-void
.end method

.method public checkShowImePostLayout()V
    .registers 6

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_5

    return-void

    .line 196
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 201
    iget-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    if-nez v1, :cond_1f

    .line 202
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isReadyToShowIme()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 203
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez v0, :cond_52

    :cond_1f
    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    const/4 v1, 0x0

    .line 210
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 212
    invoke-interface {v2}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 213
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    if-eqz v2, :cond_48

    .line 214
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v2

    if-eqz v2, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    .line 221
    :goto_49
    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    if-eqz p0, :cond_52

    if-nez v0, :cond_52

    .line 222
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_52
    return-void

    .line 198
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "IME insets must be provided by a window."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 308
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 310
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mImeShowing="

    .line 311
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_36

    .line 314
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "showImePostLayout pending for mImeRequester="

    .line 315
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 317
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 319
    :cond_36
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    .line 324
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 325
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/InsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_20

    const-wide v1, 0x10b00000002L

    .line 329
    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    :cond_20
    const-wide v0, 0x10800000003L

    .line 331
    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 332
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;
    .registers 5

    .line 72
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object p0

    if-eqz p0, :cond_3d

    if-eqz p1, :cond_3d

    .line 73
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 74
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 80
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 83
    :goto_27
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_3a

    .line 84
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result p1

    if-eqz p1, :cond_3a

    if-eqz v0, :cond_3a

    .line 85
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 v1, 0x1

    .line 83
    :cond_3a
    invoke-virtual {p0, v1}, Landroid/view/InsetsSourceControl;->setSkipAnimationOnce(Z)V

    :cond_3d
    return-object p0
.end method

.method public final isImeFallbackTarget(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 2

    .line 279
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p0

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isImeInputTarget(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 2

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p0

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isImeShowing()Z
    .registers 1

    .line 348
    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    return p0
.end method

.method public isReadyToShowIme()Z
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 249
    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v2, :cond_e

    goto :goto_6f

    .line 252
    :cond_e
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_48

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_2a

    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_34

    :cond_2a
    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_34
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x330e8a89

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object v4, v8, v3

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_48
    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v2, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    if-nez v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 257
    invoke-static {v2, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeFallbackTarget(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeInputTarget(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 260
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->sameAsImeControlTarget()Z

    move-result p0

    if-eqz p0, :cond_6f

    :cond_6e
    move v1, v3

    :cond_6f
    :goto_6f
    return v1
.end method

.method public final isTargetChangedWithinActivity(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 295
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2b

    .line 298
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v1, p1, :cond_2b

    if-eqz v1, :cond_2b

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    if-eqz v2, :cond_2b

    .line 300
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 301
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 302
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne p0, p1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    :goto_2b
    return v0
.end method

.method public final onSourceChanged()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 134
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->set(Landroid/view/InsetsSource;)V

    .line 135
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x29

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 3

    .line 122
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 123
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 124
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 125
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->reportImeDrawnOnTask(Lcom/android/server/wm/Task;)V

    :cond_31
    return-void
.end method

.method public final sameAsImeControlTarget()Z
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v0, v1, :cond_1f

    .line 289
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 290
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result p0

    if-nez p0, :cond_1f

    :cond_1d
    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public scheduleShowImePostLayout(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 7

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isTargetChangedWithinActivity(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    .line 147
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 150
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz p1, :cond_16

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, 0x85d1a3e

    invoke-static {p1, v0, v2, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkShowImePostLayout()V

    return-void

    .line 159
    :cond_1a
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 160
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 161
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayout()Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    return-void

    .line 167
    :cond_3c
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz p1, :cond_66

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_4b

    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_55

    :cond_4b
    iget-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_55
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x540edc89

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_66
    new-instance p1, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ImeInsetsSourceProvider;)V

    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method public setImeShowing(Z)V
    .registers 2

    .line 340
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    return-void
.end method

.method public updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 4

    .line 114
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 115
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V

    :cond_15
    return v0
.end method

.method public updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V
    .registers 4

    if-eqz p1, :cond_10

    .line 104
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 107
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    .line 109
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    return-void
.end method

.method public updateSourceFrame(Landroid/graphics/Rect;)V
    .registers 2

    .line 92
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    return-void
.end method

.method public updateVisibility()V
    .registers 1

    .line 98
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 99
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    return-void
.end method
