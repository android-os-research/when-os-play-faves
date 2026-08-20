.class public final Lcom/android/server/am/AppExitInfoTracker$KillHandler;
.super Landroid/os/Handler;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppExitInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KillHandler"
.end annotation


# static fields
.field public static final MSG_APP_KILL:I = 0x1008

.field public static final MSG_CHILD_PROC_DIED:I = 0x1006

.field public static final MSG_LMKD_PROC_KILLED:I = 0x1005

.field public static final MSG_PROC_DIED:I = 0x1007

.field public static final MSG_STATSD_LOG:I = 0x1009


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V
    .registers 4

    .line 1679
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1680
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 1685
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_70

    .line 1717
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_6e

    .line 1711
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1712
    :try_start_10
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ApplicationExitInfo;

    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$mperformLogToStatsdLocked(Lcom/android/server/am/AppExitInfoTracker;Landroid/app/ApplicationExitInfo;)V

    .line 1713
    monitor-exit v0

    goto :goto_6e

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw p0

    .line 1703
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 1704
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1705
    :try_start_29
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker;->handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V

    .line 1706
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_35

    .line 1707
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->recycleRawRecord(Landroid/app/ApplicationExitInfo;)V

    goto :goto_6e

    :catchall_35
    move-exception p0

    .line 1706
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0

    .line 1695
    :pswitch_38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ApplicationExitInfo;

    .line 1696
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1697
    :try_start_43
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker;->handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V

    .line 1698
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_4f

    .line 1699
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->recycleRawRecord(Landroid/app/ApplicationExitInfo;)V

    goto :goto_6e

    :catchall_4f
    move-exception p0

    .line 1698
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0

    .line 1691
    :pswitch_52
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->onProcDied(IILjava/lang/Integer;)V

    goto :goto_6e

    .line 1687
    :pswitch_62
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->onProcDied(IILjava/lang/Integer;)V

    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x1005
        :pswitch_62
        :pswitch_52
        :pswitch_38
        :pswitch_1e
        :pswitch_9
    .end packed-switch
.end method
