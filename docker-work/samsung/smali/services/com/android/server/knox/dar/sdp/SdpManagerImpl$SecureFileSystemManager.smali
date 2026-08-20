.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecureFileSystemManager"
.end annotation


# static fields
.field public static final TAG_SECURE_FS:Ljava/lang/String; = "SecureFS.SDP"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public static synthetic $r8$lambda$5k0TXj4mxvkvxXOEeKBZZwR5hEo(ILjava/lang/String;Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->lambda$removePkgDir$1(ILjava/lang/String;Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8bqtlm-Pil576T0CDHr6qEO9AEk(Ljava/lang/String;ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->lambda$createPkgDir$0(Ljava/lang/String;ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$We-CszQplBM5fjoo0ezp7jgM1I4(ILjava/io/File;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->lambda$setBaseDataUserDir$2(ILjava/io/File;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremovePkgDir(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;ILjava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->removePkgDir(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msecureFileSystemManagerReady(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->secureFileSystemManagerReady()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Landroid/content/Context;)V
    .registers 3

    .line 4124
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4125
    iput-object p2, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Landroid/content/Context;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$createPkgDir$0(Ljava/lang/String;ILcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .registers 3

    .line 4134
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->createEncAppData(Ljava/lang/String;I)Z

    move-result p0

    .line 4133
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$removePkgDir$1(ILjava/lang/String;Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;)Ljava/lang/Boolean;
    .registers 3

    .line 4149
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/PackageManagerService$IPackageManagerImpl;->removeEncPkgDir(ILjava/lang/String;)Z

    move-result p0

    .line 4148
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$setBaseDataUserDir$2(ILjava/io/File;Lcom/android/server/knox/dar/sdp/SdpManagerInternal;)Ljava/lang/Boolean;
    .registers 3

    .line 4175
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;->setSdpPolicyToPath(ILjava/lang/String;)Z

    move-result p0

    .line 4174
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createPkgDir(ILjava/lang/String;)Z
    .registers 6

    .line 4130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4132
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    .line 4133
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetPackageManagerImpl(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 4134
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4132
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 4138
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final removePkgDir(ILjava/lang/String;)Z
    .registers 6

    .line 4145
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4147
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    .line 4148
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetPackageManagerImpl(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda1;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 4149
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4147
    invoke-static {p0}, Lcom/android/server/knox/dar/SecureUtil;->isFailed(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 4153
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final secureFileSystemManagerReady()V
    .registers 3

    .line 4187
    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 4189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 4190
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->secureFileSystemManagerReady(I)V

    goto :goto_e

    :cond_20
    return-void
.end method

.method public final secureFileSystemManagerReady(I)V
    .registers 3

    if-nez p1, :cond_1f

    .line 4196
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->setBaseDataUserDir(I)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 4197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "systemReady :: Error - Failed to set up base directory for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecureFS.SDP"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public final setBaseDataUserDir(I)Z
    .registers 8

    .line 4162
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/enc_user"

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "SecureFS.SDP"

    if-nez v1, :cond_89

    .line 4164
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_30

    .line 4166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBaseDataUserDir :: Error - user dir creation failed... "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_8a

    .line 4170
    :cond_30
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    const/4 v5, -0x1

    .line 4169
    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 4174
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetSdpManagerInternal(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;

    move-result-object p0

    new-instance v3, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, v0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SecureFileSystemManager$$ExternalSyntheticLambda2;-><init>(ILjava/io/File;)V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 4175
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 4174
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_70

    .line 4176
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully set sdp policy to "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_8a

    .line 4178
    :cond_70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set sdp policy to "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_8a

    :cond_89
    const/4 v1, 0x1

    .line 4182
    :goto_8a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setBaseDataUserDir :: User "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
