.class public final Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserServiceSupplier.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
        "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field public static final TAG:Ljava/lang/String; = "CurrentUserServiceSupplier"

.field public static final sBoundServiceInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManagerInternal;

.field public final mCallerPermission:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mIntent:Landroid/content/Intent;

.field public volatile mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

.field public final mMatchSystemAppsOnly:Z

.field public final mServicePermission:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$eAgGNiGNEhFYCF4yh3RouyrCzJc(Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->lambda$static$0(Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->sBoundServiceInfoComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 219
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    .line 221
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 222
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 221
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    .line 223
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    if-eqz p3, :cond_21

    .line 226
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :cond_21
    iput-object p4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    .line 230
    iput-object p5, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    .line 231
    iput-boolean p6, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 13

    .line 176
    new-instance v7, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v7
.end method

.method public static createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 4

    .line 154
    invoke-static {p0, p2, p3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->retrieveExplicitPackage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 156
    invoke-static {p0, p1, p2, p3, p3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object p0

    return-object p0
.end method

.method public static createUnsafeForTestsOnly(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 13

    .line 190
    new-instance v7, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v7
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)I
    .registers 6

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    const/4 v0, -0x1

    if-nez p0, :cond_8

    return v0

    :cond_8
    const/4 v1, 0x1

    if-nez p1, :cond_c

    return v1

    .line 85
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getVersion()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getVersion()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-nez v2, :cond_35

    .line 87
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getUserId()I

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getUserId()I

    move-result v3

    if-nez v3, :cond_27

    goto :goto_36

    .line 89
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getUserId()I

    move-result p0

    if-nez p0, :cond_35

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getUserId()I

    move-result p0

    if-eqz p0, :cond_35

    move v0, v1

    goto :goto_36

    :cond_35
    move v0, v2

    :goto_36
    return v0
.end method

.method public static retrieveExplicitPackage(Landroid/content/Context;II)Ljava/lang/String;
    .registers 3

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 197
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_f

    .line 199
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getServiceInfo()Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    .registers 8

    .line 274
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    if-eqz v0, :cond_8

    const v0, 0x10100080

    goto :goto_b

    :cond_8
    const v0, 0x10000080

    .line 277
    :goto_b
    iget-object v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    .line 278
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 283
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/content/pm/ServiceInfo;

    .line 285
    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    const-string v5, "CurrentUserServiceSupplier"

    if-eqz v4, :cond_66

    .line 286
    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " disqualified due to not requiring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 293
    :cond_66
    new-instance v4, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    iget-object v6, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    .line 295
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    if-eqz v2, :cond_a4

    .line 296
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 297
    invoke-virtual {v4}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getUserId()I

    move-result v6

    .line 296
    invoke-static {v2, v3, v6}, Landroid/permission/PermissionManager;->checkPackageNamePermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a4

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " disqualified due to not holding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 304
    :cond_a4
    sget-object v2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->sBoundServiceInfoComparator:Ljava/util/Comparator;

    invoke-interface {v2, v4, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_22

    move-object v1, v4

    goto/16 :goto_22

    :cond_af
    return-object v1
.end method

.method public bridge synthetic getServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
    .registers 1

    .line 65
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->getServiceInfo()Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public hasMatchingService()Z
    .registers 4

    .line 237
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x1c0000

    goto :goto_9

    :cond_7
    const/high16 v0, 0xc0000

    .line 240
    :goto_9
    iget-object v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    .line 241
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 244
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    .line 318
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_12

    return-void

    .line 322
    :cond_12
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    if-nez v0, :cond_17

    return-void

    :cond_17
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 327
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string p0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_37

    .line 329
    :cond_28
    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;->onServiceChanged()V

    goto :goto_37

    .line 333
    :cond_2c
    iget-object p0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p0

    if-ne p2, p0, :cond_37

    .line 334
    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;->onServiceChanged()V

    :cond_37
    :goto_37
    return-void
.end method

.method public register(Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;)V
    .registers 9

    .line 249
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 251
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 253
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 254
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 255
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    .line 257
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v2, p0

    .line 256
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 265
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
