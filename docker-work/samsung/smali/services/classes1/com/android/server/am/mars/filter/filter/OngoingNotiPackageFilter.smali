.class public Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;
.super Ljava/lang/Object;
.source "OngoingNotiPackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;

.field public mContext:Landroid/content/Context;

.field public mNotificationManager:Landroid/app/INotificationManager;

.field public mSpecialNotificationAppListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;
    .registers 1

    .line 32
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$OngoingNotiPackageFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 12

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->isNotificationListenerPresent(Ljava/lang/String;I)Z

    move-result p4

    const/4 v0, 0x3

    const-string v1, ")"

    const-string v2, "("

    if-eqz p4, :cond_2b

    .line 53
    sget-object p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "filter(NotiListener) : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 57
    :cond_2b
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;

    const/4 p4, 0x0

    if-eqz p0, :cond_75

    .line 58
    array-length v3, p0

    move v4, p4

    :goto_32
    if-ge v4, v3, :cond_75

    aget-object v5, p0, v4

    if-eqz v5, :cond_72

    .line 59
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    if-ne v6, p3, :cond_72

    .line 60
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x22

    if-eqz v5, :cond_72

    .line 61
    sget-object p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "filter : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_75
    return p4
.end method

.method public getActiveNotifications()V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationManager:Landroid/app/INotificationManager;

    if-nez v0, :cond_11

    const-string/jumbo v0, "notification"

    .line 72
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationManager:Landroid/app/INotificationManager;

    .line 75
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationManager:Landroid/app/INotificationManager;

    if-eqz v0, :cond_3f

    .line 77
    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotificationList:[Landroid/service/notification/StatusBarNotification;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_27} :catch_28

    goto :goto_3f

    :catch_28
    move-exception p0

    .line 80
    sget-object v0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveNotifications() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->setContext(Landroid/content/Context;)V

    const-string/jumbo p1, "notification"

    .line 45
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mNotificationManager:Landroid/app/INotificationManager;

    return-void
.end method

.method public final isNotificationListenerPresent(Ljava/lang/String;I)Z
    .registers 3

    .line 86
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_13

    .line 88
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public onNotificationListenerBinded(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    :cond_f
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onNotificationListenerUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 105
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_d
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mSpecialNotificationAppListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mContext:Landroid/content/Context;

    return-void
.end method
