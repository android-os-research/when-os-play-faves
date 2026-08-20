.class public Lcom/android/server/SEAMService;
.super Lcom/samsung/android/knox/seams/ISEAMS$Stub;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SEAMService$BrHandler;
    }
.end annotation


# static fields
.field public static final DDC_DIR:Ljava/lang/String; = "/data/seams/ddc/"

.field public static final DDC_SEANDROID_FILE:Ljava/lang/String; = "/data/seams/ddc/mac_permissions.xml"

.field public static SELF_PID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SEAMService"

.field public static mInstance:Lcom/android/server/SEAMSContainer;

.field public static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/SEAMService$BrHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mLock:Ljava/lang/Object;

.field public final mSKHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSKHandler(Lcom/android/server/SEAMService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmSKLog()Lcom/android/server/SKLogger;
    .registers 1

    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 48
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/knox/seams/ISEAMS$Stub;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    iput-object v0, p0, Lcom/android/server/SEAMService;->mLock:Ljava/lang/Object;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/SEAMService;->mSKHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/android/server/SEAMSContainer;

    invoke-direct {v0, p1}, Lcom/android/server/SEAMSContainer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/SEAMService;->mInstance:Lcom/android/server/SEAMSContainer;

    .line 62
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "SEAMService"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/SEAMService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 63
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v1, Lcom/android/server/SEAMService$BrHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/android/server/SEAMService$BrHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/SEAMService;->mHandler:Lcom/android/server/SEAMService$BrHandler;

    .line 68
    new-instance p1, Lcom/android/server/SEAMService$1;

    const-string v1, "Service Keeper Thread"

    invoke-direct {p1, p0, v1}, Lcom/android/server/SEAMService$1;-><init>(Lcom/android/server/SEAMService;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 83
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    sput p0, Lcom/android/server/SEAMService;->SELF_PID:I

    .line 86
    :try_start_3f
    new-instance p0, Ljava/io/File;

    const-string p1, "/data/seams/ddc/"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance p1, Ljava/io/File;

    const-string v1, "/data/seams/ddc/mac_permissions.xml"

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7c

    .line 89
    sget-boolean p1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p1, :cond_72

    .line 90
    sget-object p1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist. Creating dir"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_72
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 93
    invoke-virtual {p0, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 94
    invoke-virtual {p0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    goto :goto_a1

    .line 96
    :cond_7c
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_a1

    .line 97
    invoke-static {v2}, Lcom/android/server/pm/SELinuxMMAC;->setDDCFlag(Z)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_85} :catch_86

    goto :goto_a1

    :catch_86
    move-exception p0

    .line 101
    sget-object p1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEAMService occurs exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    :goto_a1
    return-void
.end method

.method public static getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public static processDeniedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .registers 5

    return-void
.end method


# virtual methods
.method public activateDomain(Z)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 5

    const/4 p0, -0x1

    return p0
.end method

.method public changeAppDomain(Ljava/lang/String;Z)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public createSEContainer()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public deActivateDomain()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public getAMSMode(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V
    .registers 6

    return-void
.end method

.method public getAVCLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivationStatus()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getDataType(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDomain(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSEAMSLog(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSEContainerIDs()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSELinuxMode(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final getSeinfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 732
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string/jumbo v2, "package"

    .line 735
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "SEAMService"

    if-nez p1, :cond_20

    .line 738
    sget-object p0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "get App Info: packageName is null"

    invoke-virtual {p0, v4, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_20
    :try_start_20
    const-string v5, "SEAMS"

    const-string/jumbo v6, "getSeinfo"

    .line 743
    invoke-virtual {p0, v1, v0, v5, v6}, Lcom/android/server/SEAMService;->isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_34

    .line 744
    sget-object p0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "get App Info: callingPkg don\'t has the permission."

    invoke-virtual {p0, v4, p1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_62

    return-object v3

    :cond_34
    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 748
    :try_start_37
    invoke-interface {v2, p1, v0, v1, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3d} :catch_3e

    return-object p0

    :catch_3e
    move-exception p0

    .line 750
    :try_start_3f
    sget-object v0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get App Info: failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_61} :catch_62

    return-object v3

    :catch_62
    move-exception p0

    .line 754
    sget-object p1, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get App(pm) Info: failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public getSepolicyVersion(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignatureFromCertificate([B)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasKnoxContainers()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public hasSEContainers()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 828
    sget v0, Lcom/android/server/SEAMService;->SELF_PID:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    return v1

    .line 831
    :cond_6
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    .line 832
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 833
    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p0, :cond_1c

    .line 834
    sget-object p0, Lcom/android/server/SEAMService;->mSKLog:Lcom/android/server/SKLogger;

    const-string p1, "SEAMService"

    const-string p2, "Returning 0 directly as tables are not ready in SK."

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return v1

    .line 838
    :cond_1d
    iget-object p0, p0, Lcom/android/server/SEAMService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isSEPolicyAutoUpdateEnabled(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public loadContainerSetting(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public final processAVCLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .registers 6

    return-void
.end method

.method public final processAllowedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public relabelAppDir(Ljava/lang/String;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public relabelData(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 5

    const/4 p0, -0x1

    return p0
.end method

.method public removeSEContainer(I)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public setAMSLogLevel(Lcom/samsung/android/knox/ContextInfo;I)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method

.method public final setMdmPropertiesLocked(II)V
    .registers 3

    return-void
.end method

.method public setSEAndroidLogDumpStateInclude(Lcom/samsung/android/knox/ContextInfo;Z)I
    .registers 3

    const/4 p0, -0x1

    return p0
.end method
