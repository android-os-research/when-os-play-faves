.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;
.super Ljava/lang/Object;
.source "SleepModePolicyController.java"

# interfaces
.implements Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V
    .registers 4

    .line 995
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->val$this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAction()V
    .registers 5

    const-string v0, "SleepModePolicyController"

    const-string v1, "BlueTooth cancelAction"

    .line 1011
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_bt_key"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1013
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ble_scan_always_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1015
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmLogger(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    move-result-object v0

    const-string v2, "Enable BT scan"

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 1017
    :cond_2b
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->val$context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public triggerAction()V
    .registers 5

    const-string v0, "SleepModePolicyController"

    const-string v1, "BlueTooth triggerAction"

    .line 998
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ble_scan_always_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_42

    .line 1001
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1003
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_bt_key"

    invoke-static {v0, v1, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1004
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 1005
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$4;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmLogger(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    move-result-object p0

    const-string v0, "Disable BT scan"

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    :cond_42
    return-void
.end method
