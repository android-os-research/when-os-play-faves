.class public Lcom/android/server/notification/NotificationRecordLoggerImpl;
.super Ljava/lang/Object;
.source "NotificationRecordLoggerImpl.java"

# interfaces
.implements Lcom/android/server/notification/NotificationRecordLogger;


# instance fields
.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 98
    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p2

    .line 98
    invoke-interface {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logNotificationAdjusted(Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
    .registers 11

    .line 50
    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 51
    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_ADJUSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public maybeLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
    .registers 12

    .line 38
    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;

    invoke-direct {v1, p1, p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 39
    invoke-virtual {v1, p4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->shouldLogReported(I)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 42
    :cond_c
    invoke-static {v1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->fromRecordPair(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    move-result-object v2

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public final writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V
    .registers 33

    move-object/from16 v0, p1

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->getId()I

    move-result v2

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 60
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 61
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getInstanceId()I

    move-result v5

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNotificationIdHash()I

    move-result v6

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getChannelIdHash()I

    move-result v7

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getGroupIdHash()I

    move-result v8

    if-nez p5, :cond_2a

    const/4 v1, 0x0

    goto :goto_2e

    .line 66
    :cond_2a
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v1

    :goto_2e
    move v9, v1

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 67
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v10

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 68
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v11, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getStyle()I

    move-result v12

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNumPeople()I

    move-result v13

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 73
    invoke-static {v1}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result v15

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 76
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanationCode()I

    move-result v17

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 78
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getInitialImportance()I

    move-result v18

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 80
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getInitialImportanceExplanationCode()I

    move-result v19

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 82
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getAssistantImportance()I

    move-result v20

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getAssistantHash()I

    move-result v21

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 84
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v22

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 85
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v23

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 87
    invoke-static {v1}, Lcom/android/server/notification/NotificationRecordLogger;->isForegroundService(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v24

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 89
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v25

    const/16 v1, 0xf4

    move/from16 v14, p3

    move/from16 v16, p4

    .line 58
    invoke-static/range {v1 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIIZLjava/lang/String;IIIIIIIIIIFZZJ)V

    return-void
.end method
