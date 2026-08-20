.class public Lcom/android/server/notification/NotificationManagerService$Archive;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Archive"
.end annotation


# instance fields
.field public final mBuffer:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBufferLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mBufferLock:Ljava/lang/Object;

.field public final mBufferSize:I

.field public final mEnabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ykV5XJKDiXqatyXXwRI4uzC8KeM(Landroid/os/UserManager;Ljava/util/ArrayList;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService$Archive;->lambda$getArray$0(Landroid/os/UserManager;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    .line 795
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    .line 796
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    .line 797
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mEnabled:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic lambda$getArray$0(Landroid/os/UserManager;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 834
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p0

    array-length v0, p0

    :goto_a
    if-ge v1, v0, :cond_18

    aget v2, p0, v1

    .line 835
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method


# virtual methods
.method public descendingIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/util/Pair<",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 827
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 8

    .line 890
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    .line 893
    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 894
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    if-eqz p2, :cond_21

    .line 895
    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_8

    .line 896
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_8

    .line 898
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_45

    const-string p0, "    ..."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    :cond_45
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public getArray(Landroid/os/UserManager;IZ)[Landroid/service/notification/StatusBarNotification;
    .registers 10

    .line 831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 832
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$Archive$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/android/server/notification/NotificationManagerService$Archive$$ExternalSyntheticLambda0;-><init>(Landroid/os/UserManager;Ljava/util/ArrayList;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 838
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    monitor-enter p1

    if-nez p2, :cond_1c

    .line 839
    :try_start_1a
    iget p2, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    .line 840
    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 841
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    .line 843
    :cond_26
    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    if-ge v2, p2, :cond_5e

    .line 844
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 845
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_42

    if-eqz p3, :cond_26

    .line 846
    :cond_42
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    add-int/lit8 v2, v2, 0x1

    .line 848
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/service/notification/StatusBarNotification;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 852
    :cond_5e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/service/notification/StatusBarNotification;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/service/notification/StatusBarNotification;

    monitor-exit p1

    return-object p0

    :catchall_6c
    move-exception p0

    .line 853
    monitor-exit p1
    :try_end_6e
    .catchall {:try_start_1a .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public record(Landroid/service/notification/StatusBarNotification;I)V
    .registers 6

    .line 811
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mEnabled:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 814
    :cond_15
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_18
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferSize:I

    if-ne v1, v2, :cond_27

    .line 816
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 822
    :cond_27
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 823
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public removeChannelNotifications(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 873
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 874
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    .line 875
    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 876
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 877
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_7

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 878
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v2

    if-ne p2, v2, :cond_7

    if-eqz p1, :cond_7

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 879
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 880
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 882
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-static {p3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 883
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 886
    :cond_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const-string v1, "Archive ("

    .line 803
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " notification"

    .line 805
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1e

    const-string p0, ")"

    goto :goto_21

    :cond_1e
    const-string/jumbo p0, "s)"

    .line 806
    :goto_21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateHistoryEnabled(IZ)V
    .registers 5

    .line 857
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mEnabled:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez p2, :cond_37

    .line 860
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBufferLock:Ljava/lang/Object;

    monitor-enter p2

    .line 861
    :try_start_e
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_16
    if-ltz v0, :cond_32

    .line 862
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v1

    if-ne p1, v1, :cond_2f

    .line 863
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$Archive;->mBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 866
    :cond_32
    monitor-exit p2

    goto :goto_37

    :catchall_34
    move-exception p0

    monitor-exit p2
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_34

    throw p0

    :cond_37
    :goto_37
    return-void
.end method
