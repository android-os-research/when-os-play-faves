.class public Lcom/android/server/people/PeopleService;
.super Lcom/android/server/SystemService;
.source "PeopleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/PeopleService$LocalService;,
        Lcom/android/server/people/PeopleService$ListenerKey;,
        Lcom/android/server/people/PeopleService$ConversationListenerHelper;,
        Lcom/android/server/people/PeopleService$ConversationsListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PeopleService"


# instance fields
.field public mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mDataManager:Lcom/android/server/people/data/DataManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/people/PeopleService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/people/PeopleService;->handleIncomingUser(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smenforceSystemOrRoot(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->enforceSystemOrRoot(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisSystemOrRoot()Z
    .registers 1

    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 176
    new-instance v0, Lcom/android/server/people/PeopleService$1;

    invoke-direct {v0, p0}, Lcom/android/server/people/PeopleService$1;-><init>(Lcom/android/server/people/PeopleService;)V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    .line 83
    new-instance v0, Lcom/android/server/people/data/DataManager;

    invoke-direct {v0, p1}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    .line 84
    new-instance p1, Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    invoke-direct {p1}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/PeopleService;->mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    .line 85
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->addConversationsListener(Lcom/android/server/people/PeopleService$ConversationsListener;)V

    return-void
.end method

.method public static enforceSystemOrRoot(Ljava/lang/String;)V
    .registers 4

    .line 132
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 133
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system may "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSystemOrRoot()Z
    .registers 2

    .line 138
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    .line 139
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_11

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method


# virtual methods
.method public final checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 6

    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 154
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 156
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, v0, :cond_13

    return-void

    .line 158
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot query eventsfor package "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 97
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/people/data/DataManager;->dump([Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 171
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    const-string p0, "android.permission.STATUS_BAR_SERVICE"

    .line 172
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleIncomingUser(I)I
    .registers 10

    .line 144
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 145
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    move v3, p1

    .line 144
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return p0

    :catch_17
    return p1
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_9

    .line 91
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p0}, Lcom/android/server/people/data/DataManager;->initialize()V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 2

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/server/people/PeopleService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_a

    .line 109
    iget-object p1, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    const-string/jumbo v0, "people"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 111
    :cond_a
    const-class p1, Lcom/android/server/people/PeopleServiceInternal;

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/people/PeopleService$LocalService;-><init>(Lcom/android/server/people/PeopleService;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 112
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 122
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->onUserStopping(I)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mDataManager:Lcom/android/server/people/data/DataManager;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->onUserUnlocked(I)V

    return-void
.end method
