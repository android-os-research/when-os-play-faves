.class public Lcom/android/server/ServiceKeeper;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ServiceKeeper.java"


# static fields
.field public static final AUTHORIZE_POLICY_FILE:Ljava/io/File;

.field public static TAG:Ljava/lang/String; = "ServiceKeeper"

.field public static filteredAPIs:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static isActive:Z = false

.field public static loadFilesLockObject:Ljava/lang/Object;

.field public static mASKS:Lcom/android/server/asks/ASKSManagerService;

.field public static mPm:Landroid/content/pm/IPackageManager;

.field public static mSKLog:Lcom/android/server/SKLogger;

.field public static openMethodCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static serviceKeeper:Lcom/android/server/ServiceKeeper;

.field public static serviceTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/server/ServiceObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 37
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/selinux/sk/authorize.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ServiceKeeper;->AUTHORIZE_POLICY_FILE:Ljava/io/File;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ServiceKeeper;->loadFilesLockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string/jumbo p0, "package"

    .line 44
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    sput-object p0, Lcom/android/server/ServiceKeeper;->mPm:Landroid/content/pm/IPackageManager;

    const-string p0, "asks"

    .line 45
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/ASKSManagerService;

    sput-object p0, Lcom/android/server/ServiceKeeper;->mASKS:Lcom/android/server/asks/ASKSManagerService;

    return-void
.end method

.method public static authorizeLoadProcedure()Z
    .registers 2

    .line 70
    sget-object v0, Lcom/android/server/ServiceKeeper;->loadFilesLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_3
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    .line 73
    sget-object v1, Lcom/android/server/ServiceKeeper;->AUTHORIZE_POLICY_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ServiceKeeper;->loadFromAuthorizeFile(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_1c
    const/4 v1, 0x1

    .line 75
    monitor-exit v0

    return v1

    :catchall_1f
    move-exception v1

    .line 77
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public static checkForMethodAuthorization(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 312
    sget-object p0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    const/4 p1, 0x0

    const-string v0, " packageName = "

    const-string v1, " seInfo = "

    const-string v2, " method = "

    if-nez p0, :cond_36

    .line 313
    sget-object p0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking the method : ServiceTable is Null: service =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 317
    :cond_36
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_6b

    .line 321
    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p0, :cond_6a

    .line 322
    sget-object p0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking the method: Service is not in service keeper: service =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    return p1

    .line 327
    :cond_6b
    sget-object p0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ServiceObject;

    .line 328
    iget-boolean v3, p0, Lcom/android/server/ServiceObject;->isSterileService:Z

    if-eqz v3, :cond_a6

    .line 332
    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p0, :cond_a5

    .line 333
    sget-object p0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking the method: Service is sterile : service =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a5
    return p1

    .line 338
    :cond_a6
    iget-object p0, p0, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    .line 339
    invoke-virtual {p0, p5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_dd

    .line 343
    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p0, :cond_dc

    .line 344
    sget-object p0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking the method: Method not in service: service =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_dc
    return p1

    .line 349
    :cond_dd
    invoke-virtual {p0, p5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/MethodPermissionPackage;

    .line 350
    iget-boolean v3, p0, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    if-eqz v3, :cond_116

    .line 354
    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p0, :cond_115

    .line 355
    sget-object p0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking the method: Method is sterile: service =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_115
    return p1

    .line 361
    :cond_116
    iget-object v3, p0, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-virtual {v3, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_120

    return v4

    .line 367
    :cond_120
    iget-object p0, p0, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 368
    :cond_126
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_171

    .line 369
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageObject;

    .line 370
    iget-object v5, v3, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_126

    iget-object v3, v3, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 373
    sget-boolean p0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p0, :cond_170

    .line 374
    sget-object p0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object p1, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking the method: Package Name Match: service =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_170
    return v4

    :cond_171
    return p1
.end method

.method public static checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 385
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 388
    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    return v1

    .line 394
    :cond_d
    sget-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ServiceObject;

    .line 395
    iget-boolean v0, p0, Lcom/android/server/ServiceObject;->isSterileService:Z

    if-eqz v0, :cond_1a

    return v1

    .line 400
    :cond_1a
    iget-object v0, p0, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v0, v0, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    return v2

    .line 406
    :cond_26
    iget-object p0, p0, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object p0, p0, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 407
    :cond_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 408
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageObject;

    .line 409
    iget-object v3, v0, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v0, v0, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return v2

    :cond_4b
    return v1
.end method

.method public static createAuthorizationTables(Lorg/w3c/dom/Element;)Z
    .registers 15

    const-string/jumbo v0, "service"

    .line 111
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 112
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceTable()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 113
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getOpenMethodCache()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 115
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_151

    const/4 v0, 0x0

    move v2, v0

    .line 116
    :goto_1c
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_151

    .line 118
    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 120
    new-instance v4, Lcom/android/server/ServiceObject;

    invoke-direct {v4}, Lcom/android/server/ServiceObject;-><init>()V

    .line 121
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    const-string v7, "FilteredAPIs"

    .line 123
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v8, "method"

    if-eqz v7, :cond_88

    .line 124
    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 125
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_14d

    move v5, v0

    .line 126
    :goto_52
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_14d

    .line 127
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v1, :cond_85

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7, v3}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 128
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    invoke-interface {v7, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 129
    sget-object v8, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    :cond_88
    const-string/jumbo v7, "seinfo"

    .line 134
    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 136
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_d3

    .line 137
    iput-boolean v0, v4, Lcom/android/server/ServiceObject;->isSterileService:Z

    move v10, v0

    .line 138
    :goto_98
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v10, v11, :cond_d3

    .line 139
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-ne v11, v1, :cond_d0

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11, v3}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v11

    if-eqz v11, :cond_d0

    .line 140
    iget-object v11, v4, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v11, v11, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string/jumbo v13, "value"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d0
    add-int/lit8 v10, v10, 0x1

    goto :goto_98

    :cond_d3
    const-string/jumbo v9, "package"

    .line 144
    invoke-interface {v3, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 146
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-lez v10, :cond_130

    .line 147
    iput-boolean v0, v4, Lcom/android/server/ServiceObject;->isSterileService:Z

    move v10, v0

    .line 148
    :goto_e3
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v10, v11, :cond_130

    .line 149
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    if-ne v11, v1, :cond_12d

    .line 150
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11, v3}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v11

    if-eqz v11, :cond_12d

    .line 151
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    invoke-interface {v11, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 152
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    invoke-interface {v12, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 153
    new-instance v13, Lcom/android/server/PackageObject;

    invoke-direct {v13, v11, v12}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v11, v4, Lcom/android/server/ServiceObject;->servicePermissions:Lcom/android/server/PermissionPackage;

    iget-object v11, v11, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v11, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_12d
    add-int/lit8 v10, v10, 0x1

    goto :goto_e3

    .line 158
    :cond_130
    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 160
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-lez v6, :cond_13f

    .line 161
    iput-boolean v0, v4, Lcom/android/server/ServiceObject;->isSterileService:Z

    .line 162
    invoke-static {v3, v4, v5}, Lcom/android/server/ServiceKeeper;->processMethodsUnderService(Lorg/w3c/dom/NodeList;Lcom/android/server/ServiceObject;Ljava/lang/String;)Z

    .line 165
    :cond_13f
    sget-object v3, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_148

    return v0

    .line 171
    :cond_148
    sget-object v3, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1c

    :cond_151
    return v1
.end method

.method public static declared-synchronized getOpenMethodCache()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/ServiceKeeper;

    monitor-enter v0

    .line 56
    :try_start_3
    sget-object v1, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    if-nez v1, :cond_e

    .line 57
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    .line 59
    :cond_e
    sget-object v1, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    .line 441
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_9

    const-string p0, "android"

    return-object p0

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    const-string v1, "activity"

    .line 448
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 449
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_17

    goto :goto_35

    :catch_17
    move-exception p0

    .line 451
    sget-object p1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v1, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "occurs exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-object v0
.end method

.method public static getSeinfo(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .line 421
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v0, 0x0

    .line 423
    :try_start_5
    sget-object v1, Lcom/android/server/ServiceKeeper;->mPm:Landroid/content/pm/IPackageManager;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p0, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 424
    sget-object p1, Lcom/android/server/ServiceKeeper;->mASKS:Lcom/android/server/asks/ASKSManagerService;

    invoke-virtual {p1, p0}, Lcom/android/server/asks/ASKSManagerService;->getSEInfo(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 426
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1c} :catch_64
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_45

    .line 427
    :try_start_1c
    sget-boolean p1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz p1, :cond_3e

    .line 428
    sget-object p1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v0, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seinfo of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is changed by AASA"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3e} :catch_43
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3e} :catch_40

    :cond_3e
    move-object v0, v1

    goto :goto_6d

    :catch_40
    move-exception p0

    move-object v0, v1

    goto :goto_46

    :catch_43
    move-object v0, v1

    goto :goto_64

    :catch_45
    move-exception p0

    .line 434
    :goto_46
    sget-object p1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v1, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "occurs exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 432
    :catch_64
    :goto_64
    sget-object p0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object p1, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v1, "get App Info: failed"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    return-object v0
.end method

.method public static declared-synchronized getServiceKeeper()Lcom/android/server/ServiceKeeper;
    .registers 2

    const-class v0, Lcom/android/server/ServiceKeeper;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v1, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    if-nez v1, :cond_e

    .line 50
    new-instance v1, Lcom/android/server/ServiceKeeper;

    invoke-direct {v1}, Lcom/android/server/ServiceKeeper;-><init>()V

    sput-object v1, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    .line 52
    :cond_e
    sget-object v1, Lcom/android/server/ServiceKeeper;->serviceKeeper:Lcom/android/server/ServiceKeeper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getServiceTable()Ljava/util/Hashtable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/server/ServiceObject;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/ServiceKeeper;

    monitor-enter v0

    .line 63
    :try_start_3
    sget-object v1, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    if-nez v1, :cond_e

    .line 64
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;

    .line 66
    :cond_e
    sget-object v1, Lcom/android/server/ServiceKeeper;->serviceTable:Ljava/util/Hashtable;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I
    .registers 23

    move/from16 v1, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const-string v2, ":"

    const/4 v11, -0x1

    if-eqz v10, :cond_1a6

    if-nez v9, :cond_11

    goto/16 :goto_1a6

    :cond_11
    const/4 v12, 0x0

    .line 229
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne v1, v0, :cond_1f

    goto :goto_43

    .line 232
    :cond_1f
    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    sget-object v0, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_41} :catch_44

    if-eqz v0, :cond_61

    :cond_43
    :goto_43
    return v12

    :catch_44
    move-exception v0

    .line 236
    sget-object v3, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v4, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in getting from openCache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    :cond_61
    sget-boolean v0, Lcom/android/server/ServiceKeeper;->isActive:Z

    if-nez v0, :cond_6f

    .line 241
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v1, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v2, "The Service Keeper isn\'t prepared"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 247
    :cond_6f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 249
    invoke-static/range {p0 .. p1}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "pid = "

    const-string v15, " uid = "

    const-string v7, " method = "

    if-nez v13, :cond_b4

    .line 251
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    invoke-static/range {p4 .. p4}, Lcom/android/server/ServiceKeeper;->isFilterAPI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 253
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking the permission : Package Name is returned with null : Exiting : service =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b3
    return v11

    .line 259
    :cond_b4
    invoke-static {v13, v8}, Lcom/android/server/ServiceKeeper;->getSeinfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "Checking the permission : occurs exception"

    if-eqz v0, :cond_11c

    .line 262
    :try_start_bc
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11c

    .line 263
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 264
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_f9

    .line 265
    sget-object v5, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v11, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v7

    const-string v7, "Checking the permission : pkgName = "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", seInfo = "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", orgSeinfo[0] = "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-object v0, v2, v7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_fc

    :cond_f9
    move-object/from16 v16, v7

    move v5, v12

    .line 267
    :goto_fc
    aget-object v0, v2, v5
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_fe} :catch_ff

    goto :goto_11e

    :catch_ff
    move-exception v0

    .line 270
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_11c
    move-object/from16 v16, v7

    :goto_11e
    move-object v11, v0

    .line 274
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    :try_start_122
    invoke-static {v9, v11, v13}, Lcom/android/server/ServiceKeeper;->checkForServiceAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_126} :catch_142

    if-nez v0, :cond_140

    move-object/from16 v2, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move-object v12, v6

    move-object v6, v13

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    move-object/from16 v7, p4

    :try_start_137
    invoke-static/range {v2 .. v7}, Lcom/android/server/ServiceKeeper;->checkForMethodAuthorization(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_13b} :catch_13e

    if-eqz v0, :cond_162

    goto :goto_140

    :catch_13e
    move-exception v0

    goto :goto_148

    :cond_140
    :goto_140
    const/4 v1, 0x0

    return v1

    :catch_142
    move-exception v0

    move-object v12, v6

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    .line 280
    :goto_148
    sget-object v2, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v3, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_162
    invoke-static/range {p4 .. p4}, Lcom/android/server/ServiceKeeper;->isFilterAPI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a4

    .line 284
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking the permission : No match found : Exiting : service =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkgName = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " seinfo = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a4
    const/4 v1, -0x1

    return v1

    :cond_1a6
    :goto_1a6
    move v1, v11

    .line 224
    sget-object v0, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    const-string v3, "Checking the permission : service is null or method is null"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isFilterAPI(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 292
    :goto_2
    :try_start_2
    sget-object v2, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 293
    sget-object v2, Lcom/android/server/ServiceKeeper;->filteredAPIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 294
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_1d

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_1d
    move-exception p0

    .line 299
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking the filtered api : occurs errors."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return v0
.end method

.method public static isTableActive()Z
    .registers 1

    .line 305
    sget-boolean v0, Lcom/android/server/ServiceKeeper;->isActive:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public static loadFromAuthorizeFile(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 84
    :cond_4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 88
    :try_start_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    .line 90
    invoke-virtual {p0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v1, "policy"

    .line 93
    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 95
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    .line 97
    invoke-static {p0}, Lcom/android/server/ServiceKeeper;->createAuthorizationTables(Lorg/w3c/dom/Element;)Z

    move-result p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_34

    if-nez p0, :cond_30

    return v0

    :cond_30
    const/4 p0, 0x1

    .line 105
    sput-boolean p0, Lcom/android/server/ServiceKeeper;->isActive:Z

    return p0

    :catch_34
    move-exception p0

    .line 101
    sget-object v1, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v2, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadFromAuthorizeFile occurs exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static processMethodsUnderService(Lorg/w3c/dom/NodeList;Lcom/android/server/ServiceObject;Ljava/lang/String;)Z
    .registers 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    move v3, v2

    .line 179
    :goto_6
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_105

    move-object/from16 v4, p0

    .line 181
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 183
    new-instance v6, Lcom/android/server/MethodPermissionPackage;

    invoke-direct {v6}, Lcom/android/server/MethodPermissionPackage;-><init>()V

    .line 184
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string/jumbo v8, "name"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "seinfo"

    .line 186
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 187
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lez v11, :cond_ad

    .line 188
    iput-boolean v2, v6, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    move v11, v2

    .line 189
    :goto_38
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v11, v12, :cond_ad

    .line 190
    iget-object v12, v6, Lcom/android/server/PermissionPackage;->seinfos:Ljava/util/HashSet;

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    const-string/jumbo v14, "value"

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    invoke-interface {v12, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    const-string v13, "_open"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a9

    .line 192
    sget-boolean v12, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    const-string v13, ":"

    if-eqz v12, :cond_92

    .line 193
    sget-object v12, Lcom/android/server/ServiceKeeper;->mSKLog:Lcom/android/server/SKLogger;

    sget-object v14, Lcom/android/server/ServiceKeeper;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding open method entry - "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v14, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_92
    sget-object v2, Lcom/android/server/ServiceKeeper;->openMethodCache:Ljava/util/HashSet;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a9
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    goto :goto_38

    :cond_ad
    const-string/jumbo v2, "package"

    .line 199
    invoke-interface {v5, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 200
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_f1

    const/4 v5, 0x0

    .line 201
    iput-boolean v5, v6, Lcom/android/server/MethodPermissionPackage;->isSterileMethod:Z

    const/4 v5, 0x0

    .line 202
    :goto_be
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v5, v10, :cond_f1

    .line 203
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 204
    invoke-interface {v2, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    invoke-interface {v11, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 205
    new-instance v12, Lcom/android/server/PackageObject;

    invoke-direct {v12, v10, v11}, Lcom/android/server/PackageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v10, v6, Lcom/android/server/PermissionPackage;->packages:Ljava/util/HashSet;

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    .line 210
    :cond_f1
    iget-object v2, v0, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    invoke-virtual {v2, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_fb

    const/4 v2, 0x0

    return v2

    :cond_fb
    const/4 v2, 0x0

    .line 216
    iget-object v5, v0, Lcom/android/server/ServiceObject;->serviceMethods:Ljava/util/Hashtable;

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_105
    const/4 v0, 0x1

    return v0
.end method
