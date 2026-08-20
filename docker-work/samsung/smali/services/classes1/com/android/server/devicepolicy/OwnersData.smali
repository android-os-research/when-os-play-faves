.class public Lcom/android/server/devicepolicy/OwnersData;
.super Ljava/lang/Object;
.source "OwnersData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;,
        Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;,
        Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;,
        Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;
    }
.end annotation


# static fields
.field public static final ATTR_CAN_ACCESS_DEVICE_IDS:Ljava/lang/String; = "canAccessDeviceIds"

.field public static final ATTR_COMPONENT_NAME:Ljava/lang/String; = "component"

.field public static final ATTR_DEVICE_OWNER_TYPE_VALUE:Ljava/lang/String; = "value"

.field public static final ATTR_FREEZE_RECORD_END:Ljava/lang/String; = "end"

.field public static final ATTR_FREEZE_RECORD_START:Ljava/lang/String; = "start"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field public static final ATTR_PROFILE_OWNER_OF_ORG_OWNED_DEVICE:Ljava/lang/String; = "isPoOrganizationOwnedDevice"

.field public static final ATTR_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "remoteBugreportHash"

.field public static final ATTR_REMOTE_BUGREPORT_URI:Ljava/lang/String; = "remoteBugreportUri"

.field public static final ATTR_SIZE:Ljava/lang/String; = "size"

.field public static final ATTR_USERID:Ljava/lang/String; = "userId"

.field public static final DEBUG:Z = false

.field public static final DEVICE_OWNER_XML:Ljava/lang/String; = "device_owner_2.xml"

.field public static final PROFILE_OWNER_XML:Ljava/lang/String; = "profile_owner.xml"

.field public static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field public static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field public static final TAG_DEVICE_OWNER_CONTEXT:Ljava/lang/String; = "device-owner-context"

.field public static final TAG_DEVICE_OWNER_PROTECTED_PACKAGES:Ljava/lang/String; = "device-owner-protected-packages"

.field public static final TAG_DEVICE_OWNER_TYPE:Ljava/lang/String; = "device-owner-type"

.field public static final TAG_FREEZE_PERIOD_RECORD:Ljava/lang/String; = "freeze-record"

.field public static final TAG_PENDING_OTA_INFO:Ljava/lang/String; = "pending-ota-info"

.field public static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field public static final TAG_ROOT:Ljava/lang/String; = "root"

.field public static final TAG_SYSTEM_UPDATE_POLICY:Ljava/lang/String; = "system-update-policy"


# instance fields
.field public mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

.field public mDeviceOwnerProtectedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final mDeviceOwnerTypes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceOwnerUserId:I

.field public final mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

.field public final mProfileOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

.field public mSystemUpdateFreezeStart:Ljava/time/LocalDate;

.field public mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

.field public mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/PolicyPathProvider;)V
    .registers 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    .line 89
    iput v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerTypes:Landroid/util/ArrayMap;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    .line 113
    iput-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7

    .line 153
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    const-string v0, "Device Owner: "

    .line 154
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 156
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 161
    :goto_2e
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-eqz v2, :cond_4e

    if-eqz v0, :cond_37

    .line 163
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 165
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System Update Policy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    .line 168
    :cond_4e
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v2, :cond_99

    .line 169
    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v0, :cond_6b

    .line 171
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 173
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile Owner (User "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 175
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 176
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move v0, v1

    goto :goto_5a

    .line 180
    :cond_99
    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    if-eqz v2, :cond_b9

    if-eqz v0, :cond_a2

    .line 182
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 184
    :cond_a2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending System Update: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ba

    :cond_b9
    move v1, v0

    .line 187
    :goto_ba
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-nez v0, :cond_c2

    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v0, :cond_df

    :cond_c2
    if-eqz v1, :cond_c7

    .line 189
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 191
    :cond_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System update freeze record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/OwnersData;->getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_df
    return-void
.end method

.method public getDeviceOwnerFile()Ljava/io/File;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 216
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-interface {p0}, Lcom/android/server/devicepolicy/PolicyPathProvider;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p0

    const-string v1, "device_owner_2.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getProfileOwnerFile(I)Ljava/io/File;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 221
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mPathProvider:Lcom/android/server/devicepolicy/PolicyPathProvider;

    invoke-interface {p0, p1}, Lcom/android/server/devicepolicy/PolicyPathProvider;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "profile_owner.xml"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;
    .registers 4

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start: "

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v1, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    const-string/jumbo v2, "null"

    if-eqz v1, :cond_1a

    .line 201
    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 203
    :cond_1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1d
    const-string v1, "; end: "

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz p0, :cond_2e

    .line 207
    invoke-virtual {p0}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 209
    :cond_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public load([I)V
    .registers 7

    .line 117
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->readFromFileLocked()V

    .line 119
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1a

    aget v3, p1, v2

    .line 120
    new-instance v4, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;

    invoke-direct {v4, p0, v3}, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;I)V

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->readFromFileLocked()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 123
    :cond_1a
    iget-object p1, p0, Lcom/android/server/devicepolicy/OwnersData;->mProfileOwners:Landroid/util/ArrayMap;

    iget v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz p1, :cond_2d

    .line 124
    iget-object p1, p1, Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    .line 125
    :goto_2e
    iget-object v0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwner:Lcom/android/server/devicepolicy/OwnersData$OwnerInfo;

    if-eqz v0, :cond_4a

    if-eqz p1, :cond_4a

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 126
    iget p0, p0, Lcom/android/server/devicepolicy/OwnersData;->mDeviceOwnerUserId:I

    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "User %d has both DO and PO, which is not supported"

    .line 126
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DevicePolicyManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return-void
.end method

.method public writeDeviceOwner()Z
    .registers 2

    .line 138
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/OwnersData$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->writeToFileLocked()Z

    move-result p0

    return p0
.end method

.method public writeProfileOwner(I)Z
    .registers 3

    .line 148
    new-instance v0, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;

    invoke-direct {v0, p0, p1}, Lcom/android/server/devicepolicy/OwnersData$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/OwnersData;I)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/OwnersData$FileReadWriter;->writeToFileLocked()Z

    move-result p0

    return p0
.end method
