.class public final Lcom/android/server/am/Heimdall;
.super Ljava/lang/Object;
.source "Heimdall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Heimdall$DaemonConnector;,
        Lcom/android/server/am/Heimdall$HeimdalldProxy;,
        Lcom/android/server/am/Heimdall$HeimdalldPkgManager;,
        Lcom/android/server/am/Heimdall$HeimdalldScpmManager;,
        Lcom/android/server/am/Heimdall$HeimdalldBigdataManager;,
        Lcom/android/server/am/Heimdall$HeimdalldBroadcastManager;,
        Lcom/android/server/am/Heimdall$HeimdalldManager;
    }
.end annotation


# static fields
.field public static final DISABLED:Z

.field public static final HEIMDALL_DISABLE_PROP:Ljava/lang/String; = "persist.sys.heimdalld.disable"

.field public static final HEIMDALL_KILL_DISABLE_PROP:Ljava/lang/String; = "persist.sys.heimdalld.kill_disable"

.field public static final TAG:Ljava/lang/String; = "Heimdall"

.field public static mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/Heimdall;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/am/Heimdall;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.heimdalld.disable"

    const-string v1, "false"

    .line 60
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Heimdall;->DISABLED:Z

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/android/server/am/Heimdall;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 526
    sget-boolean v0, Lcom/android/server/am/Heimdall;->DISABLED:Z

    if-nez v0, :cond_7b

    if-nez p0, :cond_7

    goto :goto_7b

    .line 529
    :cond_7
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_65

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string/jumbo v2, "heimdall"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    :try_start_17
    const-string/jumbo v0, "kill_disable"

    .line 531
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_59

    const-string/jumbo v2, "persist.sys.heimdalld.kill_disable"

    if-eqz v0, :cond_2e

    :try_start_25
    const-string p0, "1"

    .line 532
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-static {v1}, Lcom/android/server/am/Heimdall$HeimdalldProxy;->executeCmd(I)V

    goto :goto_58

    :cond_2e
    const-string/jumbo v0, "kill_enable"

    .line 534
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string p0, "0"

    .line 535
    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 536
    invoke-static {p0}, Lcom/android/server/am/Heimdall$HeimdalldProxy;->executeCmd(I)V

    goto :goto_58

    :cond_43
    const-string/jumbo v0, "kill_status"

    .line 537
    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    const/4 p0, 0x3

    .line 538
    invoke-static {p0}, Lcom/android/server/am/Heimdall$HeimdalldProxy;->executeCmd(I)V

    goto :goto_58

    :cond_53
    const-string p1, "Please input the correct heimdall option."

    .line 540
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_58} :catch_59

    :goto_58
    return-void

    :catch_59
    move-exception p0

    .line 543
    sget-object p1, Lcom/android/server/am/Heimdall;->TAG:Ljava/lang/String;

    const-string v0, "Failed to dump heimdall info..."

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_65
    const-string p1, "== Heimdall dump start =="

    .line 548
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "- Heimdall Bigdata: "

    .line 549
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->-$$Nest$smgetPkgInfoListString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "== Heimdall dump end =="

    .line 551
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 67
    :try_start_0
    sget-boolean v0, Lcom/android/server/am/Heimdall;->DISABLED:Z

    if-eqz v0, :cond_c

    .line 68
    sget-object p0, Lcom/android/server/am/Heimdall;->TAG:Ljava/lang/String;

    const-string v0, "Heimdall is not enabled"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_c
    sput-object p0, Lcom/android/server/am/Heimdall;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldManager;->-$$Nest$sminit()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1d

    :catch_12
    move-exception p0

    .line 74
    sget-object v0, Lcom/android/server/am/Heimdall;->TAG:Ljava/lang/String;

    const-string v1, "Failed to initialize..."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    return-void
.end method
