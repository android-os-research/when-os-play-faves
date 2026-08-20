.class public Lcom/android/server/companion/AssociationRequestsProcessor;
.super Ljava/lang/Object;
.source "AssociationRequestsProcessor.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field public static final ASSOCIATE_WITHOUT_PROMPT_MAX_PER_TIME_WINDOW:I = 0x5

.field public static final ASSOCIATE_WITHOUT_PROMPT_WINDOW_MS:J = 0x36ee80L

.field public static final ASSOCIATION_REQUEST_APPROVAL_ACTIVITY:Landroid/content/ComponentName;

.field public static final EXTRA_APPLICATION_CALLBACK:Ljava/lang/String; = "application_callback"

.field public static final EXTRA_ASSOCIATION:Ljava/lang/String; = "association"

.field public static final EXTRA_ASSOCIATION_REQUEST:Ljava/lang/String; = "association_request"

.field public static final EXTRA_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field public static final RESULT_CODE_ASSOCIATION_APPROVED:I = 0x0

.field public static final RESULT_CODE_ASSOCIATION_CREATED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CompanionDevice_AssociationRequestsProcessor"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public final mContext:Landroid/content/Context;

.field public final mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

.field public final mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field public final mService:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public static synthetic $r8$lambda$zEfEkry37OwO_O434vnY-v4nyJA(Lcom/android/server/companion/AssociationRequestsProcessor;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/AssociationRequestsProcessor;->lambda$willAddRoleHolder$0(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mprocessAssociationRequestApproval(Lcom/android/server/companion/AssociationRequestsProcessor;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/companion/AssociationRequestsProcessor;->processAssociationRequestApproval(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "com.android.companiondevicemanager"

    const-string v1, ".CompanionDeviceActivity"

    .line 114
    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/AssociationRequestsProcessor;->ASSOCIATION_REQUEST_APPROVAL_ACTIVITY:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/AssociationStore;)V
    .registers 5

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Lcom/android/server/companion/AssociationRequestsProcessor$1;

    .line 315
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/AssociationRequestsProcessor$1;-><init>(Lcom/android/server/companion/AssociationRequestsProcessor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

    .line 139
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 140
    iput-object p1, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 141
    iget-object p1, p1, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 142
    iput-object p2, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    return-void
.end method

.method private synthetic lambda$willAddRoleHolder$0(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    iget-object p0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/RolesUtils;->isRoleHolder(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static prepareForIpc(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/os/ResultReceiver;",
            ">(TT;)",
            "Landroid/os/ResultReceiver;"
        }
    .end annotation

    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 438
    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 439
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 441
    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public final createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;)Landroid/companion/AssociationInfo;
    .registers 15

    .line 287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 289
    :try_start_4
    iget-object v2, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 290
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v8

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    .line 289
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/CompanionDeviceManagerService;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Z)Landroid/companion/AssociationInfo;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_20

    .line 292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 296
    :try_start_1c
    invoke-interface {p5, p0}, Landroid/companion/IAssociationRequestCallback;->onAssociationCreated(Landroid/companion/AssociationInfo;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_1f

    :catch_1f
    return-object p0

    :catchall_20
    move-exception p0

    .line 292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    throw p0
.end method

.method public final isPreConfirmedSharedUid(Landroid/companion/AssociationRequest;Ljava/lang/String;I)Z
    .registers 9

    const-string v0, "CompanionDevice_AssociationRequestsProcessor"

    const-string v1, "com.samsung.accessory.wmanager"

    const/4 v2, 0x0

    .line 228
    :try_start_5
    iget-object v3, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 229
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v3

    .line 230
    iget-object p0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    if-lez v3, :cond_24

    if-ne v3, p0, :cond_24

    .line 232
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_24

    const/4 v2, 0x1

    .line 235
    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callingUid = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", userId = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", preConfirmedSharedUid = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_48} :catch_49

    goto :goto_65

    .line 238
    :catch_49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "NameNotFoundException "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return v2
.end method

.method public final mayAssociateWithoutPrompt(Ljava/lang/String;I)Z
    .registers 15

    .line 364
    iget-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070096

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    return v2

    .line 376
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 377
    iget-object v1, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 378
    invoke-interface {v1, p2, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 381
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v2

    :cond_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "CompanionDevice_AssociationRequestsProcessor"

    const/4 v7, 0x1

    if-eqz v5, :cond_74

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/AssociationInfo;

    .line 383
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v8

    sub-long v8, v3, v8

    const-wide/32 v10, 0x36ee80

    cmp-long v5, v8, v10

    if-gez v5, :cond_41

    goto :goto_42

    :cond_41
    move v7, v2

    :goto_42
    if-eqz v7, :cond_24

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x5

    if-lt v1, v5, :cond_24

    .line 386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Too many associations: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already associated "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " devices within the last "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 394
    :cond_74
    iget-object p2, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1070095

    .line 395
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 396
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move v3, v2

    .line 397
    :goto_87
    array-length v4, v0

    if-ge v3, v4, :cond_a2

    .line 398
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 399
    aget-object v4, p2, v3

    const-string v5, ":"

    const-string v8, ""

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 400
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 404
    :cond_a2
    iget-object p0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    .line 405
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 407
    invoke-static {p0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object p0

    .line 410
    array-length p2, p0

    move v0, v2

    :goto_b6
    if-ge v0, p2, :cond_c5

    aget-object v3, p0, v0

    .line 411
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    move v2, v7

    goto :goto_c5

    :cond_c2
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_c5
    :goto_c5
    if-nez v2, :cond_db

    .line 418
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Certificate mismatch for allowlisted package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_db
    return v2
.end method

.method public final processAssociationRequestApproval(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;Landroid/net/MacAddress;)V
    .registers 11

    .line 248
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getUserId()I

    move-result v3

    .line 250
    iget-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 262
    :try_start_10
    iget-object v1, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/android/server/companion/PermissionsUtils;->enforcePermissionsForAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_15} :catch_2c

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p2

    .line 273
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/companion/AssociationRequestsProcessor;->createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;)Landroid/companion/AssociationInfo;

    move-result-object p0

    .line 278
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "association"

    .line 279
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p0, 0x0

    .line 280
    invoke-virtual {p3, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :catch_2c
    move-exception p0

    .line 267
    :try_start_2d
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Landroid/companion/IAssociationRequestCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_34} :catch_34

    :catch_34
    return-void
.end method

.method public processNewAssociationRequest(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/companion/IAssociationRequestCallback;)V
    .registers 16

    const-string v0, "Request MUST NOT be null"

    .line 152
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 154
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "AssociationRequest.displayName MUST NOT be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_14
    const-string v0, "Package name MUST NOT be null"

    .line 157
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Callback MUST NOT be null"

    .line 158
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p2, v1, v2, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 168
    iget-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v4}, Lcom/android/server/companion/PermissionsUtils;->enforcePermissionsForAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V

    .line 169
    iget-object v0, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p2}, Lcom/android/server/companion/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isForceConfirmation()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 174
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/AssociationRequestsProcessor;->willAddRoleHolder(Landroid/companion/AssociationRequest;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4c

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v10, p4

    .line 176
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/companion/AssociationRequestsProcessor;->createAssociationAndNotifyApplication(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/net/MacAddress;Landroid/companion/IAssociationRequestCallback;)Landroid/companion/AssociationInfo;

    return-void

    .line 184
    :cond_4c
    invoke-virtual {p1, p2}, Landroid/companion/AssociationRequest;->setPackageName(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1, p3}, Landroid/companion/AssociationRequest;->setUserId(I)V

    .line 186
    invoke-virtual {p0, p2, p3}, Lcom/android/server/companion/AssociationRequestsProcessor;->mayAssociateWithoutPrompt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_61

    .line 187
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/AssociationRequestsProcessor;->isPreConfirmedSharedUid(Landroid/companion/AssociationRequest;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 p2, 0x0

    goto :goto_62

    :cond_61
    :goto_61
    const/4 p2, 0x1

    .line 186
    :goto_62
    invoke-virtual {p1, p2}, Landroid/companion/AssociationRequest;->setSkipPrompt(Z)V

    .line 190
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "association_request"

    .line 191
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 192
    invoke-interface {p4}, Landroid/companion/IAssociationRequestCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string p3, "application_callback"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 193
    iget-object p1, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mOnRequestConfirmationReceiver:Landroid/os/ResultReceiver;

    invoke-static {p1}, Lcom/android/server/companion/AssociationRequestsProcessor;->prepareForIpc(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    const-string/jumbo p3, "result_receiver"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 195
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 196
    sget-object p1, Lcom/android/server/companion/AssociationRequestsProcessor;->ASSOCIATION_REQUEST_APPROVAL_ACTIVITY:Landroid/content/ComponentName;

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 197
    invoke-virtual {v5, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 208
    :try_start_95
    iget-object v3, p0, Lcom/android/server/companion/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    const/high16 v6, 0x54000000

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_a0
    .catchall {:try_start_95 .. :try_end_a0} :catchall_a7

    .line 213
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    :try_start_a3
    invoke-interface {p4, p0}, Landroid/companion/IAssociationRequestCallback;->onAssociationPending(Landroid/app/PendingIntent;)V
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_a6} :catch_a6

    :catch_a6
    return-void

    :catchall_a7
    move-exception p0

    .line 213
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    throw p0
.end method

.method public final willAddRoleHolder(Landroid/companion/AssociationRequest;Ljava/lang/String;I)Z
    .registers 5

    .line 304
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 307
    :cond_8
    new-instance v0, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/android/server/companion/AssociationRequestsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/AssociationRequestsProcessor;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
