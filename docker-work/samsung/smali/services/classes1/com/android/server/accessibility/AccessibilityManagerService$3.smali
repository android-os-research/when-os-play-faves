.class public Lcom/android/server/accessibility/AccessibilityManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .line 1219
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 1222
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/32 v1, 0x10000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1223
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTraceManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-string v3, "AccessibilityManagerService.BR.onReceive"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";intent="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 1227
    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 1228
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 1230
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fputmCurtainModeIsRunning(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 1231
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mswitchUser(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    goto/16 :goto_12f

    :cond_52
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 1232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1233
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$munlockUser(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    goto/16 :goto_12f

    :cond_67
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 1234
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1235
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mremoveUser(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    goto/16 :goto_12f

    :cond_7c
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 1236
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1238
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1239
    :try_start_8b
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetCurrentUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p1

    .line 1240
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 1241
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 1243
    :cond_9e
    monitor-exit v0

    goto/16 :goto_12f

    :catchall_a1
    move-exception p0

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_8b .. :try_end_a3} :catchall_a1

    throw p0

    :cond_a4
    const-string v0, "android.os.action.SETTING_RESTORED"

    .line 1244
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12f

    const-string/jumbo p1, "setting_name"

    .line 1245
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "enabled_accessibility_services"

    .line 1246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1247
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1248
    :try_start_c2
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo p1, "previous_value"

    .line 1249
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "new_value"

    .line 1250
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "restored_from_sdk_int"

    .line 1251
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1248
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1253
    monitor-exit v0

    goto :goto_12f

    :catchall_de
    move-exception p0

    monitor-exit v0
    :try_end_e0
    .catchall {:try_start_c2 .. :try_end_e0} :catchall_de

    throw p0

    :cond_e1
    const-string v0, "accessibility_display_magnification_navbar_enabled"

    .line 1254
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 1255
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1256
    :try_start_f0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo p1, "new_value"

    .line 1257
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "restored_from_sdk_int"

    .line 1258
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1256
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mrestoreLegacyDisplayMagnificationNavBarIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;I)V

    .line 1260
    monitor-exit v0

    goto :goto_12f

    :catchall_105
    move-exception p0

    monitor-exit v0
    :try_end_107
    .catchall {:try_start_f0 .. :try_end_107} :catchall_105

    throw p0

    :cond_108
    const-string v0, "accessibility_button_targets"

    .line 1261
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12f

    .line 1262
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1263
    :try_start_117
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$3;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v0, "previous_value"

    .line 1264
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "new_value"

    .line 1265
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1263
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreAccessibilityButtonTargetsLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    monitor-exit p1

    goto :goto_12f

    :catchall_12c
    move-exception p0

    monitor-exit p1
    :try_end_12e
    .catchall {:try_start_117 .. :try_end_12e} :catchall_12c

    throw p0

    :cond_12f
    :goto_12f
    return-void
.end method
