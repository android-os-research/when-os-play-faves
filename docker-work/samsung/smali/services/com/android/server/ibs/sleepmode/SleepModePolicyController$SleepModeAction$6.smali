.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;
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

    .line 1049
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;->val$this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAction()V
    .registers 5

    const-string v0, "SleepModePolicyController"

    const-string v1, "MasterSync cancelAction"

    .line 1065
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_master_sync_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    .line 1067
    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1068
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmLogger(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    move-result-object v0

    const-string v3, "Enable master sync"

    invoke-virtual {v0, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 1070
    :cond_24
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;->val$context:Landroid/content/Context;

    invoke-static {p0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public triggerAction()V
    .registers 4

    const-string v0, "SleepModePolicyController"

    const-string v1, "MasterSync triggerAction"

    .line 1052
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_sleep_mode_master_sync_key"

    if-eqz v0, :cond_35

    .line 1054
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 1055
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;->val$context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1056
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 1057
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmLogger(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    move-result-object p0

    const-string v0, "Disable master sync"

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    goto :goto_3a

    .line 1059
    :cond_35
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$6;->val$context:Landroid/content/Context;

    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_3a
    return-void
.end method
