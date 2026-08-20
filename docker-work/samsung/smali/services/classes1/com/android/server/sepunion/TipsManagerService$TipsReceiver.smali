.class public Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TipsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/TipsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TipsReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    .line 197
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 199
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 202
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    goto :goto_1f

    :cond_1e
    move p1, v2

    :goto_1f
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a8

    if-nez p1, :cond_1a8

    .line 204
    iget-object v4, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v4}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsPackageExist(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto/16 :goto_1a8

    .line 210
    :cond_2e
    :try_start_2e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsHUNAlreadyShown(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmWaitingCallEnd(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 212
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0, v1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmWaitingCallEnd(Lcom/android/server/sepunion/TipsManagerService;Z)V

    goto/16 :goto_1a7

    .line 213
    :cond_51
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmWaitingCallEnd(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result v0

    if-eqz v0, :cond_d9

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1a7

    const-string/jumbo p2, "state"

    .line 216
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a7

    .line 217
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1, v2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmWaitingCallEnd(Lcom/android/server/sepunion/TipsManagerService;Z)V

    .line 218
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmDialCount(Lcom/android/server/sepunion/TipsManagerService;)I

    move-result p1
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_81} :catch_19e

    const/4 p2, 0x5

    const-string/jumbo v0, "tips_trigger_count"

    if-ne p1, p2, :cond_c0

    .line 220
    :try_start_87
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[GalaxyTips]TIPS Activitation!! WAKE UP"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-static {p1, v0, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 224
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result p1

    if-nez p1, :cond_b9

    .line 225
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsHandler(Lcom/android/server/sepunion/TipsManagerService;)Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    move-result-object v2

    const/16 v3, 0x2711

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0xea60

    invoke-static/range {v2 .. v8}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 227
    :cond_b9
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0, v1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmTipsHUNAlreadyShown(Lcom/android/server/sepunion/TipsManagerService;Z)V

    goto/16 :goto_1a7

    .line 229
    :cond_c0
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmDialCount(Lcom/android/server/sepunion/TipsManagerService;)I

    move-result p2

    add-int/2addr p2, v1

    invoke-static {p0, p2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmDialCount(Lcom/android/server/sepunion/TipsManagerService;I)V

    invoke-static {p1, v0, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1a7

    .line 233
    :cond_d9
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result p2
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_df} :catch_19e

    const-string/jumbo v0, "gtips_network_granted"

    if-nez p2, :cond_101

    :try_start_e4
    const-string/jumbo p2, "samsung.galaxy.tips.network_granted"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_101

    .line 234
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1, v1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;Z)V

    .line 235
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1a7

    :cond_101
    const-string/jumbo p2, "samsung.galaxy.tips.application.terminated"

    .line 236
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11c

    .line 237
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "tips_regular_hour_timer_renewal_count"

    invoke-static {p0, p1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_1a7

    .line 238
    :cond_11c
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmBootupCompleted(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result p2

    if-eqz p2, :cond_154

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_154

    .line 239
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.app.tips"

    const-string v0, "com.samsung.android.app.tips.TipsIntentService"

    .line 241
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "tips_extras"

    .line 242
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_13e} :catch_19e

    .line 244
    :try_start_13e
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_149} :catch_14a

    goto :goto_1a7

    .line 246
    :catch_14a
    :try_start_14a
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[GalaxyTips] Fail to send MSG_NEW_DATA_UPDATED intent to Tips."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a7

    .line 249
    :cond_154
    iget-object p2, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmBootupCompleted(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result p2

    if-eqz p2, :cond_1a7

    const-string p2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a7

    .line 250
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/TipsManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v1, :cond_17a

    .line 251
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1, v1}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;Z)V

    goto :goto_17f

    .line 253
    :cond_17a
    iget-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p1, v2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;Z)V

    .line 255
    :goto_17f
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "USER_SWITCHED isNetworkGranted "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsNetworkGranted(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_19d} :catch_19e

    goto :goto_1a7

    .line 258
    :catch_19e
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Fail to send intent to Tips."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a7
    :goto_1a7
    return-void

    .line 205
    :cond_1a8
    :goto_1a8
    invoke-static {}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GalaxyTips] Got a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". But can\'t perform.(completeSetupWizard= "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " EmergencyMode= "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " TipsExist= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsReceiver;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-static {p0}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fgetmTipsPackageExist(Lcom/android/server/sepunion/TipsManagerService;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
