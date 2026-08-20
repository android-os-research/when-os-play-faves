.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;
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

    .line 895
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAction()V
    .registers 5

    const-string v0, "SleepModePolicyController"

    const-string v1, "PSM cancelAction"

    .line 918
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_psm_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 920
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "low_power"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 921
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmLogger(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    move-result-object v0

    const-string v3, "Disable low power mode"

    invoke-virtual {v0, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 923
    :cond_30
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public triggerAction()V
    .registers 7

    const-string v0, "SleepModePolicyController"

    const-string v1, "PSM triggerAction"

    .line 898
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isPsmEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 900
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isUpsmEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 901
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isEmergencyModeEnabled(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    const-string/jumbo v5, "pref_sleep_mode_psm_key"

    if-nez v1, :cond_74

    if-nez v2, :cond_74

    if-eqz v3, :cond_30

    goto :goto_74

    .line 909
    :cond_30
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 910
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "low_power_trigger_level"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 911
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 912
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)I

    move-result v1

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    .line 913
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmLogger(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    move-result-object p0

    const-string v0, "Enable low power mode"

    invoke-virtual {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    return-void

    .line 904
    :cond_74
    :goto_74
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v5, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p0, ": already PSM enabled. It will not enable PSM control by SleepPSM"

    .line 905
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
