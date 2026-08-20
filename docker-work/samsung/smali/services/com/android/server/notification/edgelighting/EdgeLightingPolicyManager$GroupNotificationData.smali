.class public Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupNotificationData"
.end annotation


# instance fields
.field public mChildMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field public mSumaaryNotification:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getChild(Ljava/lang/String;)Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .registers 3

    .line 1072
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1073
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1074
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getChildNotificationCount()I
    .registers 1

    .line 1097
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public getLastChild()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .registers 4

    .line 1078
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4f

    .line 1079
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    .line 1080
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1082
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".NotificationGroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " last child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    return-object p0

    :cond_4f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummaryNotification()Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;
    .registers 1

    .line 1094
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mSumaaryNotification:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    return-object p0
.end method

.method public putChild(Ljava/lang/String;Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V
    .registers 7

    .line 1062
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1063
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1064
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

    const-string v3, "Remove previous child data. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    :cond_39
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public removeChild(Ljava/lang/String;)V
    .registers 3

    .line 1056
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1057
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setSummaryNotification(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;)V
    .registers 2

    .line 1091
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mSumaaryNotification:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "summary : "

    .line 1103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mSumaaryNotification:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$NotificationData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , child : "

    .line 1105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1106
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1107
    :cond_28
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1108
    :try_start_2b
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->mChildMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1109
    :goto_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1110
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 1113
    :cond_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_2b .. :try_end_6f} :catchall_79

    :cond_6f
    const-string p0, " } "

    .line 1115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_79
    move-exception p0

    .line 1113
    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw p0
.end method
