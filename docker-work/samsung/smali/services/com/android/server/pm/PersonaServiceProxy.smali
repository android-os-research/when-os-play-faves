.class public Lcom/android/server/pm/PersonaServiceProxy;
.super Ljava/lang/Object;
.source "PersonaServiceProxy.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "PersonaManagerService::Proxy"


# instance fields
.field public mContainerServiceLock:Ljava/lang/Object;

.field public mContainerServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/ContainerServiceInfo;",
            "Lcom/android/server/ContainerServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mIsDoEnabled:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public mTrustManager:Landroid/app/trust/TrustManager;

.field public mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContainerServiceLock(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContainerServices(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsDoEnabled(Lcom/android/server/pm/PersonaServiceProxy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsDoEnabled(Lcom/android/server/pm/PersonaServiceProxy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindAndConnectToContainerService(Lcom/android/server/pm/PersonaServiceProxy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaServiceProxy;->findAndConnectToContainerService(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misKnoxProfileExist(Lcom/android/server/pm/PersonaServiceProxy;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaServiceProxy;->isKnoxProfileExist()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    .line 97
    new-instance v1, Lcom/android/server/pm/PersonaServiceProxy$2;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaServiceProxy$2;-><init>(Lcom/android/server/pm/PersonaServiceProxy;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    new-instance v1, Lcom/android/server/pm/PersonaServiceProxy$3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaServiceProxy$3;-><init>(Lcom/android/server/pm/PersonaServiceProxy;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 64
    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 65
    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "trust"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 66
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 67
    iget-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 68
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    .line 70
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.USER_STARTED"

    .line 71
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_REMOVED"

    .line 72
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_ADDED"

    .line 73
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 77
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 78
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    .line 79
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    .line 80
    invoke-virtual {v10, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string p1, "com.samsung.android.knox.containercore"

    .line 81
    invoke-virtual {v10, p1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 82
    iget-object v7, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/pm/PersonaServiceProxy;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaServiceProxy;->registerContainerReceiver()V

    return-void
.end method


# virtual methods
.method public final createPrimaryHomeIntent()Landroid/content/Intent;
    .registers 4

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 211
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 212
    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.FROM_HOME_KEY"

    const/4 v1, 0x1

    .line 213
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public final findAndConnectToContainerService(I)V
    .registers 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finding container service in user - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService::Proxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_20

    const-string p0, "Cannot find UMS"

    .line 157
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_20
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "scanContainerService() user<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "> is not running"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_41
    const-string v0, "com.samsung.android.knox.containercore"

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaServiceProxy;->findContainerService(ILjava/lang/String;)Lcom/android/server/ContainerServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaServiceProxy;->maybeConnectContainerService(Lcom/android/server/ContainerServiceInfo;)Z

    :cond_4c
    return-void
.end method

.method public final findContainerService(ILjava/lang/String;)Lcom/android/server/ContainerServiceInfo;
    .registers 9

    const-string/jumbo p0, "package"

    .line 303
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 302
    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v0, 0x80

    const/4 v2, 0x0

    .line 306
    :try_start_e
    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 309
    invoke-interface {p0, p2, p1}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_ab

    const-string v1, "PersonaManagerService::Proxy"

    if-eqz p0, :cond_8d

    if-nez v0, :cond_1d

    goto :goto_8d

    .line 319
    :cond_1d
    :try_start_1d
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_22

    return-object v2

    .line 322
    :cond_22
    iget-object p2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "containerService.class"

    .line 323
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "containerService.category"

    .line 324
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_8c

    if-eqz p2, :cond_8c

    if-nez p0, :cond_37

    goto :goto_8c

    .line 329
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " appInfo.uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x1482

    if-eq v0, v4, :cond_59

    const-string p0, "core app does not have core uid"

    .line 331
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 335
    :cond_59
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findContainerService("

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") found "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " category:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 336
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance p2, Lcom/android/server/ContainerServiceInfo;

    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/ContainerServiceInfo;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;)V

    return-object p2

    :cond_8c
    :goto_8c
    return-object v2

    .line 310
    :cond_8d
    :goto_8d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "package:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found user:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_aa} :catch_ab

    return-object v2

    :catch_ab
    move-exception p0

    .line 340
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v2
.end method

.method public handleServiceDied(Lcom/android/server/ContainerServiceInfo;)V
    .registers 6

    .line 230
    iget-object v0, p1, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    const-string v1, "core"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 234
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 235
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaServiceProxy;->lockContainer(Landroid/content/pm/UserInfo;)V

    goto :goto_15

    .line 238
    :cond_35
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaServiceProxy;->reconnectContainerService(Lcom/android/server/ContainerServiceInfo;)V

    return-void
.end method

.method public final isKnoxProfileExist()Z
    .registers 6

    .line 173
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    const-string v1, "PersonaManagerService::Proxy"

    if-eqz p0, :cond_3f

    .line 175
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile id - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string p0, "Knox Profile exist on device"

    .line 178
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    .line 184
    :goto_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKnoxProfileExist status - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final lockContainer(Landroid/content/pm/UserInfo;)V
    .registers 6

    .line 219
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mTrustManager:Landroid/app/trust/TrustManager;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 221
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 223
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, p1, :cond_26

    .line 224
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaServiceProxy;->createPrimaryHomeIntent()Landroid/content/Intent;

    move-result-object p1

    .line 225
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_26
    return-void
.end method

.method public final maybeConnectContainerService(Lcom/android/server/ContainerServiceInfo;)Z
    .registers 7

    const-string v0, "PersonaManagerService::Proxy"

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectContainerService is called for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsDoEnabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-boolean v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaServiceProxy;->isKnoxProfileExist()Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_38

    :cond_30
    const-string p0, "PersonaManagerService::Proxy"

    const-string p1, "Not starting Container service..."

    .line 296
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_38
    :goto_38
    const-string v0, "PersonaManagerService::Proxy"

    const-string v2, "Starting Container service because either Do/Po exist on device..."

    .line 271
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_42
    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7b

    .line 274
    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ContainerServiceWrapper;

    .line 275
    invoke-virtual {v2}, Lcom/android/server/ContainerServiceWrapper;->isBound()Z

    move-result v2

    if-eqz v2, :cond_75

    const-string p0, "PersonaManagerService::Proxy"

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container service already bound "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    monitor-exit v0

    return v3

    .line 280
    :cond_75
    iget-object v2, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82

    :cond_7b
    const-string v2, "PersonaManagerService::Proxy"

    const-string v4, "Service don\'t exist on cache..."

    .line 282
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_82
    new-instance v2, Lcom/android/server/ContainerServiceWrapper;

    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0, p1}, Lcom/android/server/ContainerServiceWrapper;-><init>(Landroid/content/Context;Lcom/android/server/pm/PersonaServiceProxy;Lcom/android/server/ContainerServiceInfo;)V

    .line 287
    invoke-virtual {v2}, Lcom/android/server/ContainerServiceWrapper;->connect()Z

    move-result v4

    if-nez v4, :cond_ab

    const-string p0, "PersonaManagerService::Proxy"

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit v0

    return v1

    .line 292
    :cond_ab
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    monitor-exit v0

    return v3

    :catchall_b2
    move-exception p0

    .line 294
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_42 .. :try_end_b4} :catchall_b2

    throw p0
.end method

.method public final reconnectContainerService(Lcom/android/server/ContainerServiceInfo;)V
    .registers 5

    const-string v0, "PersonaManagerService::Proxy"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reconnectContainerService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_8c

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Lcom/android/server/ContainerServiceInfo;->userid:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_47

    const-string p0, "PersonaManagerService::Proxy"

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectService() user<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/ContainerServiceInfo;->userid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "> is not running"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    :try_start_47
    const-string/jumbo v0, "package"

    .line 255
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 254
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 256
    iget-object v1, p1, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/server/ContainerServiceInfo;->userid:I

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string p0, "PersonaManagerService::Proxy"

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not installed service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 261
    :cond_7b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaServiceProxy;->maybeConnectContainerService(Lcom/android/server/ContainerServiceInfo;)Z
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_7e} :catch_7f

    goto :goto_8b

    :catch_7f
    move-exception p0

    const-string p1, "PersonaManagerService::Proxy"

    const-string/jumbo v0, "reconnectService remote exception"

    .line 263
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_8b
    return-void

    :catchall_8c
    move-exception p0

    .line 247
    :try_start_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p0
.end method

.method public final registerContainerReceiver()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/pm/PersonaServiceProxy$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaServiceProxy$1;-><init>(Lcom/android/server/pm/PersonaServiceProxy;)V

    invoke-static {v0, v1}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    return-void
.end method

.method public final sendMessage(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10

    .line 358
    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    const-string p0, "PersonaManagerService::Proxy"

    const-string/jumbo p1, "sendProxyMessage() no container service"

    .line 360
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    monitor-exit v0

    return-object v2

    .line 364
    :cond_16
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 365
    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 366
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 367
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ContainerServiceInfo;

    .line 369
    iget-object v4, v3, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget v4, v3, Lcom/android/server/ContainerServiceInfo;->userid:I

    if-ne v4, p3, :cond_20

    const-string p0, "PersonaManagerService::Proxy"

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sending message:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ContainerServiceWrapper;

    goto :goto_69

    :cond_68
    move-object p0, v2

    .line 376
    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_10d

    if-eqz p0, :cond_e9

    if-nez p4, :cond_73

    .line 380
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_73
    const-string/jumbo p1, "knox.container.proxy.EXTRA_CALLING_UID"

    .line 383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "PersonaManagerService::Proxy"

    .line 384
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendProxyAgentMessage() Calling UID:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "knox.container.proxy.EXTRA_CALLING_PID"

    .line 385
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "PersonaManagerService::Proxy"

    .line 386
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendProxyAgentMessage() Calling PID:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p0, p2, p4}, Lcom/android/server/ContainerServiceWrapper;->onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "PersonaManagerService::Proxy"

    .line 389
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "result:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_d4

    const-string/jumbo p3, "null"

    goto :goto_de

    :cond_d4
    const-string p3, "android.intent.extra.RETURN_RESULT"

    .line 390
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_de
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 389
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_e9
    const-string p0, "PersonaManagerService::Proxy"

    .line 393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "service not found, name - "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "android.intent.extra.RETURN_RESULT"

    const/16 p2, 0x63

    .line 397
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :catchall_10d
    move-exception p0

    .line 376
    :try_start_10e
    monitor-exit v0
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_10d

    throw p0
.end method

.method public sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendProxyMessage() name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bundle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_19

    const-string/jumbo v1, "null"

    goto :goto_1d

    .line 349
    :cond_19
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaManagerService::Proxy"

    .line 348
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/PersonaServiceProxy;->sendMessage(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
