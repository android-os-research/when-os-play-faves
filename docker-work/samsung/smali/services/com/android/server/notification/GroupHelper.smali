.class public Lcom/android/server/notification/GroupHelper;
.super Ljava/lang/Object;
.source "GroupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/GroupHelper$Callback;
    }
.end annotation


# static fields
.field public static final AUTOGROUP_KEY:Ljava/lang/String; = "ranker_group"

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "GroupHelper"


# instance fields
.field public final mAutoGroupAtCount:I

.field public final mCallback:Lcom/android/server/notification/GroupHelper$Callback;

.field public final mOngoingGroupCount:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mUngroupedNotifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "GroupHelper"

    const/4 v1, 0x3

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/server/notification/GroupHelper$Callback;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mOngoingGroupCount:Landroid/util/ArrayMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    .line 54
    iput p1, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    .line 55
    iput-object p2, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    return-void
.end method


# virtual methods
.method public final adjustAutogroupingSummary(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    if-eqz p4, :cond_11

    .line 184
    iget-object p4, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->getOngoingGroupCount(ILjava/lang/String;)I

    move-result p0

    if-lez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    .line 184
    :goto_d
    invoke-interface {p4, p1, p2, p3, p0}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_16

    .line 187
    :cond_11
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroupSummary(ILjava/lang/String;)V

    :goto_16
    return-void
.end method

.method public final adjustNotificationBundling(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    sget-boolean v1, Lcom/android/server/notification/GroupHelper;->DEBUG:Z

    if-eqz v1, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending grouping adjustment for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " group? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GroupHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    if-eqz p2, :cond_3a

    .line 195
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/notification/GroupHelper$Callback;->addAutoGroup(Ljava/lang/String;)V

    goto :goto_4

    .line 197
    :cond_3a
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/notification/GroupHelper$Callback;->removeAutoGroup(Ljava/lang/String;)V

    goto :goto_4

    :cond_40
    return-void
.end method

.method public final generatePackageKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "|"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOngoingGroupCount(ILjava/lang/String;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GroupHelper;->generatePackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mOngoingGroupCount:Landroid/util/ArrayMap;

    new-instance p2, Landroid/util/ArraySet;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public final maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    .registers 9

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    monitor-enter v1

    .line 150
    :try_start_8
    iget-object v2, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    .line 151
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_6f

    .line 152
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_21

    goto :goto_6f

    .line 156
    :cond_21
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashSet;

    if-eqz v3, :cond_6d

    .line 157
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    if-nez v4, :cond_34

    goto :goto_6d

    .line 160
    :cond_34
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    if-nez p2, :cond_47

    .line 163
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_47
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result p2

    const/4 v3, 0x0

    if-nez p2, :cond_57

    .line 169
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    goto :goto_58

    :cond_57
    move p2, v3

    .line 172
    :goto_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_8 .. :try_end_59} :catchall_71

    if-eqz p2, :cond_63

    .line 174
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p1, p2, v3}, Lcom/android/server/notification/GroupHelper;->adjustAutogroupingSummary(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 176
    :cond_63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6c

    .line 177
    invoke-virtual {p0, v0, v3}, Lcom/android/server/notification/GroupHelper;->adjustNotificationBundling(Ljava/util/List;Z)V

    :cond_6c
    return-void

    .line 158
    :cond_6d
    :goto_6d
    :try_start_6d
    monitor-exit v1

    return-void

    .line 153
    :cond_6f
    :goto_6f
    monitor-exit v1

    return-void

    :catchall_71
    move-exception p0

    .line 172
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_71

    throw p0
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Z)V
    .registers 10

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->updateOngoingGroupCount(Landroid/service/notification/StatusBarNotification;Z)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v3

    if-nez v3, :cond_91

    .line 98
    iget-object v3, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    monitor-enter v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_99

    .line 99
    :try_start_22
    iget-object v4, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    .line 100
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_39

    .line 102
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 104
    :cond_39
    iget-object v5, p0, Lcom/android/server/notification/GroupHelper;->mUngroupedNotifications:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashSet;

    if-nez v5, :cond_57

    .line 108
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 111
    :cond_57
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    iget v6, p0, Lcom/android/server/notification/GroupHelper;->mAutoGroupAtCount:I

    if-ge v4, v6, :cond_6f

    if-eqz p2, :cond_72

    .line 116
    :cond_6f
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    :cond_72
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_22 .. :try_end_73} :catchall_8e

    .line 119
    :try_start_73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a1

    .line 120
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    invoke-virtual {p0, p2, p1, v2, v1}, Lcom/android/server/notification/GroupHelper;->adjustAutogroupingSummary(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 122
    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/GroupHelper;->adjustNotificationBundling(Ljava/util/List;Z)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8d} :catch_99

    goto :goto_a1

    :catchall_8e
    move-exception p0

    .line 118
    :try_start_8f
    monitor-exit v3
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    :try_start_90
    throw p0

    .line 126
    :cond_91
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_98} :catch_99

    goto :goto_a1

    :catch_99
    move-exception p0

    const-string p1, "GroupHelper"

    const-string p2, "Failure processing new notification"

    .line 130
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a1
    :goto_a1
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    const/4 v0, 0x0

    .line 136
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->updateOngoingGroupCount(Landroid/service/notification/StatusBarNotification;Z)V

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/GroupHelper;->maybeUngroup(Landroid/service/notification/StatusBarNotification;ZI)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p0

    const-string p1, "GroupHelper"

    const-string v0, "Error processing canceled notification"

    .line 139
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-void
.end method

.method public onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 87
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/GroupHelper;->updateOngoingGroupCount(Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method public final updateOngoingGroupCount(Landroid/service/notification/StatusBarNotification;Z)V
    .registers 7

    .line 69
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 72
    :cond_b
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/GroupHelper;->generatePackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/server/notification/GroupHelper;->mOngoingGroupCount:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz p2, :cond_34

    .line 75
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p2, p0, Lcom/android/server/notification/GroupHelper;->mOngoingGroupCount:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 78
    :cond_34
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 82
    :goto_3b
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-lez p2, :cond_42

    const/4 v3, 0x1

    .line 83
    :cond_42
    iget-object p0, p0, Lcom/android/server/notification/GroupHelper;->mCallback:Lcom/android/server/notification/GroupHelper$Callback;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1, v3}, Lcom/android/server/notification/GroupHelper$Callback;->updateAutogroupSummary(ILjava/lang/String;Z)V

    return-void
.end method
