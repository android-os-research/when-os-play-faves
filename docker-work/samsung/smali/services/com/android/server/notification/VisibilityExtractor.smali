.class public Lcom/android/server/notification/VisibilityExtractor;
.super Ljava/lang/Object;
.source "VisibilityExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "VisibilityExtractor"


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adminAllowsKeyguardFeature(II)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    return v0

    .line 120
    :cond_5
    iget-object p0, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/2addr p0, p2

    if-nez p0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    .line 38
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_a3

    .line 42
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_a3

    .line 47
    :cond_b
    iget-object v1, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_10

    return-object v0

    .line 52
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_24

    .line 55
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setPackageVisibilityOverride(I)V

    goto/16 :goto_a3

    .line 57
    :cond_24
    iget-object v3, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 58
    invoke-interface {v3, v1}, Lcom/android/server/notification/RankingConfig;->canShowNotificationsOnLockscreen(I)Z

    move-result v3

    const/4 v4, 0x4

    .line 59
    invoke-virtual {p0, v1, v4}, Lcom/android/server/notification/VisibilityExtractor;->adminAllowsKeyguardFeature(II)Z

    move-result v4

    .line 61
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v5, v2, :cond_3d

    move v5, v6

    goto :goto_3e

    :cond_3d
    move v5, v7

    .line 64
    :goto_3e
    iget-object v8, p0, Lcom/android/server/notification/VisibilityExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 66
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v10

    .line 65
    invoke-virtual {v8, v9, v10}, Lcom/android/server/notification/PreferencesHelper;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v2, :cond_54

    move v8, v6

    goto :goto_55

    :cond_54
    move v8, v7

    :goto_55
    if-eqz v3, :cond_a0

    if-eqz v4, :cond_a0

    if-eqz v5, :cond_a0

    if-nez v8, :cond_5e

    goto :goto_a0

    .line 76
    :cond_5e
    iget-object v2, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 77
    invoke-interface {v2, v1}, Lcom/android/server/notification/RankingConfig;->canShowPrivateNotificationsOnLockScreen(I)Z

    move-result v2

    const/16 v3, 0x8

    .line 78
    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/VisibilityExtractor;->adminAllowsKeyguardFeature(II)Z

    move-result v1

    .line 80
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    if-eqz v3, :cond_76

    move v3, v6

    goto :goto_77

    :cond_76
    move v3, v7

    .line 83
    :goto_77
    iget-object p0, p0, Lcom/android/server/notification/VisibilityExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 85
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v5

    .line 84
    invoke-virtual {p0, v4, v5}, Lcom/android/server/notification/PreferencesHelper;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_8c

    goto :goto_8d

    :cond_8c
    move v6, v7

    :goto_8d
    if-eqz v2, :cond_9c

    if-eqz v1, :cond_9c

    if-eqz v3, :cond_9c

    if-nez v6, :cond_96

    goto :goto_9c

    :cond_96
    const/16 p0, -0x3e8

    .line 92
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setPackageVisibilityOverride(I)V

    goto :goto_a3

    .line 90
    :cond_9c
    :goto_9c
    invoke-virtual {p1, v7}, Lcom/android/server/notification/NotificationRecord;->setPackageVisibilityOverride(I)V

    goto :goto_a3

    .line 72
    :cond_a0
    :goto_a0
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setPackageVisibilityOverride(I)V

    :cond_a3
    :goto_a3
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public setPreferenceHelper(Lcom/android/server/notification/PreferencesHelper;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/android/server/notification/VisibilityExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    return-void
.end method
