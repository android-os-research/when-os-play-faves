.class public Lcom/android/server/people/data/DataManager$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationListener"
.end annotation


# instance fields
.field public final mActiveNotifCounts:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public static synthetic $r8$lambda$8ooQix6Yr1qYnaqgm83OYxmSB8Y(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager$NotificationListener;->lambda$onNotificationRemoved$1(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lLsYQ_hWeLvOwoKLfJj8Q32KR6I(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager$NotificationListener;->lambda$onNotificationPosted$0(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .registers 3

    .line 1168
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 1165
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    .line 1169
    iput p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;ILcom/android/server/people/data/DataManager$NotificationListener-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$NotificationListener;-><init>(Lcom/android/server/people/data/DataManager;I)V

    return-void
.end method

.method private synthetic lambda$onNotificationPosted$0(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 5

    .line 1179
    monitor-enter p0

    .line 1180
    :try_start_1
    iget-object p3, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    .line 1181
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;-><init>()V

    .line 1180
    invoke-interface {p3, p1, p2, v0}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 1182
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private synthetic lambda$onNotificationRemoved$1(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 4

    .line 1218
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1219
    monitor-enter p0

    .line 1220
    :try_start_9
    iget-object p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-gtz p2, :cond_2d

    .line 1222
    iget-object p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    iget-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    iget p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    const/16 p3, 0x1e

    invoke-static {p1, p2, p3}, Lcom/android/server/people/data/DataManager;->-$$Nest$mcleanupCachedShortcuts(Lcom/android/server/people/data/DataManager;II)V

    goto :goto_36

    .line 1225
    :cond_2d
    iget-object p3, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    :goto_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw p1
.end method


# virtual methods
.method public declared-synchronized hasActiveNotifications(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 1291
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifCounts:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 10

    .line 1252
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    if-eq v0, v1, :cond_9

    return-void

    .line 1255
    :cond_9
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/people/data/DataManager;->getPackage(Ljava/lang/String;I)Lcom/android/server/people/data/PackageData;

    move-result-object p2

    .line 1256
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_7c

    if-nez v0, :cond_1c

    goto :goto_7c

    .line 1260
    :cond_1c
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v1

    .line 1261
    invoke-virtual {v1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    if-nez v0, :cond_27

    return-void

    .line 1265
    :cond_27
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, v0}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p4, v3, :cond_48

    if-eq p4, v0, :cond_48

    const/4 p3, 0x3

    if-eq p4, p3, :cond_37

    goto :goto_6f

    :cond_37
    const/4 p3, 0x0

    .line 1279
    invoke-virtual {v2, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1280
    invoke-virtual {v2, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1281
    invoke-virtual {v2, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setDemoted(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1282
    invoke-virtual {v2, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationSilenced(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1283
    invoke-virtual {v2, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setBubbled(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_6f

    .line 1269
    :cond_48
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1270
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p4

    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setImportant(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1271
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result p4

    invoke-virtual {v2, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setDemoted(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1273
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p4

    if-gt p4, v0, :cond_64

    goto :goto_65

    :cond_64
    move v3, v4

    .line 1272
    :goto_65
    invoke-virtual {v2, v3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationSilenced(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1274
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result p3

    invoke-virtual {v2, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setBubbled(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1286
    :goto_6f
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    .line 1287
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getUserId()I

    move-result p2

    .line 1286
    invoke-virtual {p0, v1, p3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 8

    .line 1174
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    if-eq v0, v1, :cond_d

    return-void

    .line 1177
    :cond_d
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    .line 1178
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v2, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object p0

    if-eqz p0, :cond_94

    .line 1186
    new-instance v1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 1187
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 1188
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p2

    if-nez p2, :cond_35

    return-void

    .line 1193
    :cond_35
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, p2}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1194
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p2

    .line 1195
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->setNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p2

    .line 1196
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 1197
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setParentNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    goto :goto_73

    .line 1199
    :cond_68
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setParentNotificationChannelId(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1201
    :goto_73
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p0

    .line 1205
    new-instance p2, Lcom/android/server/people/data/Event;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    const/4 p1, 0x2

    invoke-direct {p2, v0, v1, p1}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {p0, p2}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    :cond_94
    return-void
.end method

.method public declared-synchronized onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .registers 7

    monitor-enter p0

    .line 1212
    :try_start_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    iget v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_5e

    if-eq p2, v0, :cond_f

    .line 1213
    monitor-exit p0

    return-void

    .line 1215
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object p2

    .line 1216
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v1, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_5c

    if-nez p1, :cond_28

    goto :goto_5c

    .line 1233
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1234
    invoke-virtual {p1, p2}, Lcom/android/server/people/data/PackageData;->getConversationInfo(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_5e

    if-nez p3, :cond_34

    .line 1236
    monitor-exit p0

    return-void

    .line 1239
    :cond_34
    :try_start_34
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-direct {v2, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1240
    invoke-virtual {v2, v0, v1}, Lcom/android/server/people/data/ConversationInfo$Builder;->setLastEventTimestamp(J)Lcom/android/server/people/data/ConversationInfo$Builder;

    move-result-object p3

    .line 1241
    invoke-virtual {p3}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object p3

    .line 1242
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/people/data/ConversationStore;->addOrUpdate(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1244
    invoke-virtual {p1}, Lcom/android/server/people/data/PackageData;->getEventStore()Lcom/android/server/people/data/EventStore;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    move-result-object p1

    .line 1246
    new-instance p2, Lcom/android/server/people/data/Event;

    const/4 p3, 0x3

    invoke-direct {p2, v0, v1, p3}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-virtual {p1, p2}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V
    :try_end_5a
    .catchall {:try_start_34 .. :try_end_5a} :catchall_5e

    .line 1247
    monitor-exit p0

    return-void

    .line 1231
    :cond_5c
    :goto_5c
    monitor-exit p0

    return-void

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
