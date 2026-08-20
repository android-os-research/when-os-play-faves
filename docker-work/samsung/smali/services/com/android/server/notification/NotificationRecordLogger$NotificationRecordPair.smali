.class public Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;
.super Ljava/lang/Object;
.source "NotificationRecordLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecordLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationRecordPair"
.end annotation


# instance fields
.field public final old:Lcom/android/server/notification/NotificationRecord;

.field public final r:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .registers 3

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 361
    iput-object p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    return-void
.end method


# virtual methods
.method public getAssistantHash()I
    .registers 1

    .line 420
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getAdjustmentIssuer()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_e

    .line 421
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_e
    return p0
.end method

.method public getChannelIdHash()I
    .registers 1

    .line 439
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/notification/SmallHash;->hash(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGroupIdHash()I
    .registers 1

    .line 446
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/notification/SmallHash;->hash(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getInstanceId()I
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    goto :goto_1c

    :cond_e
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p0

    :goto_1c
    return p0
.end method

.method public getNotificationIdHash()I
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p0

    xor-int/2addr p0, v0

    invoke-static {p0}, Lcom/android/server/notification/SmallHash;->hash(I)I

    move-result p0

    return p0
.end method

.method public getNumPeople()I
    .registers 2

    .line 405
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNumPeople(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final getNumPeople(Landroid/os/Bundle;)I
    .registers 2

    if-eqz p1, :cond_15

    const-string p0, "android.people.list"

    .line 410
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 412
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    .line 413
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public getStyle()I
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getStyle(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final getStyle(Landroid/os/Bundle;)I
    .registers 2

    if-eqz p1, :cond_15

    const-string p0, "android.template"

    .line 396
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 397
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_15

    .line 398
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public shouldLogReported(I)Z
    .registers 6

    .line 368
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 371
    :cond_6
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    const/4 v3, 0x1

    if-eqz v2, :cond_a9

    if-lez p1, :cond_f

    goto/16 :goto_a9

    .line 375
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getChannelIdLogTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 376
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getChannelIdLogTag()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 377
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupLogTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 378
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 379
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-ne p1, v0, :cond_a7

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 380
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 381
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 380
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 382
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    if-ne p1, v0, :cond_a7

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 383
    invoke-static {p1}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v0}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    if-ne p1, v0, :cond_a7

    iget-object p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->old:Lcom/android/server/notification/NotificationRecord;

    .line 384
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->rankingScoreMatches(F)Z

    move-result p0

    if-nez p0, :cond_a8

    :cond_a7
    move v1, v3

    :cond_a8
    return v1

    :cond_a9
    :goto_a9
    return v3
.end method
