.class public final Landroid/os/epic/EpicChromeTask;
.super Ljava/util/TimerTask;
.source "EpicChromeTask.java"


# instance fields
.field public mAcquired:Z

.field public mCancel:Z

.field public mCheckPkgName:Ljava/lang/String;

.field public mDetector:Landroid/os/epic/EpicChromeDetector;

.field public mHandle:Lcom/samsung/epic/Request;

.field public mRequest:Lcom/samsung/epic/Request;


# direct methods
.method public constructor <init>(Landroid/os/epic/EpicChromeDetector;Landroid/os/epic/EpicChromeTask;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    .line 32
    iput-object v0, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    .line 34
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    .line 38
    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mDetector:Landroid/os/epic/EpicChromeDetector;

    .line 39
    new-instance p1, Lcom/samsung/epic/Request;

    const v0, 0x187cc

    invoke-direct {p1, v0}, Lcom/samsung/epic/Request;-><init>(I)V

    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    if-eqz p2, :cond_1f

    .line 42
    iget-boolean p1, p2, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    iput-boolean p1, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    :cond_1f
    return-void
.end method


# virtual methods
.method public getCheckPkgName()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    return-void
.end method

.method public run()V
    .registers 3

    .line 69
    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mDetector:Landroid/os/epic/EpicChromeDetector;

    if-eqz v0, :cond_33

    iget-boolean v1, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    if-eqz v1, :cond_a

    goto :goto_33

    .line 74
    :cond_a
    iget-object v1, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/epic/EpicChromeDetector;->CheckChromeBrowser(Ljava/lang/String;)Z

    move-result v0

    .line 76
    iget-boolean v1, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    if-eqz v1, :cond_16

    .line 77
    monitor-exit p0

    return-void

    :cond_16
    if-eqz v0, :cond_25

    .line 80
    iget-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    if-nez v0, :cond_21

    .line 81
    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    invoke-virtual {v0}, Lcom/samsung/epic/Request;->acquire_lock()Z

    :cond_21
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    goto :goto_31

    .line 86
    :cond_25
    iget-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    if-eqz v0, :cond_2e

    .line 87
    iget-object v0, p0, Landroid/os/epic/EpicChromeTask;->mHandle:Lcom/samsung/epic/Request;

    invoke-virtual {v0}, Lcom/samsung/epic/Request;->release_lock()Z

    :cond_2e
    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mAcquired:Z

    .line 91
    :goto_31
    monitor-exit p0

    return-void

    .line 72
    :cond_33
    :goto_33
    monitor-exit p0

    return-void

    :catchall_35
    move-exception v0

    .line 91
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public setCancel()V
    .registers 2

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Landroid/os/epic/EpicChromeTask;->mCancel:Z

    return-void
.end method

.method public setCheckPkgName(Ljava/lang/String;)V
    .registers 2

    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    iput-object p1, p0, Landroid/os/epic/EpicChromeTask;->mCheckPkgName:Ljava/lang/String;

    .line 49
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method
