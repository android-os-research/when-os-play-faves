.class public final Lcom/gsma/services/rcs/upload/FileUploadService;
.super Lcom/gsma/services/rcs/RcsService;
.source "FileUploadService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAKE_PERSISTABLE_URI_PERMISSION_METHOD_NAME:Ljava/lang/String; = "takePersistableUriPermission"

.field private static final TAKE_PERSISTABLE_URI_PERMISSION_PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private api:Lcom/gsma/services/rcs/upload/IFileUploadService;

.field private apiConnection:Landroid/content/ServiceConnection;

.field private final mapForFileUploadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/upload/FileUploadListener;",
            "Lcom/gsma/services/rcs/upload/IFileUploadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gsma/services/rcs/upload/FileUploadService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 47
    const-class v0, Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUploadService;->LOG_TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/net/Uri;

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUploadService;->TAKE_PERSISTABLE_URI_PERMISSION_PARAM_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mapForFileUploadListener:Ljava/util/Map;

    .line 114
    new-instance v0, Lcom/gsma/services/rcs/upload/FileUploadService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/upload/FileUploadService$1;-><init>(Lcom/gsma/services/rcs/upload/FileUploadService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->apiConnection:Landroid/content/ServiceConnection;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/upload/FileUploadService;

    .line 46
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/upload/FileUploadService;

    .line 46
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/upload/FileUploadService;

    .line 46
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/upload/FileUploadService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/upload/FileUploadService;

    .line 46
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method private grantUriPermissionToStackServices(Landroid/net/Uri;)V
    .registers 9
    .param p1, "file"    # Landroid/net/Uri;

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "fileTransferServiceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 140
    .local v1, "stackServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 141
    .local v3, "stackService":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p1, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 142
    .end local v3    # "stackService":Landroid/content/pm/ResolveInfo;
    goto :goto_1a

    .line 143
    :cond_31
    return-void
.end method

.method private takePersistableUriPermission(Landroid/net/Uri;)V
    .registers 7
    .param p1, "file"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "takePersistableUriPermission"

    sget-object v3, Lcom/gsma/services/rcs/upload/FileUploadService;->TAKE_PERSISTABLE_URI_PERMISSION_PARAM_TYPES:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 156
    .local v1, "takePersistableUriPermissionMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    .line 157
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 158
    .local v2, "methodArgs":[Ljava/lang/Object;
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_25

    .line 161
    nop

    .line 162
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "takePersistableUriPermissionMethod":Ljava/lang/reflect/Method;
    .end local v2    # "methodArgs":[Ljava/lang/Object;
    return-void

    .line 159
    :catch_25
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private tryToGrantAndPersistUriPermission(Landroid/net/Uri;)V
    .registers 4
    .param p1, "file"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 173
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/upload/FileUploadService;->grantUriPermissionToStackServices(Landroid/net/Uri;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/upload/FileUploadService;->takePersistableUriPermission(Landroid/net/Uri;)V

    .line 179
    :cond_12
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/upload/FileUploadListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/upload/FileUploadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_21

    .line 296
    move-object v0, p1

    .line 297
    .local v0, "callBackListener":Lcom/gsma/services/rcs/upload/FileUploadListener;
    :try_start_5
    new-instance v1, Lcom/gsma/services/rcs/upload/FileUploadService$2;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/upload/FileUploadService$2;-><init>(Lcom/gsma/services/rcs/upload/FileUploadService;Lcom/gsma/services/rcs/upload/FileUploadListener;)V

    .line 314
    .local v1, "interfaceListener":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->addFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

    .line 315
    iget-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mapForFileUploadListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_16

    .line 318
    nop

    .line 322
    .end local v0    # "callBackListener":Lcom/gsma/services/rcs/upload/FileUploadListener;
    .end local v1    # "interfaceListener":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    return-void

    .line 316
    :catch_16
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_21
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public canUploadFile()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_14

    .line 189
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUploadService;->canUploadFile()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 190
    :catch_9
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public connect()V
    .registers 6

    .line 76
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 77
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_56

    .line 81
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v3, "com.sec.imsservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    .line 83
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 81
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 85
    .local v1, "bSuc":Z
    sget-object v2, Lcom/gsma/services/rcs/upload/FileUploadService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to FileUpload service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 78
    .end local v1    # "bSuc":Z
    :cond_56
    :goto_56
    sget-object v1, Lcom/gsma/services/rcs/upload/FileUploadService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TAPI is not available or not activated!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method public disconnect()V
    .registers 3

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 94
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUploadService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_e} :catch_f

    .line 98
    goto :goto_13

    .line 95
    :catch_f
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_13
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_14

    .line 206
    :try_start_4
    invoke-interface {v0}, Lcom/gsma/services/rcs/upload/IFileUploadService;->getConfiguration()Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    .line 207
    :catch_9
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getFileUpload(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/FileUpload;
    .registers 5
    .param p1, "uploadId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_1d

    .line 274
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->getFileUpload(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v0

    .line 275
    .local v0, "uploadIntf":Lcom/gsma/services/rcs/upload/IFileUpload;
    if-eqz v0, :cond_10

    .line 276
    new-instance v1, Lcom/gsma/services/rcs/upload/FileUpload;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/upload/FileUpload;-><init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 278
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 280
    .end local v0    # "uploadIntf":Lcom/gsma/services/rcs/upload/IFileUpload;
    :catch_12
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getFileUploads()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/upload/FileUpload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_39

    .line 250
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 251
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/upload/FileUpload;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/upload/IFileUploadService;->getFileUploads()Ljava/util/List;

    move-result-object v1

    .line 252
    .local v1, "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 253
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Lcom/gsma/services/rcs/upload/FileUpload;

    invoke-static {v3}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gsma/services/rcs/upload/FileUpload;-><init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V

    .line 254
    .local v4, "upload":Lcom/gsma/services/rcs/upload/FileUpload;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2e

    .line 255
    nop

    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "upload":Lcom/gsma/services/rcs/upload/FileUpload;
    goto :goto_13

    .line 256
    :cond_2d
    return-object v0

    .line 257
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/upload/FileUpload;>;"
    .end local v1    # "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_2e
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_39
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/upload/FileUploadListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/upload/FileUploadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_25

    .line 332
    :try_start_4
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mapForFileUploadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/upload/IFileUploadListener;

    .line 333
    .local v0, "interfaceListener":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    if-eqz v0, :cond_13

    .line 334
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/upload/IFileUploadService;->removeFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V

    .line 336
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->mapForFileUploadListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_1a

    .line 339
    nop

    .line 343
    .end local v0    # "interfaceListener":Lcom/gsma/services/rcs/upload/IFileUploadListener;
    return-void

    .line 337
    :catch_1a
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "api"    # Landroid/os/IInterface;

    .line 106
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/upload/IFileUploadService;

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    .line 109
    return-void
.end method

.method public uploadFile(Landroid/net/Uri;Z)Lcom/gsma/services/rcs/upload/FileUpload;
    .registers 6
    .param p1, "file"    # Landroid/net/Uri;
    .param p2, "fileicon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadService;->api:Lcom/gsma/services/rcs/upload/IFileUploadService;

    if-eqz v0, :cond_1d

    .line 228
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/upload/IFileUploadService;->uploadFile(Landroid/net/Uri;Z)Lcom/gsma/services/rcs/upload/IFileUpload;

    move-result-object v0

    .line 229
    .local v0, "uploadIntf":Lcom/gsma/services/rcs/upload/IFileUpload;
    if-eqz v0, :cond_10

    .line 230
    new-instance v1, Lcom/gsma/services/rcs/upload/FileUpload;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/upload/FileUpload;-><init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 232
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 234
    .end local v0    # "uploadIntf":Lcom/gsma/services/rcs/upload/IFileUpload;
    :catch_12
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
