.class public Lcom/android/server/notification/NotificationManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 1985
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1988
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_ON"

    .line 1990
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1993
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 1994
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateNotificationPulse(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1997
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mclearDelayedWakelock(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_224

    :cond_21
    const-string v4, "android.intent.action.SCREEN_OFF"

    .line 1999
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2000
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 2001
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateNotificationPulse(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_224

    :cond_33
    const-string v4, "android.intent.action.PHONE_STATE"

    .line 2002
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2003
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string/jumbo v4, "state"

    .line 2004
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallStateOffHook:Z

    .line 2005
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateNotificationPulse(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_224

    :cond_53
    const-string v4, "android.intent.action.USER_STOPPED"

    .line 2006
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    const-string v6, "android.intent.extra.user_handle"

    if-eqz v4, :cond_7c

    .line 2007
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    if-ltz v15, :cond_224

    .line 2009
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v8

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-virtual/range {v7 .. v17}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto/16 :goto_224

    :cond_7c
    const-string v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 2012
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 2013
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    if-ltz v15, :cond_224

    .line 2015
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v8

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0xf

    const/16 v17, 0x0

    invoke-virtual/range {v7 .. v17}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto/16 :goto_224

    :cond_a2
    const-string v4, "android.intent.action.USER_PRESENT"

    .line 2018
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 2020
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationLight(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/LogicalLight;

    move-result-object v1

    if-eqz v1, :cond_224

    .line 2021
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationLight(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/LogicalLight;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    goto/16 :goto_224

    :cond_bd
    const-string v4, "android.intent.action.USER_SWITCHED"

    .line 2023
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, -0x2710

    if-eqz v4, :cond_114

    .line 2024
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2025
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2026
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_109

    .line 2028
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_109

    .line 2030
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 2032
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched(I)V

    .line 2033
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    .line 2034
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ZenModeHelper;->onUserSwitched(I)V

    .line 2037
    :cond_109
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    goto/16 :goto_224

    :cond_114
    const-string v4, "android.intent.action.USER_ADDED"

    .line 2038
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14d

    .line 2039
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_142

    .line 2041
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2042
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_142

    .line 2044
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_142

    .line 2045
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->allowDefaultApprovedServices(I)V

    .line 2049
    :cond_142
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->updateCurrentProfilesCache()V

    goto/16 :goto_224

    :cond_14d
    const-string v4, "android.intent.action.USER_REMOVED"

    .line 2051
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a4

    .line 2052
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2053
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2054
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ZenModeHelper;->onUserRemoved(I)V

    .line 2055
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/PreferencesHelper;->onUserRemoved(I)V

    .line 2056
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserRemoved(I)V

    .line 2057
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices;->onUserRemoved(I)V

    .line 2058
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices;->onUserRemoved(I)V

    .line 2059
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationHistoryManager;->onUserRemoved(I)V

    .line 2060
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2062
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEdgeLightingManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->updateCurrentProfilesCache()V

    goto/16 :goto_224

    :cond_1a4
    const-string v4, "android.intent.action.USER_UNLOCKED"

    .line 2064
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ee

    .line 2065
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2066
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2067
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAssistants(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onUserUnlocked(I)V

    .line 2068
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_224

    .line 2070
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_224

    .line 2071
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices;->onUserUnlocked(I)V

    .line 2072
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices;->onUserUnlocked(I)V

    .line 2073
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/ZenModeHelper;->onUserUnlocked(I)V

    goto :goto_224

    :cond_1ee
    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 2075
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_224

    .line 2076
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSemGoodCatchManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    move-result-object v1

    if-nez v1, :cond_224

    .line 2077
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    new-instance v2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "toast"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmGoodCatchStateListener(Lcom/android/server/notification/NotificationManagerService;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    move-result-object v0

    const-string v5, "AccessibilityManagerService"

    invoke-direct {v2, v3, v5, v4, v0}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmSemGoodCatchManager(Lcom/android/server/notification/NotificationManagerService;Lcom/samsung/android/sepunion/SemGoodCatchManager;)V

    const-string v0, "NotificationService"

    const-string v1, "SemGoodCatchManager is created"

    .line 2078
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_224
    :goto_224
    return-void
.end method
