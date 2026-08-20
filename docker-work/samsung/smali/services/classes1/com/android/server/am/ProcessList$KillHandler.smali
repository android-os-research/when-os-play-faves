.class public final Lcom/android/server/am/ProcessList$KillHandler;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KillHandler"
.end annotation


# static fields
.field public static final CLEANUP_DELAY_TIME:I = 0x2710

.field public static final KILL_PROCESS_GROUP_CLEANUP_MSG:I = 0xfa2

.field public static final KILL_PROCESS_GROUP_MSG:I = 0xfa0

.field public static final LMKD_RECONNECT_MSG:I = 0xfa1


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V
    .registers 4

    .line 845
    iput-object p1, p0, Lcom/android/server/am/ProcessList$KillHandler;->this$0:Lcom/android/server/am/ProcessList;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 846
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 851
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x40

    packed-switch v0, :pswitch_data_7c

    .line 882
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_7b

    :pswitch_b
    const-string p0, "cleanUpCgroup"

    .line 876
    invoke-static {v1, v2, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 877
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Landroid/os/Process;->cleanUpCgroup(II)I

    .line 878
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_7b

    .line 866
    :pswitch_1b
    invoke-static {}, Lcom/android/server/am/ProcessList;->-$$Nest$sfgetsLmkdConnection()Lcom/android/server/am/LmkdConnection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/LmkdConnection;->connect()Z

    move-result p0

    if-nez p0, :cond_7b

    const-string p0, "ActivityManager"

    const-string p1, "Failed to connect to lmkd, retry after 1000 ms"

    .line 867
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    sget-object p0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 p1, 0xfa1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7b

    :pswitch_3a
    const-string/jumbo p0, "killProcessGroup"

    .line 853
    invoke-static {v1, v2, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 854
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "B|killProcessGroup "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 855
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v3}, Landroid/os/Process;->killProcessGroup(II)I

    move-result p0

    const/4 v3, -0x1

    if-ne p0, v3, :cond_73

    .line 858
    sget-object p0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v3, 0xfa2

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v3, 0x2710

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_73
    const-string p0, "E|killProcessGroup"

    .line 862
    invoke-static {p0, v0}, Lcom/samsung/android/kernelmemory/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 863
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_7b
    :goto_7b
    return-void

    :pswitch_data_7c
    .packed-switch 0xfa0
        :pswitch_3a
        :pswitch_1b
        :pswitch_b
    .end packed-switch
.end method
