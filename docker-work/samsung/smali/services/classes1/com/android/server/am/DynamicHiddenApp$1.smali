.class public Lcom/android/server/am/DynamicHiddenApp$1;
.super Landroid/content/BroadcastReceiver;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/DynamicHiddenApp;->addDHAIntentFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/DynamicHiddenApp;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DynamicHiddenApp;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p2, :cond_b9

    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    goto/16 :goto_b9

    .line 206
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.server.am.BROADCAST_DHA_DEBUG_ON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_34

    const-string/jumbo p0, "ro.debug_level"

    const-string p1, "Unknown"

    .line 207
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 209
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_33

    const-string p1, "0x4f4c"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_33

    :cond_2e
    const/4 p0, 0x1

    .line 212
    sput-boolean p0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    goto/16 :goto_b9

    :cond_33
    :goto_33
    return-void

    .line 213
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.server.am.BROADCAST_SET_DHA_PARAMETER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    const-string v0, "ActivityManager"

    if-nez p1, :cond_61

    const-string/jumbo p1, "ro.product_ship"

    const-string p2, "false"

    .line 214
    invoke-static {p1, p2}, Lcom/android/server/bgslotmanager/BgAppPropManager;->getSystemPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    .line 216
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p0}, Lcom/android/server/am/DynamicHiddenApp;->updateParamsFile()V

    goto :goto_b9

    :cond_5a
    const-string/jumbo p0, "updateParamsFile is blocked by ship build"

    .line 218
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 220
    :cond_61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.server.am.BROADCAST_SET_LMKD_PARAMETER_INTENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    const-string p1, "BROADCAST_SET_LMKD_INTENT RECEIVED"

    .line 221
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_86

    const-string p2, "LMKD_INTENT"

    const-string/jumbo v0, "send to updateParamsIntent"

    .line 224
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p0, p1}, Lcom/android/server/am/DynamicHiddenApp;->updateParamsIntent(Landroid/os/Bundle;)V

    goto :goto_b9

    :cond_86
    const-string p0, "getExtras is null"

    .line 227
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 229
    :cond_8c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.samsung.android.homehub.action.DEFAULT_HOME_CHANGE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a4

    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b9

    .line 231
    :cond_a4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_b4

    .line 233
    iget-object p0, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/DynamicHiddenApp;->isHomeHubMode(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_b9

    :cond_b4
    const-string p0, "get ExtraHomeHub is null"

    .line 235
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b9
    :goto_b9
    return-void
.end method
