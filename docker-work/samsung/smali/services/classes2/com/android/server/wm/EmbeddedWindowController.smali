.class public Lcom/android/server/wm/EmbeddedWindowController;
.super Ljava/lang/Object;
.source "EmbeddedWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mGlobalLock:Ljava/lang/Object;

.field public mWindows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowsByFocusToken:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field

.field public mWindowsByWindowToken:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$rZz1VqQZAvxSwtQ8OUtHc1fzvW4(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/EmbeddedWindowController;->lambda$add$0(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    .line 60
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 61
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$add$0(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method


# virtual methods
.method public add(Landroid/os/IBinder;Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .registers 6

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0, p2}, Lcom/android/server/wm/EmbeddedWindowController;->updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V

    .line 78
    iget-object p2, p2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    new-instance v1, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;Landroid/os/IBinder;)V

    const/4 v0, 0x0

    invoke-interface {p2, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_2f

    .line 86
    :catch_2a
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    return-void
.end method

.method public get(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object p0
.end method

.method public getByFocusToken(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .registers 2

    .line 152
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object p0
.end method

.method public getByWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    return-object p0
.end method

.method public getHostWindow(Landroid/os/IBinder;)Lcom/android/server/wm/WindowState;
    .registers 2

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    if-eqz p0, :cond_d

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public isOverlay(Landroid/os/IBinder;)Z
    .registers 2

    .line 113
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    if-eqz p0, :cond_f

    .line 114
    invoke-virtual {p0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getIsOverlay()Z

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public onActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_28

    .line 161
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 162
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, p1, :cond_25

    .line 163
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v1, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 164
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 166
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessController;->removeHostActivity(Lcom/android/server/wm/ActivityRecord;)V

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_28
    return-void
.end method

.method public onWindowRemoved(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_36

    .line 138
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 139
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-ne v2, p1, :cond_33

    .line 140
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {v2}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 141
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_36
    return-void
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 6

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_3f

    .line 126
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    .line 127
    iget-object v2, v1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_3c

    .line 128
    iget-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    invoke-virtual {p1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->onRemoved()V

    .line 129
    iget-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getFocusGrantToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_3f
    return-void
.end method

.method public setIsOverlay(Landroid/os/IBinder;)V
    .registers 2

    .line 118
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByFocusToken:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    if-eqz p0, :cond_d

    .line 120
    invoke-virtual {p0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->setIsOverlay()V

    :cond_d
    return-void
.end method

.method public final updateProcessController(Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;)V
    .registers 4

    .line 95
    iget-object v0, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    .line 98
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    iget v1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    if-nez p0, :cond_19

    const-string p0, "WindowManager"

    const-string p1, "Could not find the embedding process."

    .line 101
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 103
    :cond_19
    iget-object p1, p1, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->addHostActivity(Lcom/android/server/wm/ActivityRecord;)V

    :goto_1e
    return-void
.end method
