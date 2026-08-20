.class public final Lcom/android/server/wm/ContentRecordingController;
.super Ljava/lang/Object;
.source "ContentRecordingController.java"


# instance fields
.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mSession:Landroid/view/ContentRecordingSession;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 41
    iput-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public getContentRecordingSessionLocked()Landroid/view/ContentRecordingSession;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    return-object p0
.end method

.method public setContentRecordingSessionLocked(Landroid/view/ContentRecordingSession;Lcom/android/server/wm/WindowManagerService;)V
    .registers 12

    if-eqz p1, :cond_11

    .line 66
    invoke-static {p1}, Landroid/view/ContentRecordingSession;->isValid(Landroid/view/ContentRecordingSession;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    .line 67
    invoke-static {v0, p1}, Landroid/view/ContentRecordingSession;->isSameDisplay(Landroid/view/ContentRecordingSession;Landroid/view/ContentRecordingSession;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_54

    .line 74
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v3, :cond_46

    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    if-nez v5, :cond_25

    move-object v5, v2

    goto :goto_2d

    :cond_25
    invoke-virtual {v5}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2d
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x5385f1a9

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v8, v1

    aput-object v5, v8, v0

    const-string v3, "Handle incoming session on display %d, with a pre-existing session %s"

    invoke-static {v6, v7, v0, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_46
    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 79
    invoke-virtual {p1}, Landroid/view/ContentRecordingSession;->getDisplayId()I

    move-result v3

    .line 78
    invoke-virtual {p2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 80
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    goto :goto_55

    :cond_54
    move-object p2, v2

    .line 82
    :goto_55
    iget-object v3, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    if-eqz v3, :cond_7f

    .line 84
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONTENT_RECORDING_enabled:Z

    if-eqz v3, :cond_75

    iget-object v3, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0xe2a7822

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const-string v3, "Pause the recording session on display %s"

    invoke-static {v4, v5, v1, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :cond_75
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->pauseRecording()V

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->setContentRecordingSession(Landroid/view/ContentRecordingSession;)V

    .line 91
    :cond_7f
    iput-object p2, p0, Lcom/android/server/wm/ContentRecordingController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/ContentRecordingController;->mSession:Landroid/view/ContentRecordingSession;

    return-void
.end method
