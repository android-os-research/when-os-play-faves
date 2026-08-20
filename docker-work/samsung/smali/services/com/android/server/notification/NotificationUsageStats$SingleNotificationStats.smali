.class public Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleNotificationStats"
.end annotation


# instance fields
.field public airtimeCount:J

.field public airtimeExpandedMs:J

.field public airtimeMs:J

.field public currentAirtimeExpandedStartElapsedMs:J

.field public currentAirtimeStartElapsedMs:J

.field public isExpanded:Z

.field public isNoisy:Z

.field public isVisible:Z

.field public naturalImportance:I

.field public posttimeElapsedMs:J

.field public posttimeToDismissMs:J

.field public posttimeToFirstAirtimeMs:J

.field public posttimeToFirstClickMs:J

.field public posttimeToFirstVisibleExpansionMs:J

.field public requestedImportance:I

.field public userExpansionCount:J


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 802
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 803
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    const-wide/16 v0, -0x1

    .line 805
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 807
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    .line 809
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    const-wide/16 v2, 0x0

    .line 811
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 813
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    .line 818
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 820
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 825
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 830
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 832
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 834
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    const/4 v0, 0x0

    .line 954
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    return-void
.end method

.method public getCurrentAirtimeExpandedMs()J
    .registers 7

    .line 859
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 861
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12

    .line 862
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_12
    return-wide v0
.end method

.method public getCurrentAirtimeMs()J
    .registers 7

    .line 850
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 852
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12

    .line 853
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_12
    return-wide v0
.end method

.method public getCurrentPosttimeMs()J
    .registers 5

    .line 843
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_9

    return-wide v2

    .line 846
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public hasBeenVisiblyExpanded()Z
    .registers 5

    .line 930
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onCancel()V
    .registers 1

    .line 887
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    return-void
.end method

.method public onClick()V
    .registers 5

    .line 871
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 872
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    :cond_11
    return-void
.end method

.method public onDismiss()V
    .registers 5

    .line 880
    iget-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    .line 883
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    return-void
.end method

.method public onExpansionChanged(ZZ)V
    .registers 5

    .line 919
    iput-boolean p2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    if-eqz p2, :cond_d

    if-eqz p1, :cond_d

    .line 921
    iget-wide p1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    .line 923
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateVisiblyExpandedStats()V

    return-void
.end method

.method public onRemoved()V
    .registers 1

    .line 891
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->finish()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 11

    .line 895
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 896
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    .line 897
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_27

    .line 899
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_1b

    .line 900
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 901
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 903
    :cond_1b
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_37

    .line 904
    iget-wide v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    goto :goto_37

    .line 907
    :cond_27
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    cmp-long v3, v5, v3

    if-ltz v3, :cond_37

    .line 908
    iget-wide v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    sub-long/2addr v0, v5

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    const-wide/16 v0, -0x1

    .line 909
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    :cond_37
    :goto_37
    if-eq v2, p1, :cond_3c

    .line 914
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateVisiblyExpandedStats()V

    :cond_3c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleNotificationStats{"

    .line 960
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "posttimeElapsedMs="

    .line 962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "posttimeToFirstClickMs="

    .line 963
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "posttimeToDismissMs="

    .line 964
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToDismissMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "airtimeCount="

    .line 965
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "airtimeMs="

    .line 966
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "currentAirtimeStartElapsedMs="

    .line 967
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "airtimeExpandedMs="

    .line 969
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "posttimeToFirstVisibleExpansionMs="

    .line 970
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 971
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "currentAirtimeExpandedStartElapsedMs="

    .line 972
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 973
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestedImportance="

    .line 974
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "naturalImportance="

    .line 975
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->naturalImportance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isNoisy="

    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 977
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateFrom(Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;)V
    .registers 4

    .line 983
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    .line 984
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstClickMs:J

    .line 985
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeCount:J

    .line 986
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstAirtimeMs:J

    .line 987
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeStartElapsedMs:J

    .line 988
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeMs:J

    .line 989
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 990
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 991
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    .line 992
    iget-wide v0, p1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->userExpansionCount:J

    return-void
.end method

.method public final updateVisiblyExpandedStats()V
    .registers 8

    .line 934
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 935
    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isVisible:Z

    if-eqz v2, :cond_22

    .line 937
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    cmp-long v2, v5, v3

    if-gez v2, :cond_16

    .line 938
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    .line 940
    :cond_16
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    cmp-long v2, v5, v3

    if-gez v2, :cond_32

    .line 941
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    goto :goto_32

    .line 945
    :cond_22
    iget-wide v5, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_32

    .line 946
    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    sub-long/2addr v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->airtimeExpandedMs:J

    const-wide/16 v0, -0x1

    .line 947
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->currentAirtimeExpandedStartElapsedMs:J

    :cond_32
    :goto_32
    return-void
.end method
