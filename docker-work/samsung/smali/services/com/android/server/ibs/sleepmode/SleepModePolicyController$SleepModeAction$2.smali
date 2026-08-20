.class public Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;
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

.field public final synthetic val$this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V
    .registers 3

    .line 927
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->val$this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelAction()V
    .registers 6

    const-string v0, "SleepModePolicyController"

    const-string v1, "GPS cancelAction"

    .line 958
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pref_sleep_mode_location_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_34

    .line 961
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 963
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmLogger(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    move-result-object v0

    const-string v3, "Enable GPS"

    invoke-virtual {v0, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 965
    :cond_34
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public triggerAction()V
    .registers 6

    const-string v0, "SleepModePolicyController"

    const-string v1, "GPS triggerAction"

    .line 930
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string/jumbo v1, "location_mode"

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 936
    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    .line 937
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    goto :goto_42

    .line 940
    :cond_2f
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    move v0, v2

    :goto_42
    const-string/jumbo v4, "pref_sleep_mode_location_key"

    if-eqz v0, :cond_78

    .line 946
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 948
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 949
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmLogger(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    move-result-object v0

    const-string v1, "Disable GPS"

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    .line 950
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$fgetmSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V

    goto :goto_81

    .line 952
    :cond_78
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;->this$1:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_81
    return-void
.end method
