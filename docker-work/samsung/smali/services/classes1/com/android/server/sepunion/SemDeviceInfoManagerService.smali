.class public Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.super Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;
.source "SemDeviceInfoManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;
.implements Lcom/android/server/sepunion/AbsSemSystemServiceForS;


# static fields
.field public static final BUNDLE_KEY_FOR_ALL_USERS:Ljava/lang/String; = "for_all_users"

.field public static final BUNDLE_KEY_INTENT_ACTION:Ljava/lang/String; = "intent_action"

.field public static final BUNDLE_KEY_IS_REGISTER:Ljava/lang/String; = "is_register"

.field public static final BUNDLE_KEY_NOTIFY_FOR_DESCENDANTS:Ljava/lang/String; = "notify_for_descendants"

.field public static final BUNDLE_KEY_URI:Ljava/lang/String; = "uri"

.field public static final BUNDLE_KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final DEBUG:Z = false

.field public static final SEPERATOR:Ljava/lang/String; = ";"

.field public static final SHIPPED:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

.field public final mListenerContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/sepunion/eventdelegator/ListenerContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mTestModeCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

.field public final mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 64
    const-class v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    .line 74
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->SHIPPED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IDeviceInfoManager$Stub;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    .line 1108
    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService$1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    .line 83
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string v1, "SemDeviceInfoManagerService"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemEventDelegationHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 89
    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    invoke-direct {v0, p1, v1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    return-void
.end method


# virtual methods
.method public final clearEventListenersAsUser(I)V
    .registers 7

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearEventListenersAsUser() for User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v2

    if-nez v2, :cond_38

    .line 721
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No listener container registered for User "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    monitor-exit v0

    return-void

    .line 724
    :cond_38
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 725
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 726
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "user_id"

    .line 727
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "intent_action"

    .line 728
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "is_register"

    const/4 v4, 0x0

    .line 729
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 730
    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    goto :goto_47

    .line 732
    :cond_72
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->removeListenerContainer(I)V

    .line 733
    monitor-exit v0

    return-void

    :catchall_77
    move-exception p0

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_1c .. :try_end_79} :catchall_77

    throw p0
.end method

.method public clearPendingIntentAsUser(Ljava/lang/String;I)V
    .registers 12

    const-string v0, "clearPendingIntentAsUser"

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPendingIntentAsUser() callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 745
    :try_start_29
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 747
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 748
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 749
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 751
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_52
    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 752
    iget-object v7, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 753
    invoke-virtual {v7, p1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->clear(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 754
    invoke-virtual {v7}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_90

    .line 755
    iget-object v7, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "uri"

    .line 758
    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v5, "is_register"

    .line 759
    invoke-virtual {v7, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 760
    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    goto :goto_52

    .line 762
    :cond_90
    iget-object v6, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 767
    :cond_96
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9a
    :goto_9a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 768
    iget-object v5, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 769
    invoke-virtual {v5, p1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->clear(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9a

    .line 770
    invoke-virtual {v5}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_dd

    .line 771
    iget-object v5, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "user_id"

    .line 774
    invoke-virtual {v5, v7, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "intent_action"

    .line 775
    invoke-virtual {v5, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "is_register"

    .line 776
    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 777
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v5}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    goto :goto_9a

    .line 779
    :cond_dd
    iget-object v7, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 784
    :cond_e3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e7
    :goto_e7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_113

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 785
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 786
    invoke-virtual {v2, p1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->clear(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 787
    invoke-virtual {v2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 788
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e7

    .line 790
    :cond_10d
    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e7

    .line 794
    :cond_113
    monitor-exit v0

    return-void

    :catchall_115
    move-exception p0

    monitor-exit v0
    :try_end_117
    .catchall {:try_start_29 .. :try_end_117} :catchall_115

    throw p0
.end method

.method public final containsAnyPermission(Ljava/util/ArrayList;Ljava/lang/String;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    const/4 p3, 0x0

    if-eqz p1, :cond_26

    if-nez p2, :cond_6

    goto :goto_26

    .line 242
    :cond_6
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 243
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, p3

    :goto_11
    if-ge v1, v0, :cond_26

    .line 245
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 247
    invoke-virtual {p0, v2, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_26
    :goto_26
    return p3
.end method

.method public final containsPackageName(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 228
    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 224
    :cond_a
    :goto_a
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "containsPackageName() packageNameList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", packageName = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 1012
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_bc

    .line 1013
    :try_start_6
    array-length v2, p3

    const/4 v3, 0x1

    if-le v2, v3, :cond_bc

    .line 1014
    sget-boolean v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->SHIPPED:Z

    if-eqz v2, :cond_17

    .line 1015
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Device is not in DEV mode."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_259

    .line 1017
    :cond_17
    aget-object v2, p3, v1

    const-string/jumbo v4, "testmode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1018
    aget-object p1, p3, v3

    const-string/jumbo v2, "on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 1019
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->setTestMode(I)V

    goto/16 :goto_259

    .line 1020
    :cond_34
    aget-object p1, p3, v3

    const-string/jumbo p3, "off"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 1021
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mTestModeUtils:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->setTestMode(I)V

    goto/16 :goto_259

    :cond_46
    const-string p0, "Parameter error!"

    .line 1023
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_259

    .line 1025
    :cond_4d
    aget-object v2, p3, v1

    const-string/jumbo v4, "uri"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1026
    array-length v1, p3

    invoke-static {p3, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->testVerifyNumUri(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_259

    .line 1027
    :cond_64
    aget-object v2, p3, v1

    const-string/jumbo v4, "intent"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1028
    array-length v1, p3

    invoke-static {p3, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->testVerifyNumIntent(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_259

    .line 1029
    :cond_7b
    aget-object v2, p3, v1

    const-string v4, "custom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 1030
    array-length v1, p3

    invoke-static {p3, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->testVerifyNumCustom(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_259

    .line 1031
    :cond_91
    aget-object v2, p3, v1

    const-string/jumbo v4, "pending_intents"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 1032
    aget-object p3, p3, v3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->printNumberOfPendingIntents(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_259

    .line 1033
    :cond_a3
    aget-object v1, p3, v1

    const-string/jumbo v2, "num_observers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 1034
    aget-object p3, p3, v3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->printNumberOfContentObservers(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_259

    :cond_b5
    const-string p0, "Parameter error!"

    .line 1036
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_259

    :cond_bc
    const-string v2, "\n##### SEM DEVICE INFO MANAGER SERVICE #####\n##### (dumpsys sepunion semeventdelegator) #####\n"

    .line 1040
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    iget-object v2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener containers(Users: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_e0
    if-ge v1, v2, :cond_254

    .line 1045
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1046
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Listener container for User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    if-eqz v3, :cond_250

    .line 1050
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_178

    .line 1051
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_178

    .line 1052
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Custom Event Map(registered event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13a
    :goto_13a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_173

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1054
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      Event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v5, :cond_13a

    const-string v6, "      "

    .line 1057
    invoke-virtual {v5, v6}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13a

    :cond_173
    const-string v4, ""

    .line 1060
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    :cond_178
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_1e5

    .line 1064
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_1e5

    .line 1065
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Intent Action Map(registered action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a7
    :goto_1a7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1067
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      Action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v5, :cond_1a7

    const-string v6, "      "

    .line 1070
    invoke-virtual {v5, v6}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a7

    :cond_1e0
    const-string v4, ""

    .line 1073
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    :cond_1e5
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_24d

    .line 1077
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_24d

    .line 1078
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    URI Event Map(registered uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_214
    :goto_214
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1080
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      Uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    iget-object v6, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v5, :cond_214

    const-string v6, "      "

    .line 1083
    invoke-virtual {v5, v6}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->toStringForDump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_214

    .line 1087
    :cond_24d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_250
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e0

    .line 1091
    :cond_254
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sepunion/Log;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1093
    :goto_259
    monitor-exit v0

    return-void

    :catchall_25b
    move-exception p0

    monitor-exit v0
    :try_end_25d
    .catchall {:try_start_6 .. :try_end_25d} :catchall_25b

    throw p0
.end method

.method public final enforeCallingPermission(Ljava/lang/String;)V
    .registers 4

    .line 930
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 931
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_13

    return-void

    .line 935
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denied: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callingUid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", you need system uid of to be signed with the system certificate."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 937
    sget-object p1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getCustomEventKeys(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 866
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 868
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_dd

    const-string/jumbo v0, "monitor_call_state"

    .line 869
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 870
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e4

    :cond_19
    const-string/jumbo v0, "monitor_activity_state"

    .line 871
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "component_list"

    .line 872
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_60

    .line 874
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "monitor_activity_state;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 876
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 879
    :cond_60
    sget-object p2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CUSTOM_EVENT_ACTIVITY_STATE] listToMonitor = null. event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    :cond_77
    const-string/jumbo v0, "monitor_package_state"

    .line 881
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    const-string/jumbo v0, "package_list"

    .line 882
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_af

    .line 884
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "monitor_package_state;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 886
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    .line 889
    :cond_af
    sget-object p2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CUSTOM_EVENT_PACKAGE_STATE] listToMonitor = null. event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 892
    :cond_c6
    sget-object p2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This custom event is not supported yet. event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 895
    :cond_dd
    sget-object p1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string p2, "getCustomEventKey() event is null!"

    invoke-static {p1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    :goto_e4
    return-object p0
.end method

.method public final getCustomEventMessageId(Ljava/lang/String;Z)I
    .registers 4

    .line 902
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, -0x1

    if-nez p0, :cond_35

    const-string/jumbo p0, "monitor_call_state"

    .line 903
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    if-eqz p2, :cond_14

    const/4 p0, 0x3

    return p0

    :cond_14
    const/4 p0, 0x4

    return p0

    :cond_16
    const-string/jumbo p0, "monitor_package_state"

    .line 909
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    if-eqz p2, :cond_23

    const/4 p0, 0x7

    return p0

    :cond_23
    const/16 p0, 0x8

    return p0

    :cond_26
    const-string/jumbo p0, "monitor_activity_state"

    .line 915
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_35

    if-eqz p2, :cond_33

    const/4 p0, 0x5

    return p0

    :cond_33
    const/4 p0, 0x6

    return p0

    :cond_35
    return v0
.end method

.method public getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .registers 2

    .line 122
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p0

    return-object p0
.end method

.method public getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    if-nez v1, :cond_17

    .line 129
    new-instance v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    invoke-direct {v1, p1}, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;-><init>(I)V

    .line 130
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    :cond_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception p0

    .line 133
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public getNumPendingIntentAsUser(ILjava/lang/String;I)I
    .registers 9

    const-string v0, "getNumPendingIntentAsUser"

    .line 799
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p0

    .line 807
    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_43

    .line 808
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_43

    .line 809
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v1, v0

    :cond_1d
    :goto_1d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 810
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v2, :cond_1d

    .line 812
    iget-object v2, v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 813
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 815
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1d

    :cond_43
    move v1, v0

    .line 821
    :cond_44
    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_7d

    .line 822
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_7d

    .line 823
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move v2, v0

    :cond_57
    :goto_57
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 824
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v3, :cond_57

    .line 826
    iget-object v3, v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 827
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_57

    .line 829
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_57

    :cond_7d
    move v2, v0

    .line 835
    :cond_7e
    iget-object p3, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_b6

    .line 836
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_b6

    .line 837
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_90
    :goto_90
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 838
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v3, :cond_90

    .line 840
    iget-object v3, v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 841
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_90

    .line 843
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_90

    :cond_b6
    if-eqz p1, :cond_dc

    const/4 p0, 0x1

    if-eq p1, p0, :cond_db

    const/4 p0, 0x2

    if-eq p1, p0, :cond_da

    const/4 p0, 0x3

    if-eq p1, p0, :cond_d9

    .line 859
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getNumPendingIntent(): Invalid type request. Requested type = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_d9
    return v1

    :cond_da
    return v2

    :cond_db
    return v0

    :cond_dc
    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTag(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 3

    .line 942
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_15

    .line 945
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_15

    const-string/jumbo v0, "tag"

    .line 947
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_15
    return-object p1
.end method

.method public onBootPhase(I)V
    .registers 2

    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 104
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public onUserStarting(I)V
    .registers 2

    return-void
.end method

.method public onUserStopped(I)V
    .registers 2

    return-void
.end method

.method public onUserStopping(I)V
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->clearEventListenersAsUser(I)V

    return-void
.end method

.method public onUserSwitching(II)V
    .registers 3

    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 2

    return-void
.end method

.method public onUserUnlocking(I)V
    .registers 2

    return-void
.end method

.method public final printNumberOfContentObservers(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 955
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 957
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_23
    return-void
.end method

.method public final printNumberOfPendingIntents(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 963
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p0

    .line 965
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 966
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 967
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 968
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v1, :cond_17

    .line 970
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_17

    .line 972
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_17

    .line 978
    :cond_3d
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 979
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_75

    .line 980
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4f
    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 981
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v1, :cond_4f

    .line 983
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_4f

    .line 985
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4f

    .line 991
    :cond_75
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_ad

    .line 992
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_ad

    .line 993
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_87
    :goto_87
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 994
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v1, :cond_87

    .line 996
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_87

    .line 998
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_87

    .line 1004
    :cond_ad
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public registerPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string/jumbo v0, "registerPendingIntent"

    .line 434
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 435
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;IZ)V

    return-void
.end method

.method public registerPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 13

    if-nez p1, :cond_b

    .line 514
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerPendingIntentForCustomEventAsUser() event is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    if-nez p2, :cond_16

    .line 518
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerPendingIntentForCustomEventAsUser() pendingIntent is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    if-nez p3, :cond_47

    const-string/jumbo v0, "monitor_activity_state"

    .line 522
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 523
    :cond_2a
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "registerPendingIntentForCustomEventAsUser() "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no Bundle. It is ignored."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    const-string/jumbo v0, "registerPendingIntentForCustomEventAsUser"

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerPendingIntentForCustomEventAsUser() event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0, p1, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventKeys(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 535
    :try_start_82
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p5

    .line 536
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    iget-object v3, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 538
    iget-object v3, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 539
    invoke-virtual {v3, p4, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 540
    iget-object v4, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    :cond_af
    const/4 v3, 0x0

    .line 543
    iget-object v4, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 544
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_ba
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_ce

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 545
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    move v3, v6

    :cond_ce
    if-nez v3, :cond_d9

    .line 552
    invoke-virtual {p0, p1, v6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    move-result v3

    .line 553
    iget-object v4, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-virtual {v4, v3, p3}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 556
    :cond_d9
    new-instance v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-direct {v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    .line 557
    invoke-virtual {v3, p4, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 558
    iget-object v4, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8a

    .line 561
    :cond_e7
    monitor-exit v1

    return-void

    :catchall_e9
    move-exception p0

    monitor-exit v1
    :try_end_eb
    .catchall {:try_start_82 .. :try_end_eb} :catchall_e9

    throw p0
.end method

.method public registerPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 14

    const-string/jumbo v0, "registerPendingIntentForIntentAsUser"

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    .line 427
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;IZ)V

    return-void
.end method

.method public registerPendingIntentForIntentForAllUsers(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 14

    const-string/jumbo v0, "registerPendingIntentForIntentForAllUsers"

    .line 506
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move v7, p4

    .line 507
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;IZ)V

    return-void
.end method

.method public registerPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 8

    if-nez p1, :cond_b

    .line 388
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerPendingIntentForUriAsUser() uri is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    if-nez p2, :cond_16

    .line 392
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerPendingIntentForUriAsUser() pendingIntent is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const-string/jumbo v0, "registerPendingIntentForUriAsUser"

    .line 395
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerPendingIntentForUriAsUser() uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_59
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p4

    .line 404
    iget-object v1, p4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 405
    iget-object p0, p4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 406
    invoke-virtual {p0, p3, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 407
    iget-object p2, p4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ac

    .line 409
    :cond_76
    new-instance v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-direct {v1}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    .line 410
    invoke-virtual {v1, p3, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 411
    iget-object p3, p4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p4, "uri"

    .line 414
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "is_register"

    const/4 p4, 0x1

    .line 415
    invoke-virtual {p3, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "notify_for_descendants"

    .line 417
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string/jumbo v1, "notify_for_descendants"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 416
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 418
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-virtual {p0, p4, p3}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 420
    :goto_ac
    monitor-exit v0

    return-void

    :catchall_ae
    move-exception p0

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_59 .. :try_end_b0} :catchall_ae

    throw p0
.end method

.method public final registerPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;ILjava/util/List;Ljava/lang/String;IZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    if-nez p1, :cond_b

    .line 442
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerPendingIntentInternal() filter is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    if-nez p2, :cond_16

    .line 446
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerPendingIntentInternal() pendingIntent is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 449
    :cond_16
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-gtz v0, :cond_25

    .line 451
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "registerPendingIntentInternal() filter has no action. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    if-eqz p3, :cond_48

    and-int/lit8 v1, p3, 0x3

    if-nez v1, :cond_48

    .line 455
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "registerPendingIntentInternal() flag:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not supported."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 459
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_4f
    if-ge v3, v0, :cond_6c

    .line 461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 463
    :cond_6c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerPendingIntentInternal() action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "callingPackage = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flag = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", conditions = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    sget-object v3, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {v3, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_ad
    invoke-virtual {p0, p6}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v3

    .line 471
    new-instance v4, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    if-nez p3, :cond_b7

    const/4 p4, 0x0

    goto :goto_bd

    .line 472
    :cond_b7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p4, v5

    :goto_bd
    invoke-direct {v4, p2, p3, p4}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;-><init>(Landroid/app/PendingIntent;ILjava/util/ArrayList;)V

    :goto_c0
    if-ge v2, v0, :cond_114

    .line 474
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object p2

    .line 475
    iget-object p3, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_df

    .line 479
    iget-object p3, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 480
    invoke-virtual {p3, p5, v4}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    .line 481
    iget-object p4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_111

    .line 486
    :cond_df
    new-instance p3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    invoke-direct {p3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;-><init>()V

    .line 487
    invoke-virtual {p3, p5, v4}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->add(Ljava/lang/String;Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;)Z

    .line 488
    iget-object p4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p4, "user_id"

    .line 491
    invoke-virtual {p3, p4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p4, "intent_action"

    .line 492
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "is_register"

    const/4 p4, 0x1

    .line 493
    invoke-virtual {p3, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p7, :cond_10b

    const-string p2, "for_all_users"

    .line 495
    invoke-virtual {p3, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 497
    :cond_10b
    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 p4, 0x2

    invoke-virtual {p2, p4, p3}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    :goto_111
    add-int/lit8 v2, v2, 0x1

    goto :goto_c0

    .line 500
    :cond_114
    monitor-exit v1

    return-void

    :catchall_116
    move-exception p0

    monitor-exit v1
    :try_end_118
    .catchall {:try_start_ad .. :try_end_118} :catchall_116

    throw p0
.end method

.method public final removeListenerContainer(I)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mListenerContainers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 139
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public reportCallStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ILjava/lang/String;)V
    .registers 14

    if-eqz p1, :cond_80

    .line 329
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_5
    iget-object v1, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 331
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 332
    iget-object v3, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 333
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    const/4 v6, 0x0

    .line 335
    invoke-virtual {v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 336
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v4, "call_state"

    .line 337
    invoke-virtual {v7, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "phone_number"

    .line 338
    invoke-virtual {v7, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_7d

    .line 340
    :try_start_47
    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportCallStateChanged() state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    sget-object v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_47 .. :try_end_75} :catch_76
    .catchall {:try_start_47 .. :try_end_75} :catchall_7d

    goto :goto_27

    :catch_76
    move-exception v3

    .line 346
    :try_start_77
    invoke-virtual {v3}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_27

    .line 350
    :cond_7b
    monitor-exit v0

    goto :goto_88

    :catchall_7d
    move-exception p0

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_7d

    throw p0

    .line 352
    :cond_80
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "reportCallStateChanged(). No UnionEventListenerItem to report!"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    return-void
.end method

.method public reportComponentStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/ComponentName;Z)V
    .registers 14

    if-eqz p1, :cond_80

    .line 300
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_5
    iget-object v1, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 302
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 303
    iget-object v3, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 304
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    const/4 v6, 0x0

    .line 306
    invoke-virtual {v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 307
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v4, "component"

    .line 308
    invoke-virtual {v7, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "is_resumed"

    .line 309
    invoke-virtual {v7, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_7d

    .line 311
    :try_start_47
    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportComponentStateChanged() componentName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    sget-object v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_47 .. :try_end_75} :catch_76
    .catchall {:try_start_47 .. :try_end_75} :catchall_7d

    goto :goto_27

    :catch_76
    move-exception v3

    .line 317
    :try_start_77
    invoke-virtual {v3}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_27

    .line 321
    :cond_7b
    monitor-exit v0

    goto :goto_88

    :catchall_7d
    move-exception p0

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_7d

    throw p0

    .line 323
    :cond_80
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "reportComponentStateChanged(). No UnionEventListenerItem to report!"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    return-void
.end method

.method public reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    if-eqz p1, :cond_81

    .line 358
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_5
    iget-object v1, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 360
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 361
    iget-object v3, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 362
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    const/4 v6, 0x0

    .line 364
    invoke-virtual {v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    .line 365
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v4, "package_name"

    .line 366
    invoke-virtual {v7, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "package_state"

    .line 367
    invoke-virtual {v7, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_7e

    .line 369
    :try_start_48
    iget-object v5, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportPackageStateChanged() package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    sget-object v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_48 .. :try_end_76} :catch_77
    .catchall {:try_start_48 .. :try_end_76} :catchall_7e

    goto :goto_27

    :catch_77
    move-exception v3

    .line 375
    :try_start_78
    invoke-virtual {v3}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_27

    .line 379
    :cond_7c
    monitor-exit v0

    goto :goto_89

    :catchall_7e
    move-exception p0

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_7e

    throw p0

    .line 381
    :cond_81
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "reportPackageStateChanged(). No UnionEventListenerItem to report!"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_89
    return-void
.end method

.method public reportUriChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ZLandroid/net/Uri;IZ)V
    .registers 14

    if-eqz p1, :cond_96

    .line 260
    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 261
    :try_start_5
    iget-object p4, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p4

    .line 262
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_f
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    iget-object v1, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 264
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 266
    invoke-virtual {v1}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v2, "uri"

    .line 268
    invoke-virtual {v5, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz p5, :cond_4b

    const-string/jumbo v3, "notify_for_descendants"

    .line 271
    invoke-virtual {v5, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_93

    :cond_4b
    if-nez v2, :cond_4f

    if-nez p5, :cond_27

    :cond_4f
    const/4 v4, 0x0

    if-eqz v2, :cond_59

    .line 278
    :try_start_52
    sget-object v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Notifying descendants changes."

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_59
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportUriChanged() uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    sget-object v2, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {v2, v1}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_52 .. :try_end_8b} :catch_8c
    .catchall {:try_start_52 .. :try_end_8b} :catchall_93

    goto :goto_27

    :catch_8c
    move-exception v1

    .line 287
    :try_start_8d
    invoke-virtual {v1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_27

    .line 292
    :cond_91
    monitor-exit p2

    goto :goto_9e

    :catchall_93
    move-exception p0

    monitor-exit p2
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_93

    throw p0

    .line 294
    :cond_96
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "reportUriChanged(). No UnionEventListenerItem to report!"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9e
    return-void
.end method

.method public sendIntentAction(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/Intent;I)V
    .registers 16

    if-nez p1, :cond_a

    .line 144
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string p1, "UnionEventListenerItem is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 147
    :cond_a
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_d
    iget-object v1, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 149
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_109

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 153
    sget-object v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data cleared package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", key = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 158
    :cond_5c
    iget-object v3, p1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->mUnionEventComponentsWithConditions:Ljava/util/HashMap;

    .line 159
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;

    .line 162
    invoke-virtual {v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getFlag()I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7c

    goto :goto_a4

    :cond_7c
    if-ne v4, v5, :cond_8f

    .line 171
    invoke-virtual {v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getConditions()Ljava/util/ArrayList;

    move-result-object v4

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-virtual {p0, v4, v5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->containsPackageName(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    goto :goto_a4

    :cond_8f
    const/4 v5, 0x2

    if-ne v4, v5, :cond_a3

    .line 175
    invoke-virtual {v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getConditions()Ljava/util/ArrayList;

    move-result-object v4

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-virtual {p0, v4, v5, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->containsAnyPermission(Ljava/util/ArrayList;Ljava/lang/String;I)Z

    move-result v5

    goto :goto_a4

    :cond_a3
    const/4 v5, 0x0

    :goto_a4
    if-nez v5, :cond_a7

    goto :goto_68

    .line 189
    :cond_a7
    invoke-virtual {v3}, Lcom/android/server/sepunion/eventdelegator/PendingIntentWithConditions;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_ab
    .catchall {:try_start_d .. :try_end_ab} :catchall_10b

    .line 192
    :try_start_ab
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 193
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 195
    invoke-virtual {v9, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v4, "action_origin"

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v7, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendIntentAction() action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getTag(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    sget-object v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catch Ljava/lang/NullPointerException; {:try_start_ab .. :try_end_101} :catch_103
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_ab .. :try_end_101} :catch_103
    .catchall {:try_start_ab .. :try_end_101} :catchall_10b

    goto/16 :goto_68

    :catch_103
    move-exception v3

    .line 211
    :try_start_104
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_68

    .line 215
    :cond_109
    monitor-exit v0

    return-void

    :catchall_10b
    move-exception p0

    monitor-exit v0
    :try_end_10d
    .catchall {:try_start_104 .. :try_end_10d} :catchall_10b

    throw p0
.end method

.method public final testVerifyNumCustom(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final testVerifyNumIntent(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public final testVerifyNumUri(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public unregisterPendingIntent(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 6

    const-string/jumbo v0, "unregisterPendingIntent"

    .line 604
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method

.method public unregisterPendingIntentForCustomEventAsUser(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;I)V
    .registers 12

    if-nez p1, :cond_b

    .line 671
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterPendingIntentForCustomEventAsUser() event is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    if-nez p2, :cond_16

    .line 675
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterPendingIntentForCustomEventAsUser() pendingIntent is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    if-nez p3, :cond_47

    const-string/jumbo v0, "monitor_activity_state"

    .line 679
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string/jumbo v0, "monitor_package_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 680
    :cond_2a
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unregisterPendingIntentForCustomEventAsUser() "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no Bundle. It is ignored."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    const-string/jumbo v0, "unregisterPendingIntentForCustomEventAsUser"

    .line 683
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterPendingIntentForCustomEventAsUser() event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0, p1, p3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventKeys(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    .line 691
    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 692
    :try_start_76
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p5

    .line 693
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 694
    iget-object v3, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v3, :cond_b3

    .line 696
    invoke-virtual {v3, p4, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 697
    invoke-virtual {v3}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 698
    iget-object v3, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 699
    invoke-virtual {p0, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getCustomEventMessageId(Ljava/lang/String;Z)I

    move-result v2

    .line 700
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-virtual {v3, v2, p3}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    goto :goto_7e

    .line 702
    :cond_ad
    iget-object v4, p5, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    .line 705
    :cond_b3
    sget-object v3, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "item for key \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is null"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 708
    :cond_d0
    monitor-exit v1

    return-void

    :catchall_d2
    move-exception p0

    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_76 .. :try_end_d4} :catchall_d2

    throw p0
.end method

.method public unregisterPendingIntentForIntentAsUser(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 6

    const-string/jumbo v0, "unregisterPendingIntentForIntentAsUser"

    .line 611
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method

.method public unregisterPendingIntentForUriAsUser(Landroid/net/Uri;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 8

    if-nez p1, :cond_b

    .line 567
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterPendingIntentForUriAsUser() uri is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    if-nez p2, :cond_16

    .line 571
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterPendingIntentForUriAsUser() pendingIntent is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const-string/jumbo v0, "unregisterPendingIntentForUriAsUser"

    .line 574
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterPendingIntentForUriAsUser() uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_45
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object p4

    .line 582
    iget-object v2, p4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-eqz v2, :cond_80

    .line 584
    invoke-virtual {v2, p3, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 585
    invoke-virtual {v2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7a

    .line 586
    iget-object p2, p4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p3, "uri"

    .line 589
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "is_register"

    const/4 p3, 0x0

    .line 590
    invoke-virtual {p2, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 591
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    goto :goto_9a

    .line 593
    :cond_7a
    iget-object p0, p4, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9a

    .line 596
    :cond_80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "item for uri \""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\" is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_9a
    monitor-exit v0

    return-void

    :catchall_9c
    move-exception p0

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_45 .. :try_end_9e} :catchall_9c

    throw p0
.end method

.method public final unregisterPendingIntentInternal(Landroid/content/IntentFilter;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .registers 12

    if-nez p1, :cond_b

    .line 618
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterPendingIntentInternal() filter is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    if-nez p2, :cond_16

    .line 622
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unregisterPendingIntentInternal() pendingIntent is null. It is ignored."

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 626
    :cond_16
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_21
    if-ge v3, v0, :cond_3e

    .line 629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 631
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterPendingIntentForIntentAsUser() action = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    sget-object v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-static {v1, v0}, Lcom/samsung/android/sepunion/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_6f
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 639
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p1

    if-nez p1, :cond_7b

    .line 642
    monitor-exit v0

    return-void

    .line 645
    :cond_7b
    :goto_7b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 646
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 647
    iget-object v4, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    if-nez v4, :cond_ae

    .line 649
    sget-object v4, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "item for key \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" is null"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 653
    :cond_ae
    invoke-virtual {v4, p3, p2}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->remove(Ljava/lang/String;Landroid/app/PendingIntent;)Z

    .line 654
    invoke-virtual {v4}, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_da

    .line 655
    iget-object v4, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "user_id"

    .line 657
    invoke-virtual {v4, v5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "intent_action"

    .line 658
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "is_register"

    .line 659
    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 660
    iget-object v3, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mHandler:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    goto :goto_7b

    .line 662
    :cond_da
    iget-object v5, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    .line 665
    :cond_e0
    monitor-exit v0

    return-void

    :catchall_e2
    move-exception p0

    monitor-exit v0
    :try_end_e4
    .catchall {:try_start_6f .. :try_end_e4} :catchall_e2

    throw p0
.end method
