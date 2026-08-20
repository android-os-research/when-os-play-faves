.class public Lcom/android/server/notification/ImportanceExtractor;
.super Ljava/lang/Object;
.source "ImportanceExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "ImportanceExtractor"


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    .line 39
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_4e

    .line 44
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/ImportanceExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_f

    return-object v0

    .line 48
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    .line 50
    iget-object v1, p0, Lcom/android/server/notification/ImportanceExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 51
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_30

    .line 52
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_30

    .line 53
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setImportance(I)V

    .line 59
    :cond_30
    iget-object p0, p0, Lcom/android/server/notification/ImportanceExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 60
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v2

    .line 59
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->isAllowNotificationPopUpForPackage(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_4e

    .line 61
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v1, 0x3

    if-le p0, v1, :cond_4e

    .line 62
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setImportance(I)V

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/notification/ImportanceExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public setPreferenceHelper(Lcom/android/server/notification/PreferencesHelper;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/server/notification/ImportanceExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    return-void
.end method
