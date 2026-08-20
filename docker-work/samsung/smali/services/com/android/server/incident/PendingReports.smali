.class public Lcom/android/server/incident/PendingReports;
.super Ljava/lang/Object;
.source "PendingReports.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/incident/PendingReports$PendingReportRec;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "IncidentCompanionService"


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public mNextPendingId:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/incident/PendingReports$PendingReportRec;",
            ">;"
        }
    .end annotation
.end field

.field public final mRequestQueue:Lcom/android/server/incident/RequestQueue;


# direct methods
.method public static synthetic $r8$lambda$Joo91M4wjdNITpLDr7zvkV9kN7Q(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/incident/PendingReports;->lambda$authorizeReportImpl$2(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$T0uPwdHy0gqZ4tS0nb7olD9WBAU(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/incident/PendingReports;->lambda$cancelAuthorization$1(Landroid/os/IIncidentAuthListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgdS8PYFQpLh2NOSGjn1kZ5FATM(Lcom/android/server/incident/PendingReports;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/incident/PendingReports;->lambda$authorizeReport$0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmNextPendingId(Lcom/android/server/incident/PendingReports;)I
    .registers 1

    iget p0, p0, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmNextPendingId(Lcom/android/server/incident/PendingReports;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v1, Lcom/android/server/incident/RequestQueue;

    invoke-direct {v1, v0}, Lcom/android/server/incident/RequestQueue;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 66
    iput v0, p0, Lcom/android/server/incident/PendingReports;->mNextPendingId:I

    .line 124
    iput-object p1, p0, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/incident/PendingReports;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 126
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/incident/PendingReports;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method private synthetic lambda$authorizeReport$0(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .registers 7

    .line 142
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/incident/PendingReports;->authorizeReportImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    return-void
.end method

.method private synthetic lambda$authorizeReportImpl$2(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .registers 6

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got death notification listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IncidentCompanionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    return-void
.end method

.method private synthetic lambda$cancelAuthorization$1(Landroid/os/IIncidentAuthListener;)V
    .registers 2

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;)V

    return-void
.end method


# virtual methods
.method public approveReport(Ljava/lang/String;)V
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;

    move-result-object v1

    if-nez v1, :cond_21

    const-string p0, "IncidentCompanionService"

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmApproved: Couldn\'t find record for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    monitor-exit v0

    return-void

    .line 193
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_59

    .line 197
    invoke-virtual {p0}, Lcom/android/server/incident/PendingReports;->sendBroadcast()V

    const-string p0, "IncidentCompanionService"

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Approved report: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :try_start_3b
    iget-object p0, v1, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    invoke-interface {p0}, Landroid/os/IIncidentAuthListener;->onReportApproved()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41

    goto :goto_58

    :catch_41
    move-exception p0

    const-string v0, "IncidentCompanionService"

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed calling back for approval for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_58
    return-void

    :catchall_59
    move-exception p0

    .line 193
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .registers 18

    move-object v1, p0

    .line 141
    iget-object v8, v1, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    invoke-interface/range {p6 .. p6}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    new-instance v10, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/incident/PendingReports;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v9, v0, v10}, Lcom/android/server/incident/RequestQueue;->enqueue(Landroid/os/IBinder;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public final authorizeReportImpl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .registers 20

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object/from16 v8, p6

    if-eqz v1, :cond_2f

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/android/server/incident/PendingReports;->isPackageInUid(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "IncidentCompanionService"

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match package "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0, v8, p2}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    return-void

    .line 276
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/incident/PendingReports;->getAndValidateUser()I

    move-result v9

    const/16 v1, -0x2710

    if-ne v9, v1, :cond_3b

    .line 278
    invoke-virtual {p0, v8, p2}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    return-void

    .line 283
    :cond_3b
    invoke-virtual {p0, v9}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_45

    .line 287
    invoke-virtual {p0, v8, p2}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    return-void

    .line 293
    :cond_45
    iget-object v11, v0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 294
    :try_start_48
    new-instance v12, Lcom/android/server/incident/PendingReports$PendingReportRec;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/incident/PendingReports$PendingReportRec;-><init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 295
    iget-object v1, v0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    monitor-exit v11
    :try_end_5e
    .catchall {:try_start_48 .. :try_end_5e} :catchall_8d

    .line 299
    :try_start_5e
    invoke-interface/range {p6 .. p6}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v8, v10, v9}, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_6b} :catch_6c

    goto :goto_89

    :catch_6c
    const-string v1, "IncidentCompanionService"

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote died while trying to register death listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0, v8, v10, v9}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 310
    :goto_89
    invoke-virtual {p0, v10, v9}, Lcom/android/server/incident/PendingReports;->sendBroadcast(Landroid/content/ComponentName;I)V

    return-void

    :catchall_8d
    move-exception v0

    .line 296
    :try_start_8e
    monitor-exit v11
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0
.end method

.method public cancelAuthorization(Landroid/os/IIncidentAuthListener;)V
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    invoke-interface {p1}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/incident/RequestQueue;->enqueue(Landroid/os/IBinder;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public final cancelReportImpl(Landroid/os/IIncidentAuthListener;)V
    .registers 5

    .line 317
    invoke-virtual {p0}, Lcom/android/server/incident/PendingReports;->getAndValidateUser()I

    move-result v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_11

    if-eqz v1, :cond_11

    .line 320
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    :cond_11
    return-void
.end method

.method public final cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .registers 5

    .line 331
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->removePendingReportRecLocked(Landroid/os/IIncidentAuthListener;)V

    .line 333
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 335
    invoke-virtual {p0, p2, p3}, Lcom/android/server/incident/PendingReports;->sendBroadcast(Landroid/content/ComponentName;I)V

    return-void

    :catchall_b
    move-exception p0

    .line 333
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p0
.end method

.method public denyReport(Ljava/lang/String;)V
    .registers 5

    .line 212
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/incident/PendingReports;->findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;

    move-result-object v1

    if-nez v1, :cond_21

    const-string p0, "IncidentCompanionService"

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmDenied: Couldn\'t find record for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    monitor-exit v0

    return-void

    .line 218
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_59

    .line 222
    invoke-virtual {p0}, Lcom/android/server/incident/PendingReports;->sendBroadcast()V

    const-string p0, "IncidentCompanionService"

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Denied report: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :try_start_3b
    iget-object p0, v1, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    invoke-interface {p0}, Landroid/os/IIncidentAuthListener;->onReportDenied()V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_40} :catch_41

    goto :goto_58

    :catch_41
    move-exception p0

    const-string v0, "IncidentCompanionService"

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed calling back for denial for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_58
    return-void

    :catchall_59
    move-exception p0

    .line 218
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public final denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V
    .registers 4

    .line 416
    :try_start_0
    invoke-interface {p1}, Landroid/os/IIncidentAuthListener;->onReportDenied()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1b

    :catch_4
    move-exception p0

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed calling back for denial for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IncidentCompanionService"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    .line 236
    array-length p1, p3

    if-nez p1, :cond_6f

    .line 238
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo p3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object p3, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 240
    :try_start_e
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPending: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_30
    if-ge v2, v0, :cond_6a

    .line 243
    iget-object v3, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/incident/PendingReports$PendingReportRec;

    const-string v4, "  %11d %s: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 244
    iget-wide v6, v3, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedRealtime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v3, Lcom/android/server/incident/PendingReports$PendingReportRec;->addedWalltime:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 245
    invoke-virtual {p1, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    .line 246
    invoke-virtual {v3}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    .line 244
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 248
    :cond_6a
    monitor-exit p3

    goto :goto_6f

    :catchall_6c
    move-exception p0

    monitor-exit p3
    :try_end_6e
    .catchall {:try_start_e .. :try_end_6e} :catchall_6c

    throw p0

    :cond_6f
    :goto_6f
    return-void
.end method

.method public final findAndRemovePendingReportRecLocked(Ljava/lang/String;)Lcom/android/server/incident/PendingReports$PendingReportRec;
    .registers 5

    .line 376
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    const-string/jumbo v2, "id"

    .line 379
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_10} :catch_2b

    .line 386
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 387
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 388
    iget v2, v0, Lcom/android/server/incident/PendingReports$PendingReportRec;->id:I

    if-ne v2, p1, :cond_16

    .line 389
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-object v0

    :cond_2a
    return-object v1

    .line 382
    :catch_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t parse id from: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IncidentCompanionService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getAndValidateUser()I
    .registers 1

    .line 427
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/incident/IncidentCompanionService;->getAndValidateUser(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getApproverComponent(I)Landroid/content/ComponentName;
    .registers 4

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0x1c0000

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 442
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_26

    const/4 p1, 0x0

    .line 443
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 445
    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Didn\'t find exactly one BroadcastReceiver to handle android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED. The report will be denied. size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": matches="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IncidentCompanionService"

    .line 445
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPendingReports()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_27

    .line 174
    iget-object v4, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/incident/PendingReports$PendingReportRec;

    invoke-virtual {v4}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 176
    :cond_27
    monitor-exit v0

    return-object v2

    :catchall_29
    move-exception p0

    .line 177
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final isPackageInUid(ILjava/lang/String;)Z
    .registers 3

    .line 458
    :try_start_0
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public onBootCompleted()V
    .registers 1

    .line 258
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mRequestQueue:Lcom/android/server/incident/RequestQueue;

    invoke-virtual {p0}, Lcom/android/server/incident/RequestQueue;->start()V

    return-void
.end method

.method public final removePendingReportRecLocked(Landroid/os/IIncidentAuthListener;)V
    .registers 5

    .line 401
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 402
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 403
    iget-object v1, v0, Lcom/android/server/incident/PendingReports$PendingReportRec;->listener:Landroid/os/IIncidentAuthListener;

    invoke-interface {v1}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_6

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ...Removed PendingReportRec index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IncidentCompanionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_44
    return-void
.end method

.method public final sendBroadcast()V
    .registers 3

    .line 345
    invoke-virtual {p0}, Lcom/android/server/incident/PendingReports;->getAndValidateUser()I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_9

    return-void

    .line 349
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_10

    return-void

    .line 353
    :cond_10
    invoke-virtual {p0, v1, v0}, Lcom/android/server/incident/PendingReports;->sendBroadcast(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public final sendBroadcast(Landroid/content/ComponentName;I)V
    .registers 5

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 362
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 363
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 364
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 v1, 0x1

    .line 365
    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 368
    iget-object p0, p0, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 369
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.permission.APPROVE_INCIDENT_REPORTS"

    .line 368
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
