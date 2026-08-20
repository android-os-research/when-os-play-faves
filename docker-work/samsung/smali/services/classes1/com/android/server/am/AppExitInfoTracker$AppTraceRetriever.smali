.class Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;
.super Landroid/app/IAppTraceRetriever$Stub;
.source "AppExitInfoTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppExitInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppTraceRetriever"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .registers 2

    .line 1871
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Landroid/app/IAppTraceRetriever$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getTraceFileDescriptor(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .registers 14

    .line 1875
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    const-string/jumbo v1, "getTraceFileDescriptor"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1877
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 1880
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1881
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1882
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 1883
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1885
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v1}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "getTraceFileDescriptor"

    const/4 v8, 0x0

    move v3, v0

    move v4, v9

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v1}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    const-string/jumbo v2, "getTraceFileDescriptor"

    invoke-virtual {v1, p1, v9, v0, v2}, Lcom/android/server/am/ActivityManagerService;->enforceDumpPermissionForPackage(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7a

    .line 1889
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1890
    :try_start_4c
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$mgetExitInfoLocked(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object p0

    if-nez p0, :cond_56

    .line 1892
    monitor-exit v0

    return-object v2

    .line 1894
    :cond_56
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_5e

    .line 1896
    monitor-exit v0

    return-object v2

    .line 1898
    :cond_5e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1
    :try_end_62
    .catchall {:try_start_4c .. :try_end_62} :catchall_77

    const/high16 p3, 0x10000000

    .line 1901
    :try_start_64
    invoke-static {p0, p3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_68} :catch_72
    .catchall {:try_start_64 .. :try_end_68} :catchall_6d

    .line 1906
    :try_start_68
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object p0

    :catchall_6d
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1907
    throw p0

    .line 1906
    :catch_72
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object v2

    :catchall_77
    move-exception p0

    .line 1908
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_68 .. :try_end_79} :catchall_77

    throw p0

    :cond_7a
    return-object v2

    .line 1878
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid package name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
