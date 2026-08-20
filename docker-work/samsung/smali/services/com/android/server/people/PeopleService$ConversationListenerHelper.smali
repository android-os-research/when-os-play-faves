.class public Lcom/android/server/people/PeopleService$ConversationListenerHelper;
.super Ljava/lang/Object;
.source "PeopleService.java"

# interfaces
.implements Lcom/android/server/people/PeopleService$ConversationsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/PeopleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationListenerHelper"
.end annotation


# instance fields
.field public final mListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/people/IConversationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public declared-synchronized addConversationListener(Lcom/android/server/people/PeopleService$ListenerKey;Landroid/app/people/IConversationListener;)V
    .registers 4

    monitor-enter p0

    .line 321
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 322
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 323
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getListenerKey(Landroid/app/people/ConversationChannel;)Lcom/android/server/people/PeopleService$ListenerKey;
    .registers 4

    .line 360
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    .line 361
    new-instance p1, Lcom/android/server/people/PeopleService$ListenerKey;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 362
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/android/server/people/PeopleService$ListenerKey;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p1
.end method

.method public onConversationsUpdate(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationChannel;",
            ">;)V"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 339
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 340
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/people/ConversationChannel;

    .line 341
    invoke-virtual {p0, v2}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->getListenerKey(Landroid/app/people/ConversationChannel;)Lcom/android/server/people/PeopleService$ListenerKey;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_26
    const/4 p1, 0x0

    :goto_27
    if-ge p1, v0, :cond_4c

    .line 344
    iget-object v2, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/PeopleService$ListenerKey;

    .line 345
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_49

    .line 348
    :cond_38
    iget-object v3, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/people/IConversationListener;

    .line 350
    :try_start_40
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/people/ConversationChannel;

    .line 351
    invoke-interface {v3, v2}, Landroid/app/people/IConversationListener;->onConversationUpdate(Landroid/app/people/ConversationChannel;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_49} :catch_49

    :catch_49
    :goto_49
    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    .line 356
    :cond_4c
    iget-object p0, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public declared-synchronized removeConversationListener(Landroid/app/people/IConversationListener;)V
    .registers 3

    monitor-enter p0

    .line 328
    :try_start_1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 329
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
