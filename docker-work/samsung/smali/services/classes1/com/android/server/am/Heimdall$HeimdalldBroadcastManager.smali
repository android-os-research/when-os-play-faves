.class public final Lcom/android/server/am/Heimdall$HeimdalldBroadcastManager;
.super Ljava/lang/Object;
.source "Heimdall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Heimdall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeimdalldBroadcastManager"
.end annotation


# static fields
.field public static final ACTION_BIGDATA:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field public static final ACTION_SCPM:Ljava/lang/String; = "sec.app.policy.UPDATE.heimdall"


# direct methods
.method public static bridge synthetic -$$Nest$sminit()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/Heimdall$HeimdalldBroadcastManager;->init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 3

    .line 102
    new-instance v0, Lcom/android/server/am/Heimdall$HeimdalldBroadcastManager$1;

    invoke-direct {v0}, Lcom/android/server/am/Heimdall$HeimdalldBroadcastManager$1;-><init>()V

    .line 120
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.REBOOT"

    .line 122
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "sec.app.policy.UPDATE.heimdall"

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
