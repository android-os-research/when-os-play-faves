.class public Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationGroup"
.end annotation


# instance fields
.field public final mGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump()V
    .registers 6

    .line 1032
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1033
    :try_start_3
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_3f

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_3f

    .line 1040
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".NotificationGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "group notification count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 1034
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1035
    :goto_49
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 1036
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".NotificationGroup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "group key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,value= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 1042
    :cond_92
    :goto_92
    monitor-exit v0

    return-void

    :catchall_94
    move-exception p0

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_3 .. :try_end_96} :catchall_94

    throw p0
.end method

.method public getGroupData(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
    .registers 3

    .line 1021
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1022
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1023
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .registers 2

    .line 1027
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove(Landroid/service/notification/StatusBarNotification;)V
    .registers 6

    .line 959
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 960
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":NotificationGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove : sbn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    if-eqz v1, :cond_68

    .line 963
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 964
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->removeChild(Ljava/lang/String;)V

    .line 965
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getChildNotificationCount()I

    move-result v1

    if-nez v1, :cond_71

    .line 966
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 969
    :cond_58
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getChildNotificationCount()I

    move-result v1

    if-nez v1, :cond_71

    .line 970
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_71

    .line 974
    :cond_68
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    :cond_71
    :goto_71
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->dump()V

    .line 977
    monitor-exit v0

    return-void

    :catchall_76
    move-exception p0

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public removeByCancel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 942
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 943
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":NotificationGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeByCancel : groupKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    if-eqz v1, :cond_4e

    .line 946
    invoke-virtual {v1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->removeChild(Ljava/lang/String;)V

    .line 948
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getChildNotificationCount()I

    move-result p2

    if-nez p2, :cond_53

    .line 949
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 952
    :cond_4e
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    :cond_53
    :goto_53
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->dump()V

    .line 955
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public updateNotificationData(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V
    .registers 10

    .line 982
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 983
    :try_start_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_c4

    iget-object v1, p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v2, "isHeadup"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".NotificationGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotificationData replace :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", group  size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    if-eqz v1, :cond_b2

    .line 989
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getChild(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v2

    if-eqz v2, :cond_b7

    .line 991
    iget-object v3, p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "tickerText"

    iget-object v5, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "tickerText"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 992
    iget-object v3, p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "titleText"

    iget-object v5, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "titleText"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 993
    iget-object v3, p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "text"

    iget-object v5, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v6, "text"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 994
    iget-object v3, p2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "subText"

    iget-object v2, v2, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v5, "subText"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_b7

    .line 997
    :cond_b2
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    invoke-direct {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;-><init>()V

    .line 1000
    :cond_b7
    :goto_b7
    invoke-virtual {v1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->setSummaryNotification(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V

    .line 1001
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f8

    .line 1003
    :cond_c4
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    if-nez v1, :cond_d7

    .line 1006
    new-instance v1, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    invoke-direct {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;-><init>()V

    .line 1009
    :cond_d7
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 1010
    invoke-virtual {v1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->setSummaryNotification(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V

    goto :goto_ec

    .line 1012
    :cond_e5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->putChild(Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V

    .line 1014
    :goto_ec
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->getKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->dump()V

    .line 1017
    :goto_f8
    monitor-exit v0

    return-void

    :catchall_fa
    move-exception p0

    monitor-exit v0
    :try_end_fc
    .catchall {:try_start_3 .. :try_end_fc} :catchall_fa

    throw p0
.end method
