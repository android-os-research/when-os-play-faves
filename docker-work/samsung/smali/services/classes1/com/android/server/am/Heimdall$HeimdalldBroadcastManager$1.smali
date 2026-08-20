.class public Lcom/android/server/am/Heimdall$HeimdalldBroadcastManager$1;
.super Landroid/content/BroadcastReceiver;
.source "Heimdall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Heimdall$HeimdalldBroadcastManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 105
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    const-string p1, "android.intent.action.REBOOT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_2e

    :cond_15
    const-string p1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 109
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 110
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldBigdataManager;->-$$Nest$smonHqmUpdateRequest()V

    goto :goto_3f

    :cond_21
    const-string/jumbo p1, "sec.app.policy.UPDATE.heimdall"

    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    .line 112
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldScpmManager;->onScpmUpdateBroadcast()V

    goto :goto_3f

    .line 108
    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldPkgManager;->-$$Nest$smexportPkgInfoList()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    goto :goto_3f

    :catch_32
    move-exception p0

    .line 115
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to onReceive..."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    :goto_3f
    return-void
.end method
