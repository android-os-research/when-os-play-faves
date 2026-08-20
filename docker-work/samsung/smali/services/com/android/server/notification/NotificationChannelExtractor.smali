.class public Lcom/android/server/notification/NotificationChannelExtractor;
.super Ljava/lang/Object;
.source "NotificationChannelExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "ChannelExtractor"


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    .line 38
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_38

    .line 43
    :cond_a
    iget-object v2, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v2, :cond_f

    return-object v0

    .line 48
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 47
    invoke-interface/range {v2 .. v8}, Lcom/android/server/notification/RankingConfig;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_38
    :goto_38
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    return-void
.end method
