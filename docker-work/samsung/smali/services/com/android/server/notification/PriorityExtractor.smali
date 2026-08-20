.class public Lcom/android/server/notification/PriorityExtractor;
.super Ljava/lang/Object;
.source "PriorityExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "PriorityExtractor"


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mHelper:Lcom/android/server/notification/ZenModeHelper;


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
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_69

    .line 39
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_69

    .line 44
    :cond_a
    iget-object v1, p0, Lcom/android/server/notification/PriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_f

    return-object v0

    .line 50
    :cond_f
    iget-object p0, p0, Lcom/android/server/notification/PriorityExtractor;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getAppsToBypassDndForEnabledLifeStyle()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p0, :cond_5b

    .line 52
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2c

    goto :goto_1d

    :cond_2c
    const-string v4, ":"

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 55
    array-length v4, v3

    if-ge v4, v2, :cond_36

    goto :goto_1d

    .line 56
    :cond_36
    aget-object v4, v3, v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    aget-object v3, v3, v4

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    if-ne v3, v4, :cond_1d

    .line 58
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setPackagePriority(I)V

    goto :goto_1d

    .line 63
    :cond_5b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p0

    if-eqz p0, :cond_66

    move v1, v2

    :cond_66
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setPackagePriority(I)V

    :cond_69
    :goto_69
    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/android/server/notification/PriorityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/android/server/notification/PriorityExtractor;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    return-void
.end method
