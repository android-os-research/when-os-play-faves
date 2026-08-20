.class public Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;
.super Ljava/lang/Object;
.source "ExecSysEventDeliver.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field public static final EVENT_BOOT_COMPLETED:I = 0x3e8

.field public static final EVENT_CLEANUP_USER:I = 0x3ed

.field public static final EVENT_START_USER:I = 0x3e9

.field public static final EVENT_STOP_USER:I = 0x3ec

.field public static final EVENT_SWITCH_USER:I = 0x3eb

.field public static final EVENT_UNLOCK_USER:I = 0x3ea


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createBundle(II)Landroid/os/Bundle;
    .registers 4

    .line 26
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v0

    const-string/jumbo v1, "paramInt0"

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    const-string/jumbo v0, "paramInt1"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 4

    .line 31
    iget-object p2, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isCmdAppAccessible(Landroid/content/Context;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_24

    .line 32
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecSysEventDeliver;->mContext:Landroid/content/Context;

    invoke-static {p0, p3}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 34
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->sysEvent(Landroid/os/Bundle;)Z
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_1f

    :catchall_15
    move-exception p1

    .line 32
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    goto :goto_1e

    :catchall_1a
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw p1

    :cond_1f
    :goto_1f
    if-eqz p0, :cond_24

    .line 36
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    :cond_24
    return-object p3
.end method

.method public executeOnSameThread(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
