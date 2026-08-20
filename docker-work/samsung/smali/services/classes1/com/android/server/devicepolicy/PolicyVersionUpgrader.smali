.class public Lcom/android/server/devicepolicy/PolicyVersionUpgrader;
.super Ljava/lang/Object;
.source "PolicyVersionUpgrader.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManager"

.field public static final VERBOSE_LOG:Z = false


# instance fields
.field public final mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

.field public final mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 63
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    return-void
.end method


# virtual methods
.method public final getOwnerForUser(Lcom/android/server/devicepolicy/OwnersData;I)Landroid/content/ComponentName;
    .registers 4

    .line 213
    iget p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    if-ne p0, p2, :cond_b

    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p0, :cond_b

    .line 214
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_27

    .line 215
    :cond_b
    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 216
    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return-object p0
.end method

.method public final getVersionFile()Lcom/android/internal/util/JournaledFile;
    .registers 2

    .line 240
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makePoliciesVersionJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    return-object p0
.end method

.method public final loadAllUsersData([IILcom/android/server/devicepolicy/OwnersData;)Landroid/util/SparseArray;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II",
            "Lcom/android/server/devicepolicy/OwnersData;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 203
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_19

    aget v3, p1, v2

    .line 204
    invoke-virtual {p0, p3, v3}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getOwnerForUser(Lcom/android/server/devicepolicy/OwnersData;I)Landroid/content/ComponentName;

    move-result-object v4

    .line 205
    invoke-virtual {p0, v3, p2, v4}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadDataForUser(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    return-object v0
.end method

.method public final loadDataForUser(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/DevicePolicyData;
    .registers 6

    .line 223
    new-instance p2, Lcom/android/server/devicepolicy/DevicePolicyData;

    invoke-direct {p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyData;-><init>(I)V

    .line 224
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 225
    invoke-interface {v0}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->storageManagerIsFileBasedEncryptionEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 226
    invoke-interface {v1, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 227
    invoke-interface {p0, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getAdminInfoSupplier(I)Ljava/util/function/Function;

    move-result-object p0

    .line 224
    invoke-static {p2, v0, v1, p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyData;->load(Lcom/android/server/devicepolicy/DevicePolicyData;ZLcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V

    return-object p2
.end method

.method public final loadOwners([I)Lcom/android/server/devicepolicy/OwnersData;
    .registers 3

    .line 174
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData;

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/OwnersData;-><init>(Lcom/android/server/devicepolicy/PolicyPathProvider;)V

    .line 175
    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/OwnersData;->load([I)V

    return-object v0
.end method

.method public final readVersion()I
    .registers 4

    .line 244
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getVersionFile()Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    .line 252
    :try_start_9
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 251
    invoke-static {p0, v1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    .line 252
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 253
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1f} :catch_20
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_1f} :catch_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_1f} :catch_20

    return p0

    :catch_20
    move-exception p0

    const-string v1, "DevicePolicyManager"

    const-string v2, "Error reading version"

    .line 255
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public upgradePolicy(I)V
    .registers 11

    .line 71
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->readVersion()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "DevicePolicyManager"

    const/4 v4, 0x1

    if-lt v0, p1, :cond_23

    new-array p0, v1, [Ljava/lang/Object;

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    const-string p1, "Current version %d, latest version %d, not upgrading."

    .line 73
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_23
    iget-object p1, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    invoke-interface {p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->getUsersForUpgrade()[I

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadOwners([I)Lcom/android/server/devicepolicy/OwnersData;

    move-result-object v5

    .line 85
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->loadAllUsersData([IILcom/android/server/devicepolicy/OwnersData;)Landroid/util/SparseArray;

    move-result-object v6

    const-string v7, "Upgrading from version %d"

    if-nez v0, :cond_45

    new-array v8, v4, [Ljava/lang/Object;

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :cond_45
    if-ne v0, v4, :cond_5a

    new-array v8, v4, [Ljava/lang/Object;

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0, p1, v5, v6}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->upgradeSensorPermissionsAccess([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V

    move v0, v1

    :cond_5a
    if-ne v0, v1, :cond_6f

    new-array v1, v4, [Ljava/lang/Object;

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0, v5, v6}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->upgradeProtectedPackages(Lcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V

    const/4 v0, 0x3

    .line 107
    :cond_6f
    invoke-virtual {p0, p1, v6, v5, v0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writePoliciesAndVersion([ILandroid/util/SparseArray;Lcom/android/server/devicepolicy/OwnersData;I)V

    return-void
.end method

.method public final upgradeProtectedPackages(Lcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/devicepolicy/OwnersData;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-nez p0, :cond_5

    return-void

    .line 144
    :cond_5
    iget p0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/DevicePolicyData;

    const-string p2, "DevicePolicyManager"

    if-nez p0, :cond_17

    const-string p0, "No policy data for do user"

    .line 146
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_17
    iget-object v0, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 150
    iget-object v2, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->packageName:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2d

    const-string v2, "Found protected packages in Owners"

    .line 153
    invoke-static {p2, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_2d
    iput-object v1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;

    goto :goto_3d

    .line 156
    :cond_30
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    if-eqz v0, :cond_3e

    const-string v0, "Found protected packages in DevicePolicyData"

    .line 157
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    .line 159
    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    :goto_3d
    move-object v1, v0

    .line 162
    :cond_3e
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-nez p0, :cond_52

    const-string p0, "DO admin not found in DO user"

    .line 164
    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_52
    if-eqz v1, :cond_5b

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin;->protectedPackages:Ljava/util/List;

    :cond_5b
    return-void
.end method

.method public final upgradeSensorPermissionsAccess([ILcom/android/server/devicepolicy/OwnersData;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lcom/android/server/devicepolicy/OwnersData;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            ">;)V"
        }
    .end annotation

    .line 116
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_52

    aget v2, p1, v1

    .line 117
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyData;

    if-nez v3, :cond_10

    goto :goto_4f

    .line 121
    :cond_10
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 122
    iget v5, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    if-ne v5, v2, :cond_16

    iget-object v5, p2, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v5, :cond_16

    iget-object v5, v5, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 124
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v7, "Marking Device Owner in user %d for permission grant "

    .line 125
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DevicePolicyManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-boolean v5, v4, Lcom/android/server/devicepolicy/ActiveAdmin;->mAdminCanGrantSensorsPermissions:Z

    goto :goto_16

    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_52
    return-void
.end method

.method public final writeDataForUser(ILcom/android/server/devicepolicy/DevicePolicyData;)Z
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 235
    invoke-interface {v0, p1}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->mProvider:Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;

    .line 236
    invoke-interface {p0}, Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;->storageManagerIsFileBasedEncryptionEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 233
    invoke-static {p2, p1, p0}, Lcom/android/server/devicepolicy/DevicePolicyData;->store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Z)Z

    move-result p0

    return p0
.end method

.method public final writePoliciesAndVersion([ILandroid/util/SparseArray;Lcom/android/server/devicepolicy/OwnersData;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DevicePolicyData;",
            ">;",
            "Lcom/android/server/devicepolicy/OwnersData;",
            "I)V"
        }
    .end annotation

    .line 182
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_5
    if-ge v3, v0, :cond_1d

    aget v5, p1, v3

    if-eqz v4, :cond_19

    .line 184
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyData;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writeDataForUser(ILcom/android/server/devicepolicy/DevicePolicyData;)Z

    move-result v4

    if-eqz v4, :cond_19

    move v4, v2

    goto :goto_1a

    :cond_19
    move v4, v1

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1d
    if-eqz v4, :cond_27

    .line 187
    invoke-virtual {p3}, Lcom/android/server/devicepolicy/OwnersData;->writeDeviceOwner()Z

    move-result p2

    if-eqz p2, :cond_27

    move p2, v2

    goto :goto_28

    :cond_27
    move p2, v1

    .line 188
    :goto_28
    array-length v0, p1

    move v3, v1

    :goto_2a
    if-ge v3, v0, :cond_3c

    aget v4, p1, v3

    if-eqz p2, :cond_38

    .line 189
    invoke-virtual {p3, v4}, Lcom/android/server/devicepolicy/OwnersData;->writeProfileOwner(I)Z

    move-result p2

    if-eqz p2, :cond_38

    move p2, v2

    goto :goto_39

    :cond_38
    move p2, v1

    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_3c
    if-eqz p2, :cond_42

    .line 193
    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->writeVersion(I)V

    goto :goto_55

    :cond_42
    new-array p0, v2, [Ljava/lang/Object;

    .line 196
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "Error: Failed upgrading policies to version %d"

    .line 195
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevicePolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return-void
.end method

.method public final writeVersion(I)V
    .registers 8

    .line 261
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyVersionUpgrader;->getVersionFile()Lcom/android/internal/util/JournaledFile;

    move-result-object p0

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_a
    const-string v3, "%d"

    new-array v4, v1, [Ljava/lang/Object;

    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v4, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v3, v4}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 271
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_40

    :catch_29
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Writing version %d failed"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DevicePolicyManager"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_40
    return-void
.end method
