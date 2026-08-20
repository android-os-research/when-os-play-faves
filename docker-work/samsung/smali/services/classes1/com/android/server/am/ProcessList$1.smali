.class public Lcom/android/server/am/ProcessList$1;
.super Ljava/lang/Object;
.source "ProcessList.java"

# interfaces
.implements Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessList;->init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;)V
    .registers 2

    .line 922
    iput-object p1, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ge p2, v1, :cond_5

    return v0

    .line 954
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2a

    const/16 p0, 0x8

    if-eq v1, p0, :cond_21

    const/16 v2, 0x9

    if-eq v1, v2, :cond_16

    return v0

    :cond_16
    if-eq p2, p0, :cond_19

    return v0

    .line 979
    :cond_19
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    .line 980
    invoke-static {p0}, Lcom/android/server/am/LmkdStatsReporter;->logStateChanged(I)V

    return v3

    :cond_21
    const/16 p0, 0x50

    if-ge p2, p0, :cond_26

    return v0

    .line 972
    :cond_26
    invoke-static {p1}, Lcom/android/server/am/LmkdStatsReporter;->logKillOccurred(Ljava/io/DataInputStream;)V

    return v3

    :cond_2a
    const/16 v1, 0xc

    if-eq p2, v1, :cond_2f

    return v0

    .line 959
    :cond_2f
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 960
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 963
    iget-object v1, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v1, p2}, Lcom/android/server/am/KillPolicyManager;->calculateLmkdStatus(I)V

    .line 965
    iget-object p0, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteLmkdProcKilled(II)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_47} :catch_48

    return v3

    :catch_48
    const-string p0, "ActivityManager"

    const-string p1, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    .line 986
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isReplyExpected(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z
    .registers 5

    .line 942
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x0

    if-ne p3, p0, :cond_13

    .line 943
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    if-ne p0, p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public onConnect(Ljava/io/OutputStream;)Z
    .registers 4

    const-string v0, "ActivityManager"

    const-string v1, "Connection with lmkd established"

    .line 925
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object p0, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->onLmkdConnect(Ljava/io/OutputStream;)Z

    move-result p0

    return p0
.end method

.method public onDisconnect()V
    .registers 4

    const-string p0, "ActivityManager"

    const-string v0, "Lost connection to lmkd"

    .line 931
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    sget-object p0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v0, 0xfa1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
