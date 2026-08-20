.class public Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"

# interfaces
.implements Lcom/android/server/enterprise/adapter/IPackageManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$MyPackageMonitor;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageManagerAdapter"

.field public static mContext:Landroid/content/Context;

.field public static mIPackageManager:Landroid/content/pm/IPackageManager;

.field public static mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;


# direct methods
.method public static synthetic $r8$lambda$KGT7pUv_o66moqVk8mDIxjQG_yY(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->lambda$installExistingPackageAsUserForMDM$0(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    monitor-enter v0

    .line 113
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-nez v1, :cond_1d

    .line 114
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    .line 115
    new-instance p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;-><init>()V

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const-string/jumbo p0, "package"

    .line 117
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 116
    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 120
    :cond_1d
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v0

    return-object p0

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .registers 3

    .line 395
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 397
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    .line 398
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 405
    :try_start_f
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 407
    invoke-static {v0, p0}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_18
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_f .. :try_end_18} :catch_19

    :cond_18
    return-object v0

    :catch_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserRestrictions(ILjava/lang/String;Z)Z
    .registers 8

    const-string v0, ", "

    const-string v1, "PackageManagerAdapter"

    .line 533
    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 534
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v2

    .line 535
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_3f

    :catch_1d
    move-exception v2

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserRestrictions() failed. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, p2

    :goto_3f
    if-eq v2, p2, :cond_64

    .line 541
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserRestrictions("

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return v2
.end method

.method public static getUsers(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 553
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    goto :goto_f

    .line 105
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_10

    if-lez v1, :cond_f

    move-object v0, p0

    :cond_f
    :goto_f
    return-object v0

    :catch_10
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PackageManagerAdapter"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static synthetic lambda$installExistingPackageAsUserForMDM$0(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 504
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/high16 v3, 0x400000

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearApplicationCacheFiles(Ljava/lang/String;)Z
    .registers 5

    .line 125
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    .line 127
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver-IA;)V

    .line 129
    :try_start_d
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, v1}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 131
    monitor-enter v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_30

    .line 132
    :catch_13
    :goto_13
    :try_start_13
    iget-boolean p0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->finished:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_2d

    if-nez p0, :cond_1b

    .line 134
    :try_start_17
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_13
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2d

    goto :goto_13

    .line 138
    :cond_1b
    :try_start_1b
    iget-boolean p0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->success:Z

    const/4 v2, 0x1

    if-ne v2, p0, :cond_29

    iget-object p0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->packageName:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2a

    :cond_29
    move v2, v0

    .line 144
    :goto_2a
    monitor-exit v1

    move v0, v2

    goto :goto_3a

    :catchall_2d
    move-exception p0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_30} :catch_30

    :catch_30
    move-exception p0

    const-string p1, "PackageManagerAdapter"

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_3a
    return v0
.end method

.method public clearUserData(Ljava/lang/String;)Z
    .registers 5

    .line 206
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5c

    .line 208
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver-IA;)V

    .line 210
    :try_start_d
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    .line 211
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 212
    invoke-virtual {p0, p1, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result p0

    if-nez p0, :cond_34

    const-string p0, "PackageManagerAdapter"

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t clear application user data for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 218
    :cond_34
    monitor-enter v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_35} :catch_52

    .line 219
    :catch_35
    :goto_35
    :try_start_35
    iget-boolean p0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_4f

    if-nez p0, :cond_3d

    .line 221
    :try_start_39
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_35
    .catchall {:try_start_39 .. :try_end_3c} :catchall_4f

    goto :goto_35

    .line 225
    :cond_3d
    :try_start_3d
    iget-boolean p0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z

    const/4 v2, 0x1

    if-ne v2, p0, :cond_4b

    iget-object p0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->packageName:Ljava/lang/String;

    .line 226
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v0

    .line 231
    :goto_4c
    monitor-exit v1

    move v0, v2

    goto :goto_5c

    :catchall_4f
    move-exception p0

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_4f

    :try_start_51
    throw p0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_52} :catch_52

    :catch_52
    move-exception p0

    const-string p1, "PackageManagerAdapter"

    .line 235
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return v0
.end method

.method public clearUserData(Ljava/lang/String;I)Z
    .registers 6

    .line 170
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_56

    .line 172
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver-IA;)V

    .line 174
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result p0

    if-nez p0, :cond_2e

    const-string p0, "PackageManagerAdapter"

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t clear application user data for package: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 181
    :cond_2e
    monitor-enter v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2f} :catch_4c

    .line 182
    :catch_2f
    :goto_2f
    :try_start_2f
    iget-boolean p0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_49

    if-nez p0, :cond_37

    .line 184
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_2f
    .catchall {:try_start_33 .. :try_end_36} :catchall_49

    goto :goto_2f

    .line 188
    :cond_37
    :try_start_37
    iget-boolean p0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z

    const/4 p2, 0x1

    if-ne p2, p0, :cond_45

    iget-object p0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->packageName:Ljava/lang/String;

    .line 189
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_45

    goto :goto_46

    :cond_45
    move p2, v0

    .line 194
    :goto_46
    monitor-exit v1

    move v0, p2

    goto :goto_56

    :catchall_49
    move-exception p0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_49

    :try_start_4b
    throw p0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception p0

    const-string p1, "PackageManagerAdapter"

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_56
    return v0
.end method

.method public deletePackage(Ljava/lang/String;I)Z
    .registers 4

    .line 280
    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 282
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 284
    monitor-enter v0

    .line 285
    :catch_f
    :goto_f
    :try_start_f
    iget-boolean p0, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->finished:Z
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1b

    if-nez p0, :cond_17

    .line 287
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_f
    .catchall {:try_start_13 .. :try_end_16} :catchall_1b

    goto :goto_f

    .line 291
    :cond_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_1b

    .line 293
    iget-boolean p0, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->result:Z

    return p0

    :catchall_1b
    move-exception p0

    .line 291
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public deletePackageAsUser(Ljava/lang/String;II)Z
    .registers 11

    .line 260
    :try_start_0
    new-instance v6, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;

    invoke-direct {v6, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    .line 261
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, -0x1

    move-object v1, p1

    move-object v3, v6

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    .line 263
    monitor-enter v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_1f

    .line 264
    :catch_10
    :goto_10
    :try_start_10
    iget-boolean p0, v6, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->finished:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_1c

    if-nez p0, :cond_18

    .line 266
    :try_start_14
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_10
    .catchall {:try_start_14 .. :try_end_17} :catchall_1c

    goto :goto_10

    .line 270
    :cond_18
    :try_start_18
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_1c

    .line 271
    :try_start_19
    iget-boolean p0, v6, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->result:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1b} :catch_1f

    goto :goto_24

    :catchall_1c
    move-exception p0

    .line 270
    :try_start_1d
    monitor-exit v6
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception p0

    .line 273
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "appwidget"

    .line 492
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 491
    invoke-static {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 494
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 495
    invoke-interface {p0, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    .line 496
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .registers 5

    .line 345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 347
    :try_start_4
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_10
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 352
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    goto :goto_19

    :catch_10
    move-exception p0

    .line 349
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_e

    const/4 p0, 0x0

    .line 352
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    throw p0
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 337
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    int-to-long v0, p2

    invoke-interface {p0, p1, v0, v1, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_d

    :catch_8
    move-exception p0

    .line 339
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .registers 3

    .line 373
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception p0

    .line 375
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 314
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    int-to-long v0, p1

    invoke-interface {p0, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception p0

    const/4 p1, 0x0

    .line 318
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, p1

    :goto_12
    return-object p0
.end method

.method public getInstalledWidgetProviders(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "appwidget"

    .line 433
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 432
    invoke-static {v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 436
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 437
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/16 v5, 0x301

    const/4 v6, 0x0

    .line 441
    invoke-interface {v1, v5, p1, v6}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(IIZ)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 444
    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_26
    if-nez p1, :cond_7e

    .line 453
    sget-object v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    .line 454
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    if-eqz v7, :cond_7e

    .line 456
    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7e

    .line 457
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7e

    .line 458
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_45
    :goto_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 459
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    if-eq v9, p1, :cond_45

    .line 460
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isUserRunningAndUnlocked(I)Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_72

    new-array v9, v10, [Ljava/lang/Object;

    .line 461
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 464
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v6

    const-string v8, "cannot getAllProvidersForProfile for user %s because it is in locked state"

    .line 461
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "PackageManagerAdapter"

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 467
    :cond_72
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, v5, v8, v10}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(IIZ)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_45

    .line 470
    invoke-interface {v4, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_45

    .line 478
    :cond_7e
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_87

    .line 479
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 481
    :cond_87
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8c

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .registers 6

    .line 422
    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    int-to-long v0, p2

    invoke-interface {p0, p1, v0, v1, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_d

    :catch_8
    move-exception p0

    .line 424
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method

.method public installExistingPackageAsUserForMDM(Ljava/lang/String;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    new-instance p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isApplicationInstalled(Ljava/lang/String;I)Z
    .registers 7

    .line 560
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/16 v2, 0x80

    const/4 v3, 0x0

    .line 564
    :try_start_b
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_1b
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    if-eqz p0, :cond_12

    const/4 v3, 0x1

    .line 573
    :cond_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 574
    throw p0

    .line 573
    :catch_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public final isUserRunningAndUnlocked(I)Z
    .registers 3

    .line 547
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 548
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z
    .registers 14

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 360
    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_18
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    const/4 p0, 0x1

    .line 366
    :goto_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    throw p0

    :catch_18
    const/4 p0, 0x0

    goto :goto_f
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)Z
    .registers 7

    .line 383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 385
    :try_start_4
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_13
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 389
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    goto :goto_17

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    throw p0

    :catch_13
    const/4 p0, 0x0

    .line 389
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_17
    return p0
.end method
