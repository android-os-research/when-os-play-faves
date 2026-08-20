.class public final Lcom/android/server/notification/NotificationHistoryFilter;
.super Ljava/lang/Object;
.source "NotificationHistoryFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationHistoryFilter$Builder;
    }
.end annotation


# instance fields
.field public mChannel:Ljava/lang/String;

.field public mNotificationCount:I

.field public mPackage:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fputmChannel(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNotificationCount(Lcom/android/server/notification/NotificationHistoryFilter;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPackage(Lcom/android/server/notification/NotificationHistoryFilter;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationHistoryFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/notification/NotificationHistoryFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mChannel:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxNotifications()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    return p0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public isFiltering()Z
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    iget p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    const v0, 0x7fffffff

    if-ge p0, v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method public matchesCountFilter(Landroid/app/NotificationHistory;)Z
    .registers 2

    .line 76
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getHistoryCount()I

    move-result p1

    iget p0, p0, Lcom/android/server/notification/NotificationHistoryFilter;->mNotificationCount:I

    if-ge p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public matchesPackageAndChannelFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z
    .registers 4

    .line 58
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 59
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    return v1

    .line 62
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 63
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationHistoryFilter;->getChannel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    return v1

    :cond_33
    const/4 p0, 0x1

    return p0
.end method
