.class public final Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTrackerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppOpsWatcher"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTrackerImpl;)V
    .registers 2

    .line 776
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTrackerImpl;)V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 781
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iget-object v0, v0, Lcom/android/server/AppStateTrackerImpl;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x46

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_e

    if-eqz v0, :cond_e

    const/4 p1, 0x1

    .line 786
    :catch_e
    :cond_e
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {v0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmLock(Lcom/android/server/AppStateTrackerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 787
    :try_start_15
    iget-object v1, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v1, p2, p3, p1}, Lcom/android/server/AppStateTrackerImpl;->updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 788
    iget-object p0, p0, Lcom/android/server/AppStateTrackerImpl$AppOpsWatcher;->this$0:Lcom/android/server/AppStateTrackerImpl;

    invoke-static {p0}, Lcom/android/server/AppStateTrackerImpl;->-$$Nest$fgetmHandler(Lcom/android/server/AppStateTrackerImpl;)Lcom/android/server/AppStateTrackerImpl$MyHandler;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/AppStateTrackerImpl$MyHandler;->notifyRunAnyAppOpsChanged(ILjava/lang/String;)V

    .line 790
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_28

    throw p0
.end method
