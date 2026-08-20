.class public final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final MSG_DEVICE_IDLE:I = 0x0

.field public static final MSG_UID_GONE:I = 0x1

.field public static final MSG_UID_STATE_CHANGED:I = 0x2


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Landroid/os/Looper;)V
    .registers 3

    .line 6053
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 6054
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 6059
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_22

    .line 6067
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->-$$Nest$mhandleUidStateChanged(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;II)V

    goto :goto_22

    .line 6064
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->-$$Nest$mhandleUidGone(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;I)V

    goto :goto_22

    .line 6061
    :cond_1d
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-static {p0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->-$$Nest$mhandleDeviceIdle(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    :goto_22
    return-void
.end method
