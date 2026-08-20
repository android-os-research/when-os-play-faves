.class public Lcom/android/server/companion/CompanionApplicationController;
.super Ljava/lang/Object;
.source "CompanionApplicationController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;,
        Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;,
        Lcom/android/server/companion/CompanionApplicationController$Callback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final REBIND_TIMEOUT:J = 0x2710L

.field public static final TAG:Ljava/lang/String; = "CompanionDevice_ApplicationController"


# instance fields
.field public final mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBoundCompanionApplications"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<",
            "Ljava/util/List<",
            "Lcom/android/server/companion/CompanionDeviceServiceConnector;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

.field public final mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

.field public final mContext:Landroid/content/Context;

.field public final mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5Q6vCBSeImiLSwPvsTljfuvuzqs(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->lambda$scheduleRebinding$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V10cftkgzzp8L3lGUq_mQ1-BeT4(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->onPrimaryServiceBindingDied(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_c9TJtQrmIKPrcaxW_l6Na4JVB0(Lcom/android/server/companion/CompanionApplicationController;IZLandroid/content/ComponentName;)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionApplicationController;->lambda$bindCompanionApplication$0(IZLandroid/content/ComponentName;)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/companion/CompanionApplicationController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/CompanionApplicationController$Callback;)V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/server/companion/CompanionApplicationController;->mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    .line 98
    new-instance p1, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;-><init>(Lcom/android/server/companion/CompanionApplicationController;Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    .line 99
    new-instance p1, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-direct {p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;-><init>(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    .line 100
    new-instance p1, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-direct {p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;-><init>(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    return-void
.end method

.method private synthetic lambda$bindCompanionApplication$0(IZLandroid/content/ComponentName;)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .registers 4

    .line 133
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p3, p2}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->newInstance(Landroid/content/Context;ILandroid/content/ComponentName;Z)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$scheduleRebinding$1(ILjava/lang/String;)V
    .registers 3

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->onRebindingCompanionApplicationTimeout(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindCompanionApplication(ILjava/lang/String;Z)V
    .registers 7

    .line 114
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    .line 115
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->forPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_30

    const-string p0, "CompanionDevice_ApplicationController"

    .line 117
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not bind companion applications u"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": eligible CompanionDeviceService not found.\nA CompanionDeviceService should declare an intent-filter for \"android.companion.CompanionDeviceService\" action and require \"android.permission.BIND_COMPANION_DEVICE_SERVICE\" permission."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_30
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v1

    .line 127
    :try_start_33
    iget-object v2, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 129
    monitor-exit v1

    return-void

    .line 132
    :cond_3d
    new-instance v2, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionApplicationController;IZ)V

    invoke-static {v0, v2}, Lcom/android/internal/util/CollectionUtils;->map(Ljava/util/List;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p3

    .line 135
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->setValueForPackage(ILjava/lang/String;Ljava/lang/Object;)V

    .line 136
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_70

    const/4 p1, 0x0

    .line 139
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    new-instance p2, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/CompanionApplicationController;)V

    invoke-virtual {p1, p2}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->setListener(Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;)V

    .line 142
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    .line 143
    invoke-virtual {p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    goto :goto_5f

    :cond_6f
    return-void

    :catchall_70
    move-exception p0

    .line 136
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "Companion Device Application Controller: \n"

    .line 239
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 241
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    :try_start_8
    const-string v1, "  Bound Companion Applications: "

    .line 242
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 243
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "<empty>\n"

    .line 244
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_25

    :cond_1b
    const-string v1, "\n"

    .line 246
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 247
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-static {v1, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->-$$Nest$mdump(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;Ljava/io/PrintWriter;)V

    .line 249
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_44

    const-string v0, "  Companion Applications Scheduled For Rebinding: "

    .line 251
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 252
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_39

    const-string p0, "<empty>\n"

    .line 253
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_43

    :cond_39
    const-string v0, "\n"

    .line 255
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 256
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-static {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->-$$Nest$mdump(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;Ljava/io/PrintWriter;)V

    :goto_43
    return-void

    :catchall_44
    move-exception p0

    .line 249
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public final getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .registers 4

    .line 279
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 280
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->getValueForPackage(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 281
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_18

    if-eqz p0, :cond_16

    const/4 p1, 0x0

    .line 282
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return-object p0

    :catchall_18
    move-exception p0

    .line 281
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public isCompanionApplicationBound(ILjava/lang/String;)Z
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 170
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 171
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isRebindingCompanionApplicationScheduled(ILjava/lang/String;)Z
    .registers 3

    .line 183
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public notifyCompanionApplicationDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .registers 4

    .line 195
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    .line 196
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionApplicationController;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object p0

    if-nez p0, :cond_f

    return-void

    .line 213
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postOnDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public notifyCompanionApplicationDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .registers 4

    .line 217
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    .line 218
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionApplicationController;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object p0

    if-nez p0, :cond_f

    return-void

    .line 235
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postOnDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public onPackagesChanged(I)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->invalidate(I)V

    return-void
.end method

.method public final onPrimaryServiceBindingDied(ILjava/lang/String;)V
    .registers 5

    .line 264
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 265
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    .line 266
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 269
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    .line 270
    invoke-interface {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$Callback;->onCompanionApplicationBindingDied(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->scheduleRebinding(ILjava/lang/String;)V

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    .line 266
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final onRebindingCompanionApplicationTimeout(ILjava/lang/String;)V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    .line 191
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCallback:Lcom/android/server/companion/CompanionApplicationController$Callback;

    invoke-interface {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$Callback;->onRebindCompanionApplicationTimeout(ILjava/lang/String;)V

    return-void
.end method

.method public final scheduleRebinding(ILjava/lang/String;)V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->setValueForPackage(ILjava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unbindCompanionApplication(ILjava/lang/String;)V
    .registers 4

    .line 151
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 152
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 153
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_24

    if-nez p0, :cond_f

    return-void

    .line 163
    :cond_f
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    .line 164
    invoke-virtual {p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postUnbind()V

    goto :goto_13

    :cond_23
    return-void

    :catchall_24
    move-exception p0

    .line 153
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p0
.end method
