.class public Lcom/android/server/sepunion/SemShortcutManagerService;
.super Lcom/samsung/android/app/ISemExecuteManager$Stub;
.source "SemShortcutManagerService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final MSG_START_SCAN:I = 0x3e6

.field public static final SEND_MSG_DELAY_MILLIS:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "SemExecuteManagerService"

.field public static final mLock:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mScanHandler:Landroid/os/Handler;

.field public final mSemExecutableInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mShortcutChangeListener:Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

.field public mShortcutChangedCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public final mUm:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScanHandler(Lcom/android/server/sepunion/SemShortcutManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmShortcutChangedCallbackMap(Lcom/android/server/sepunion/SemShortcutManagerService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeIntent(Lcom/android/server/sepunion/SemShortcutManagerService;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemShortcutManagerService;->makeIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateSemExecutableInfo(Lcom/android/server/sepunion/SemShortcutManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetmLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/ISemExecuteManager$Stub;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    .line 184
    new-instance v0, Lcom/android/server/sepunion/SemShortcutManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$1;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangeListener:Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    .line 501
    new-instance v0, Lcom/android/server/sepunion/SemShortcutManagerService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService$2;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mScanHandler:Landroid/os/Handler;

    .line 103
    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$MyPackageMonitor;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    const-string/jumbo v0, "user"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    .line 107
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 108
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 109
    const-class p1, Landroid/content/pm/ShortcutServiceInternal;

    .line 110
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutServiceInternal;

    iput-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 111
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangeListener:Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutServiceInternal;->addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "----- SemShortcutManagerService: start updateSemExecutableInfo() on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemExecuteManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "----- SemShortcutManagerService: end updateSemExecutableInfo() on "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final canAccessProfile(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10

    .line 330
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v0, :cond_8

    return v1

    .line 335
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 337
    :try_start_c
    iget-object v4, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 338
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_46

    const-string v1, "SemExecuteManagerService"

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " by "

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for another profile "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_c .. :try_end_41} :catchall_76

    const/4 p1, 0x0

    .line 351
    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    return p1

    .line 344
    :cond_46
    :try_start_46
    iget-object p1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_5c

    .line 345
    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_5c

    iget v0, v4, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_76

    if-ne p1, v0, :cond_5c

    .line 351
    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    return v1

    .line 348
    :cond_5c
    :try_start_5c
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for unrelated profile "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_76
    .catchall {:try_start_5c .. :try_end_76} :catchall_76

    :catchall_76
    move-exception p1

    .line 351
    invoke-virtual {p0, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    .line 352
    throw p1
.end method

.method public final canAccessProfile(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 4

    .line 317
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final checkPermission(Ljava/lang/String;)V
    .registers 4

    .line 285
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    .line 286
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 287
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied to process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", must have permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 218
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.DUMP"

    const-string p3, "SemExecuteManagerService"

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "\n##### SEM SHORTCUT MANAGER SERVICE #####\n##### (dumpsys sepunion execute) #####\n"

    .line 220
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enforeCallingPermission(Ljava/lang/String;)V
    .registers 7

    .line 293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 294
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_13

    return-void

    .line 298
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denied: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", you need system uid of to be signed with the system certificate."

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "SemExecuteManagerService"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final ensureShortcutPermission(Ljava/lang/String;)V
    .registers 2

    const-string p1, "ensureShortcutPermission"

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    return-void
.end method

.method public getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Cannot check package"

    .line 395
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 398
    :cond_a
    invoke-virtual {p0, p4}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_11

    return-object v0

    .line 402
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result v5

    .line 403
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    .line 405
    :try_start_19
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 406
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    int-to-long v3, p3

    .line 408
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    move-object v2, p2

    .line 407
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_30

    .line 411
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_30
    move-exception p2

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 412
    throw p2
.end method

.method public final getCallingUserId()I
    .registers 1

    .line 261
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/SemExecutableInfo;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 121
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getExecutableInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    monitor-enter v0

    .line 126
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    .line 127
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 13

    const-string/jumbo v0, "getShortcutIconFd"

    .line 380
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const-string v0, "Cannot access shortcuts"

    .line 381
    invoke-virtual {p0, p1, p5, v0}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_10

    return-object v0

    .line 384
    :cond_10
    invoke-virtual {p0, p5}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    move-result p1

    if-nez p1, :cond_17

    return-object v0

    .line 388
    :cond_17
    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->getCallingUserId()I

    move-result v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public getShortcuts(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            "Landroid/content/ComponentName;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getShortcuts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemExecuteManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "getShortcuts"

    .line 361
    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const-string v3, "Cannot get shortcuts"

    .line 362
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 363
    invoke-virtual {p0, v2}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_69

    :cond_31
    if-eqz p6, :cond_3e

    if-eqz p5, :cond_36

    goto :goto_3e

    .line 367
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "To query by shortcut ID, package name must also be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_3e
    :goto_3e
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object v3, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 373
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->getCallingUserId()I

    move-result v0

    const/4 v9, 0x0

    .line 374
    invoke-virtual/range {p9 .. p9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    move-object v2, v3

    move v3, v0

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    .line 372
    invoke-virtual/range {v2 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 364
    :cond_69
    :goto_69
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public hasShortcutHostPermission(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo p1, "hasShortcutHostPermission"

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public injectBinderCallingUid()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 266
    invoke-static {}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public final injectCallingUserId()I
    .registers 1

    .line 270
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public injectClearCallingIdentity()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public injectRestoreCallingIdentity(J)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 281
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final isUserEnabled(I)Z
    .registers 5

    .line 251
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectClearCallingIdentity()J

    move-result-wide v0

    .line 253
    :try_start_4
    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 254
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result p1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_19

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 256
    :goto_15
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    return p1

    :catchall_19
    move-exception p1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectRestoreCallingIdentity(J)V

    .line 257
    throw p1
.end method

.method public final isUserEnabled(Landroid/os/UserHandle;)Z
    .registers 2

    .line 247
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    move-result p0

    return p0
.end method

.method public final makeIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4

    .line 210
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.shortcut.PACKAGE_NAME"

    .line 211
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.shortcut.USER_ID"

    .line 212
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_c

    .line 541
    new-instance p1, Lcom/android/server/sepunion/SemShortcutManagerService$3;

    invoke-direct {p1, p0}, Lcom/android/server/sepunion/SemShortcutManagerService$3;-><init>(Lcom/android/server/sepunion/SemShortcutManagerService;)V

    .line 548
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_c
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    .line 574
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->updateSemExecutableInfo()V

    return-void
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

.method public registerChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    sget-object p1, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 473
    :try_start_3
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 477
    :cond_1a
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    monitor-exit p1

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z
    .registers 19

    move-object v0, p0

    move/from16 v9, p7

    const-string/jumbo v7, "startShortcut"

    .line 418
    invoke-virtual {p0, v7}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    const-string v1, "Cannot start activity"

    move-object v2, p1

    .line 419
    invoke-virtual {p0, p1, v9, v1}, Lcom/android/server/sepunion/SemShortcutManagerService;->canAccessProfile(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_14

    return v10

    .line 422
    :cond_14
    invoke-virtual {p0, v9}, Lcom/android/server/sepunion/SemShortcutManagerService;->isUserEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 428
    iget-object v1, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->getCallingUserId()I

    move-result v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/ShortcutServiceInternal;->isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 430
    invoke-virtual {p0, v7}, Lcom/android/server/sepunion/SemShortcutManagerService;->enforeCallingPermission(Ljava/lang/String;)V

    .line 433
    :cond_2e
    iget-object v1, v0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->getCallingUserId()I

    move-result v2

    .line 434
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p7

    .line 433
    invoke-virtual/range {v1 .. v8}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 435
    array-length v2, v1

    if-nez v2, :cond_4b

    goto :goto_61

    .line 440
    :cond_4b
    aget-object v2, v1, v10

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 441
    aget-object v2, v1, v10

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object v2, p3

    move-object/from16 v3, p6

    .line 443
    invoke-virtual {p0, v1, p3, v3, v9}, Lcom/android/server/sepunion/SemShortcutManagerService;->startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v0

    return v0

    :cond_61
    :goto_61
    return v10

    .line 423
    :cond_62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start a shortcut for disabled profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startShortcutIntentsAsPublisher([Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .registers 13

    const-string v0, "SemExecuteManagerService"

    const/4 v1, 0x0

    .line 452
    :try_start_3
    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mLocalActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v4, 0x0

    move-object v3, p2

    move v5, p4

    move-object v6, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesAsPackage(Ljava/lang/String;Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result p0

    .line 454
    invoke-static {p0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p0, 0x1

    return p0

    .line 457
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t start activity, code="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_2a} :catch_2b

    return v1

    :catch_2b
    move-exception p0

    const-string p1, "SecurityException while launching intent"

    .line 462
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public unRegisterChangedCallback(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/os/UserHandle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    sget-object p1, Lcom/android/server/sepunion/SemShortcutManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 487
    :try_start_3
    iget-object p0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mShortcutChangedCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_2f

    .line 489
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 490
    :cond_19
    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2f

    .line 491
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/PendingIntent;

    .line 492
    invoke-virtual {p3, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 493
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    .line 497
    :cond_2f
    monitor-exit p1

    return-void

    :catchall_31
    move-exception p0

    monitor-exit p1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final declared-synchronized updateSemExecutableInfo()V
    .registers 9

    monitor-enter p0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_67

    const/4 v1, 0x0

    .line 133
    :try_start_5
    iget-object v2, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/SemExecutableInfo;->scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v3, v4, :cond_19

    move v1, v5

    .line 139
    :cond_19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/SemExecutableInfo;

    .line 140
    iget-object v6, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/SemExecutableInfo;

    if-nez v6, :cond_39

    :goto_37
    move v1, v5

    goto :goto_1d

    .line 144
    :cond_39
    invoke-virtual {v6, v4}, Lcom/samsung/android/app/SemExecutableInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_37

    :cond_40
    if-eqz v1, :cond_61

    .line 151
    iget-object v1, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/SemExecutableInfo;

    .line 153
    iget-object v3, p0, Lcom/android/server/sepunion/SemShortcutManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 158
    :cond_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_64

    .line 159
    monitor-exit p0

    return-void

    :catchall_64
    move-exception v1

    .line 158
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public verifyCallingPackage(Ljava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 228
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/32 v1, 0xc2000

    .line 232
    invoke-static {}, Lcom/samsung/android/app/ISemExecuteManager$Stub;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 228
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    const/4 v0, -0x1

    :goto_15
    if-gez v0, :cond_2d

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SemExecuteManagerService"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemShortcutManagerService;->injectBinderCallingUid()I

    move-result p0

    if-ne v0, p0, :cond_34

    return-void

    .line 239
    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling package name mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
