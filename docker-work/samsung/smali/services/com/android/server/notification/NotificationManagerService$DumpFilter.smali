.class public final Lcom/android/server/notification/NotificationManagerService$DumpFilter;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpFilter"
.end annotation


# instance fields
.field public criticalPriority:Z

.field public filtered:Z

.field public normalPriority:Z

.field public pkgFilter:Ljava/lang/String;

.field public proto:Z

.field public redact:Z

.field public rvStats:Z

.field public since:J

.field public stats:Z

.field public zen:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 13584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13585
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    .line 13591
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    .line 13592
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    .line 13593
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    .line 13594
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    return-void
.end method

.method public static parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .registers 9

    .line 13598
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    invoke-direct {v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 13599
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_e8

    .line 13600
    aget-object v3, p0, v2

    const-string v4, "--proto"

    .line 13601
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_19

    .line 13602
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    goto/16 :goto_e5

    :cond_19
    const-string v4, "--noredact"

    .line 13603
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e3

    const-string v4, "--reveal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto/16 :goto_e3

    :cond_2b
    const-string/jumbo v4, "p"

    .line 13605
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c4

    const-string/jumbo v4, "pkg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c4

    const-string v4, "--package"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    goto/16 :goto_c4

    :cond_47
    const-string v4, "--zen"

    .line 13615
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bf

    const-string/jumbo v4, "zen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_bf

    :cond_59
    const-string v4, "--stats"

    .line 13618
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_79

    .line 13619
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    .line 13620
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_75

    add-int/lit8 v2, v2, 0x1

    .line 13622
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_e5

    .line 13624
    :cond_75
    iput-wide v6, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto/16 :goto_e5

    :cond_79
    const-string v4, "--remote-view-stats"

    .line 13626
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 13627
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->rvStats:Z

    .line 13628
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_92

    add-int/lit8 v2, v2, 0x1

    .line 13630
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto :goto_e5

    .line 13632
    :cond_92
    iput-wide v6, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->since:J

    goto :goto_e5

    :cond_95
    const-string v4, "--dump-priority"

    .line 13634
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 13638
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_e5

    add-int/lit8 v2, v2, 0x1

    .line 13640
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "NORMAL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    const-string v4, "CRITICAL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b9

    goto :goto_e5

    .line 13642
    :cond_b9
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    goto :goto_e5

    .line 13645
    :cond_bc
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    goto :goto_e5

    .line 13616
    :cond_bf
    :goto_bf
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    .line 13617
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    goto :goto_e5

    .line 13606
    :cond_c4
    :goto_c4
    array-length v3, p0

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_e5

    add-int/lit8 v2, v2, 0x1

    .line 13608
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    .line 13609
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e0

    const/4 v3, 0x0

    .line 13610
    iput-object v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    goto :goto_e5

    .line 13612
    :cond_e0
    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    goto :goto_e5

    .line 13604
    :cond_e3
    :goto_e3
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    :cond_e5
    :goto_e5
    add-int/2addr v2, v5

    goto/16 :goto_7

    :cond_e8
    return-object v0
.end method


# virtual methods
.method public matches(Landroid/content/ComponentName;)Z
    .registers 4

    .line 13661
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 13662
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    goto :goto_19

    :cond_b
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public matches(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4

    .line 13655
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 13656
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    goto :goto_23

    :cond_b
    if-eqz p1, :cond_22

    .line 13657
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :cond_23
    :goto_23
    return v1
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 4

    .line 13666
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 13667
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_b

    goto :goto_1b

    :cond_b
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 13672
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v0, :cond_8

    const-string/jumbo p0, "stats"

    goto :goto_26

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_10

    const-string/jumbo p0, "zen"

    goto :goto_26

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->pkgFilter:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_26
    return-object p0
.end method
