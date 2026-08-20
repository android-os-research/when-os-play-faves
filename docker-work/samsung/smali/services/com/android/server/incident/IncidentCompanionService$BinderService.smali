.class public final Lcom/android/server/incident/IncidentCompanionService$BinderService;
.super Landroid/os/IIncidentCompanion$Stub;
.source "IncidentCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/incident/IncidentCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/incident/IncidentCompanionService;


# direct methods
.method public constructor <init>(Lcom/android/server/incident/IncidentCompanionService;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-direct {p0}, Landroid/os/IIncidentCompanion$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/incident/IncidentCompanionService;Lcom/android/server/incident/IncidentCompanionService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;-><init>(Lcom/android/server/incident/IncidentCompanionService;)V

    return-void
.end method


# virtual methods
.method public approveReport(Ljava/lang/String;)V
    .registers 4

    .line 167
    invoke-virtual {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAuthorizePermission()V

    .line 169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 171
    :try_start_7
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$fgetmPendingReports(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->approveReport(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    .line 173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    throw p0
.end method

.method public authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .registers 16

    .line 88
    invoke-virtual {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceRequestAuthorizationPermission()V

    .line 90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 92
    :try_start_7
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$fgetmPendingReports(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/incident/PendingReports;->authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1a

    .line 95
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    throw p0
.end method

.method public cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    .registers 4

    .line 108
    invoke-virtual {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceRequestAuthorizationPermission()V

    .line 112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 114
    :try_start_7
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$fgetmPendingReports(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    .line 116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    throw p0
.end method

.method public deleteAllIncidentReports(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_21

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 239
    :try_start_f
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$mgetIIncidentManager(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/os/IIncidentManager;->deleteAllIncidentReports(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1c

    .line 241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    throw p0

    .line 233
    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid pkg"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    if-eqz p3, :cond_31

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_31

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 221
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$mgetIIncidentManager(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IIncidentManager;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2c

    .line 223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw p0

    .line 215
    :cond_31
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid pkg, cls or id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public denyReport(Ljava/lang/String;)V
    .registers 4

    .line 182
    invoke-virtual {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAuthorizePermission()V

    .line 184
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 186
    :try_start_7
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$fgetmPendingReports(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->denyReport(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    .line 188
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 270
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IncidentCompanionService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 274
    :cond_f
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--restricted_image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->dumpRestrictedImages(Ljava/io/FileDescriptor;)V

    goto :goto_2b

    .line 279
    :cond_22
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$fgetmPendingReports(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/incident/PendingReports;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_2b
    return-void
.end method

.method public final dumpRestrictedImages(Ljava/io/FileDescriptor;)V
    .registers 9

    .line 288
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_9

    return-void

    .line 292
    :cond_9
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070109

    .line 293
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 295
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_75

    .line 297
    aget-object v2, p0, v1

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Looking up service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IncidentCompanionService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_72

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling dump on service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :try_start_50
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$sfgetRESTRICTED_IMAGE_DUMP_ARGS()[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_57} :catch_58

    goto :goto_72

    :catch_58
    move-exception v3

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dump --restricted_image of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " threw"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_72
    :goto_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_75
    return-void
.end method

.method public final enforceAccessReportsPermissions(Ljava/lang/String;)V
    .registers 5

    .line 341
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.APPROVE_INCIDENT_REPORTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    .line 344
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2a

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceCallerIsSameApp(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public final enforceAuthorizePermission()V
    .registers 3

    .line 325
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.APPROVE_INCIDENT_REPORTS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceCallerIsSameApp(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const-string v0, "Unknown package "

    .line 359
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 360
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 361
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    .line 362
    invoke-virtual {p0, p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_4d

    .line 366
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_24

    return-void

    .line 367
    :cond_24
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gave package "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " which is owned by uid "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    :cond_4d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_62} :catch_62

    :catch_62
    move-exception p0

    .line 371
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final enforceRequestAuthorizationPermission()V
    .registers 3

    .line 316
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.REQUEST_INCIDENT_REPORT_APPROVAL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_32

    if-eqz p2, :cond_32

    if-eqz p3, :cond_32

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_32

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 259
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$mgetIIncidentManager(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/os/IIncidentManager;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    .line 261
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 262
    throw p0

    .line 253
    :cond_32
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid pkg, cls or id"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAccessReportsPermissions(Ljava/lang/String;)V

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    :try_start_8
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$mgetIIncidentManager(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/os/IIncidentManager;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 204
    throw p0
.end method

.method public getPendingReports()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceAuthorizePermission()V

    .line 159
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$fgetmPendingReports(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/incident/PendingReports;->getPendingReports()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public sendReportReadyBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 125
    invoke-virtual {p0}, Lcom/android/server/incident/IncidentCompanionService$BinderService;->enforceRequestAuthorizationPermission()V

    .line 127
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 129
    :try_start_7
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService$BinderService;->this$0:Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 131
    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->getAndValidateUser(Landroid/content/Context;)I

    move-result v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_62

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_19

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 136
    :cond_19
    :try_start_19
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INCIDENT_REPORT_READY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "IncidentCompanionService"

    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendReportReadyBroadcast sending primaryUser="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " userHandle="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " intent="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->-$$Nest$sfgetDUMP_AND_USAGE_STATS_PERMISSIONS()[Ljava/lang/String;

    move-result-object p2

    .line 144
    invoke-virtual {p0, v3, p1, p2}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_19 .. :try_end_5e} :catchall_62

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_62
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw p0
.end method
