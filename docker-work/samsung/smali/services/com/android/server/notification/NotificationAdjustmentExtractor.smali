.class public Lcom/android/server/notification/NotificationAdjustmentExtractor;
.super Ljava/lang/Object;
.source "NotificationAdjustmentExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "AdjustmentExtractor"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_d

    .line 34
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_d

    .line 38
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->applyAdjustments()V

    :cond_d
    :goto_d
    return-object p0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    return-void
.end method
