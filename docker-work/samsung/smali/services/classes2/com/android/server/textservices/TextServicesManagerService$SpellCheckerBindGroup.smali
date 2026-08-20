.class public final Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textservices/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SpellCheckerBindGroup"
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mConnected:Z

.field public final mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

.field public final mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

.field public final mOnGoingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingSessionRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field public mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field public mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field public mUnbindCalled:Z

.field public final synthetic this$0:Lcom/android/server/textservices/TextServicesManagerService;


# direct methods
.method public static synthetic $r8$lambda$EWpFyLARZe2xkcOgvqi6wCezeu0(Landroid/os/IBinder;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->lambda$removeListener$0(Landroid/os/IBinder;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnected(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInternalConnection(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnGoingSessionRequests(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingSessionRequests(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpellChecker(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/internal/textservice/ISpellCheckerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUnbindCalled(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)V
    .registers 3

    .line 809
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    const-class p1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    .line 803
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    .line 804
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    .line 810
    iput-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 811
    new-instance p1, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-direct {p1, p0}, Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;)V

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    .line 812
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->-$$Nest$fgetmSpellCheckerBindGroups(Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic lambda$removeListener$0(Landroid/os/IBinder;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)Z
    .registers 2

    .line 861
    iget-object p1, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public final cleanLocked()V
    .registers 3

    .line 873
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    return-void

    .line 877
    :cond_5
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_e

    return-void

    .line 880
    :cond_e
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    .line 883
    :cond_17
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    .line 886
    :cond_20
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;->-$$Nest$fgetmSciId(Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    if-ne v1, p0, :cond_35

    .line 892
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    :cond_35
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->-$$Nest$fgetmContext(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x1

    .line 895
    iput-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    return-void
.end method

.method public getISpellCheckerSessionOrQueueLocked(Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .registers 8

    .line 910
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    return-void

    .line 913
    :cond_5
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    iget-object v1, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 914
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    if-nez v0, :cond_16

    .line 915
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 919
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v1, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v3, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    iget v4, p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mSupportedAttributes:I

    new-instance v5, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v5, p0, p1}, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;ILcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 923
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2d} :catch_2e

    goto :goto_31

    .line 926
    :catch_2e
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 928
    :goto_31
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    return-void
.end method

.method public onServiceConnectedLocked(Lcom/android/internal/textservice/ISpellCheckerService;)V
    .registers 10

    .line 820
    iget-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v0, :cond_5

    return-void

    .line 823
    :cond_5
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    const/4 p1, 0x1

    .line 824
    iput-boolean p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 827
    :try_start_a
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, p1, :cond_35

    .line 829
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    .line 830
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    iget-object v3, v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mLocale:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v5, v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mBundle:Landroid/os/Bundle;

    iget v6, v1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mSupportedAttributes:I

    new-instance v7, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;

    invoke-direct {v7, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;-><init>(Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;ILcom/android/internal/textservice/ISpellCheckerServiceCallback;)V

    .line 834
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 836
    :cond_35
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3a} :catch_3b

    goto :goto_3e

    .line 839
    :catch_3b
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 841
    :goto_3e
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    return-void
.end method

.method public onServiceDisconnectedLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 849
    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    const/4 v0, 0x0

    .line 850
    iput-boolean v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    return-void
.end method

.method public onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V
    .registers 5

    .line 933
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 934
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mUnbindCalled:Z

    if-eqz v1, :cond_d

    .line 935
    monitor-exit v0

    return-void

    .line 937
    :cond_d
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1f

    if-eqz v1, :cond_1a

    .line 939
    :try_start_15
    iget-object p2, p2, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-interface {p2, p1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1f

    .line 947
    :catch_1a
    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 948
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public removeAllLocked()V
    .registers 4

    .line 899
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string v1, "Remove the spell checker bind unexpectedly."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_1f

    .line 902
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 904
    :cond_1f
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 905
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 906
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    return-void
.end method

.method public removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 4

    .line 857
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/textservices/TextServicesManagerService;

    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService;->-$$Nest$fgetmLock(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 858
    :try_start_7
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 859
    invoke-interface {p1}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 860
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;)V

    .line 862
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mPendingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 863
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->mOnGoingSessionRequests:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 864
    invoke-virtual {p0}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 865
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p0
.end method
