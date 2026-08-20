.class public Lcom/android/server/incident/IncidentCompanionService;
.super Lcom/android/server/SystemService;
.source "IncidentCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/incident/IncidentCompanionService$BinderService;
    }
.end annotation


# static fields
.field public static final DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

.field public static RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "IncidentCompanionService"


# instance fields
.field public mPendingReports:Lcom/android/server/incident/PendingReports;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPendingReports(Lcom/android/server/incident/IncidentCompanionService;)Lcom/android/server/incident/PendingReports;
    .registers 1

    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetIIncidentManager(Lcom/android/server/incident/IncidentCompanionService;)Landroid/os/IIncidentManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/incident/IncidentCompanionService;->getIIncidentManager()Landroid/os/IIncidentManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDUMP_AND_USAGE_STATS_PERMISSIONS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/incident/IncidentCompanionService;->DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetRESTRICTED_IMAGE_DUMP_ARGS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/incident/IncidentCompanionService;->RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "--hal"

    const-string v1, "--restricted_image"

    .line 58
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/incident/IncidentCompanionService;->RESTRICTED_IMAGE_DUMP_ARGS:[Ljava/lang/String;

    const-string v0, "android.permission.DUMP"

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    .line 64
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/incident/IncidentCompanionService;->DUMP_AND_USAGE_STATS_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 380
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 381
    new-instance v0, Lcom/android/server/incident/PendingReports;

    invoke-direct {v0, p1}, Lcom/android/server/incident/PendingReports;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    return-void
.end method

.method public static getAndValidateUser(Landroid/content/Context;)I
    .registers 4

    .line 424
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_31

    .line 431
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 432
    invoke-virtual {p0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    const/16 v1, -0x2710

    const-string v2, "IncidentCompanionService"

    if-nez v0, :cond_1c

    const-string p0, "No current user.  Nobody to approve the report. The report will be denied."

    .line 436
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1c
    if-nez p0, :cond_24

    const-string p0, "No primary user.  Nobody to approve the report. The report will be denied."

    .line 441
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 445
    :cond_24
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq p0, v0, :cond_30

    const-string p0, "Only the primary user can approve bugreports, but they are not the current user. The report will be denied."

    .line 446
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_30
    return p0

    :catch_31
    move-exception p0

    .line 427
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final getIIncidentManager()Landroid/os/IIncidentManager;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo p0, "incident"

    .line 413
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 412
    invoke-static {p0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object p0

    return-object p0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 399
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_8

    goto :goto_d

    .line 402
    :cond_8
    iget-object p0, p0, Lcom/android/server/incident/IncidentCompanionService;->mPendingReports:Lcom/android/server/incident/PendingReports;

    invoke-virtual {p0}, Lcom/android/server/incident/PendingReports;->onBootCompleted()V

    :goto_d
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 390
    new-instance v0, Lcom/android/server/incident/IncidentCompanionService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/incident/IncidentCompanionService$BinderService;-><init>(Lcom/android/server/incident/IncidentCompanionService;Lcom/android/server/incident/IncidentCompanionService$BinderService-IA;)V

    const-string/jumbo v1, "incidentcompanion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
