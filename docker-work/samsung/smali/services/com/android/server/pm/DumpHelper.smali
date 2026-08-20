.class public final Lcom/android/server/pm/DumpHelper;
.super Ljava/lang/Object;
.source "DumpHelper.java"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mKnownPackages:Lcom/android/server/pm/KnownPackages;

.field public final mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field public final mProtectedBroadcasts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mRRFilter:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

.field public final mRequiredVerifierPackage:Ljava/lang/String;

.field public final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;


# direct methods
.method public static synthetic $r8$lambda$pf9FidPM9_1CzPiT_K3dcmIjtxg(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/DumpHelper;->lambda$doDump$1(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xa8hSSgBhjegHHjHRwLJEgg4JO4(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/DumpHelper;->lambda$doDump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceInternal;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal;",
            "Lcom/android/server/pm/ApexManager;",
            "Lcom/android/server/pm/StorageEventHelper;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;",
            "Lcom/android/server/pm/PackageInstallerService;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/KnownPackages;",
            "Lcom/android/server/pm/ChangedPackagesTracker;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/os/incremental/PerUidReadTimeouts;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->getInstance()Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/DumpHelper;->mRRFilter:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    .line 86
    iput-object p1, p0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 87
    iput-object p2, p0, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 88
    iput-object p3, p0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    .line 89
    iput-object p4, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 90
    iput-object p5, p0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    .line 91
    iput-object p6, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 92
    iput-object p7, p0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    .line 93
    iput-object p8, p0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    .line 94
    iput-object p9, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 95
    iput-object p10, p0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    .line 96
    iput-object p11, p0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    return-void
.end method

.method public static synthetic lambda$doDump$0(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .registers 12

    const-string v0, "  Sequence number="

    .line 485
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 487
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, p1, :cond_5f

    .line 489
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const-string v3, "  User "

    .line 490
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    .line 492
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-string v4, "    "

    if-nez v3, :cond_38

    .line 495
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "No packages changed"

    .line 496
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5c

    :cond_38
    move v5, v0

    :goto_39
    if-ge v5, v3, :cond_5c

    .line 499
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 500
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 501
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "seq="

    .line 502
    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ", package="

    .line 504
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_5f
    return-void
.end method

.method public static synthetic lambda$doDump$1(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2

    .line 553
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 23
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    .line 101
    new-instance v10, Lcom/android/server/pm/DumpState;

    invoke-direct {v10}, Lcom/android/server/pm/DumpState;-><init>()V

    const/4 v11, 0x0

    move v2, v11

    .line 105
    :goto_11
    array-length v3, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v2, v3, :cond_8a

    .line 106
    aget-object v3, v1, v2

    if-eqz v3, :cond_8a

    .line 107
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8a

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v12, 0x2d

    if-eq v6, v12, :cond_29

    goto :goto_8a

    :cond_29
    add-int/lit8 v2, v2, 0x1

    const-string v6, "-a"

    .line 112
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    goto :goto_11

    :cond_34
    const-string v6, "-h"

    .line 114
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 115
    invoke-virtual {v0, v9}, Lcom/android/server/pm/DumpHelper;->printHelp(Ljava/io/PrintWriter;)V

    return-void

    :cond_40
    const-string v6, "--checkin"

    .line 117
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 118
    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setCheckIn(Z)V

    goto :goto_11

    :cond_4c
    const-string v6, "--all-components"

    .line 119
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 120
    invoke-virtual {v10, v4}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_11

    :cond_58
    const-string v4, "-f"

    .line 121
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 122
    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto :goto_11

    :cond_64
    const-string v4, "--proto"

    .line 123
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 124
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/DumpHelper;->dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V

    return-void

    .line 127
    :cond_70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 132
    :cond_8a
    :goto_8a
    array-length v3, v1

    const/high16 v12, 0x8000000

    const/high16 v15, 0x200000

    const/high16 v4, 0x100000

    const/high16 v14, 0x80000

    const/16 v13, 0x2000

    const v6, 0x8000

    if-ge v2, v3, :cond_431

    .line 133
    aget-object v3, v1, v2

    add-int/2addr v2, v5

    const-string v11, "android"

    .line 136
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_42b

    const-string v11, "."

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_af

    goto/16 :goto_42b

    :cond_af
    const-string v11, "check-permission"

    .line 141
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_108

    .line 142
    array-length v3, v1

    if-lt v2, v3, :cond_c0

    const-string v0, "Error: check-permission missing permission argument"

    .line 143
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_c0
    aget-object v3, v1, v2

    add-int/2addr v2, v5

    .line 148
    array-length v4, v1

    if-lt v2, v4, :cond_cc

    const-string v0, "Error: check-permission missing package argument"

    .line 149
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 153
    :cond_cc
    aget-object v4, v1, v2

    add-int/2addr v2, v5

    .line 155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 156
    array-length v6, v1

    if-ge v2, v6, :cond_f8

    .line 158
    :try_start_da
    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_e0
    .catch Ljava/lang/NumberFormatException; {:try_start_da .. :try_end_e0} :catch_e1

    goto :goto_f8

    .line 160
    :catch_e1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: check-permission user argument is not a number: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_f8
    :goto_f8
    const-wide/16 v1, -0x1

    .line 167
    invoke-interface {v7, v4, v1, v2}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 170
    iget-object v0, v0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, v3, v1, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void

    :cond_108
    const-string/jumbo v11, "l"

    .line 172
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_427

    const-string/jumbo v11, "libraries"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11c

    goto/16 :goto_427

    :cond_11c
    const-string v11, "f"

    .line 174
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_422

    const-string v11, "features"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12e

    goto/16 :goto_422

    :cond_12e
    const-string/jumbo v11, "r"

    .line 176
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39d

    const-string/jumbo v11, "resolvers"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_142

    goto/16 :goto_39d

    :cond_142
    const-string/jumbo v11, "perm"

    .line 200
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_396

    const-string/jumbo v11, "permissions"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_156

    goto/16 :goto_396

    :cond_156
    const-string/jumbo v11, "permission"

    .line 202
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_180

    .line 203
    array-length v3, v1

    if-lt v2, v3, :cond_168

    const-string v0, "Error: permission requires permission name"

    .line 204
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_168
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 208
    :goto_16d
    array-length v11, v1

    if-ge v2, v11, :cond_178

    .line 209
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16d

    :cond_178
    const/16 v1, 0x1c0

    .line 212
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    move-object v11, v3

    goto/16 :goto_432

    :cond_180
    const-string/jumbo v11, "pref"

    .line 214
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_38f

    const-string/jumbo v11, "preferred"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_194

    goto/16 :goto_38f

    :cond_194
    const-string/jumbo v11, "preferred-xml"

    .line 216
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b2

    .line 217
    invoke-virtual {v10, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 218
    array-length v3, v1

    if-ge v2, v3, :cond_431

    aget-object v1, v1, v2

    const-string v2, "--full"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_431

    .line 219
    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setFullPreferred(Z)V

    goto/16 :goto_431

    :cond_1b2
    const-string v11, "d"

    .line 222
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_388

    const-string v11, "domain-preferred-apps"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c4

    goto/16 :goto_388

    :cond_1c4
    const-string/jumbo v11, "p"

    .line 224
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_381

    const-string/jumbo v11, "packages"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d8

    goto/16 :goto_381

    :cond_1d8
    const-string/jumbo v11, "q"

    .line 226
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_37a

    const-string/jumbo v11, "queries"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ec

    goto/16 :goto_37a

    :cond_1ec
    const-string/jumbo v11, "s"

    .line 228
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_361

    const-string/jumbo v11, "shared-users"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_200

    goto/16 :goto_361

    :cond_200
    const-string/jumbo v11, "prov"

    .line 233
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_35a

    const-string/jumbo v11, "providers"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_214

    goto/16 :goto_35a

    :cond_214
    const-string/jumbo v11, "m"

    .line 235
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_353

    const-string/jumbo v11, "messages"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_228

    goto/16 :goto_353

    :cond_228
    const-string/jumbo v11, "v"

    .line 237
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_34c

    const-string/jumbo v11, "verifiers"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23c

    goto/16 :goto_34c

    :cond_23c
    const-string v11, "dv"

    .line 239
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_345

    const-string v11, "domain-verifier"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24e

    goto/16 :goto_345

    :cond_24e
    const-string/jumbo v11, "version"

    .line 241
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_25c

    .line 242
    invoke-virtual {v10, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_25c
    const-string/jumbo v11, "k"

    .line 243
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_33e

    const-string/jumbo v11, "keysets"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_270

    goto/16 :goto_33e

    :cond_270
    const-string/jumbo v11, "installs"

    .line 245
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_280

    const/high16 v1, 0x10000

    .line 246
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_280
    const-string v11, "frozen"

    .line 247
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28d

    .line 248
    invoke-virtual {v10, v14}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_28d
    const-string/jumbo v11, "volumes"

    .line 249
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29d

    const/high16 v1, 0x800000

    .line 250
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_29d
    const-string v11, "dexopt"

    .line 251
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2aa

    .line 252
    invoke-virtual {v10, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_2aa
    const-string v11, "compiler-stats"

    .line 253
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b7

    .line 254
    invoke-virtual {v10, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_2b7
    const-string v11, "changes"

    .line 255
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c6

    const/high16 v1, 0x400000

    .line 256
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_2c6
    const-string/jumbo v11, "service-permissions"

    .line 257
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2d6

    const/high16 v1, 0x1000000

    .line 258
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_2d6
    const-string/jumbo v11, "known-packages"

    .line 259
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e4

    .line 260
    invoke-virtual {v10, v12}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_2e4
    const-string/jumbo v11, "t"

    .line 261
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_337

    const-string/jumbo v11, "timeouts"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2f7

    goto :goto_337

    :cond_2f7
    const-string/jumbo v11, "snapshot"

    .line 263
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_327

    const/high16 v3, 0x20000000

    .line 264
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 265
    array-length v3, v1

    if-ge v2, v3, :cond_431

    .line 266
    aget-object v3, v1, v2

    const-string v11, "--full"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_318

    const/4 v3, 0x0

    .line 267
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    goto/16 :goto_431

    .line 269
    :cond_318
    aget-object v1, v1, v2

    const-string v2, "--brief"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_431

    .line 270
    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setBrief(Z)V

    goto/16 :goto_431

    :cond_327
    const-string/jumbo v1, "protected-broadcasts"

    .line 274
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_431

    const/high16 v1, 0x40000000    # 2.0f

    .line 275
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_337
    :goto_337
    const/high16 v1, 0x10000000

    .line 262
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_33e
    :goto_33e
    const/16 v1, 0x4000

    .line 244
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_345
    :goto_345
    const/high16 v1, 0x20000

    .line 240
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_34c
    :goto_34c
    const/16 v1, 0x800

    .line 238
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_353
    :goto_353
    const/16 v1, 0x200

    .line 236
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_35a
    :goto_35a
    const/16 v1, 0x400

    .line 234
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_361
    :goto_361
    const/16 v3, 0x100

    .line 229
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    .line 230
    array-length v3, v1

    if-ge v2, v3, :cond_431

    aget-object v1, v1, v2

    const-string/jumbo v2, "noperm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_431

    const/4 v1, 0x4

    .line 231
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    goto/16 :goto_431

    :cond_37a
    :goto_37a
    const/high16 v1, 0x4000000

    .line 227
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_381
    :goto_381
    const/16 v1, 0x80

    .line 225
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_388
    :goto_388
    const/high16 v1, 0x40000

    .line 223
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_38f
    :goto_38f
    const/16 v1, 0x1000

    .line 215
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    :cond_396
    :goto_396
    const/16 v1, 0x40

    .line 201
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    .line 177
    :cond_39d
    :goto_39d
    array-length v3, v1

    if-lt v2, v3, :cond_3a7

    const/16 v1, 0x3c

    .line 178
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_431

    .line 183
    :cond_3a7
    :goto_3a7
    array-length v3, v1

    if-ge v2, v3, :cond_431

    .line 184
    aget-object v3, v1, v2

    const-string v11, "a"

    .line 185
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_41b

    const-string v11, "activity"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3bd

    goto :goto_41b

    :cond_3bd
    const-string/jumbo v11, "s"

    .line 187
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_415

    const-string/jumbo v11, "service"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3d0

    goto :goto_415

    :cond_3d0
    const-string/jumbo v11, "r"

    .line 189
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_40f

    const-string/jumbo v11, "receiver"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3e3

    goto :goto_40f

    :cond_3e3
    const-string v11, "c"

    .line 191
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_409

    const-string v11, "content"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f4

    goto :goto_409

    .line 194
    :cond_3f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown resolver table type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_409
    :goto_409
    const/16 v3, 0x20

    .line 192
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_41f

    :cond_40f
    :goto_40f
    const/16 v3, 0x10

    .line 190
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_41f

    :cond_415
    :goto_415
    const/16 v3, 0x8

    .line 188
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_41f

    :cond_41b
    :goto_41b
    const/4 v3, 0x4

    .line 186
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    :goto_41f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a7

    :cond_422
    :goto_422
    const/4 v1, 0x2

    .line 175
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_431

    .line 173
    :cond_427
    :goto_427
    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_431

    .line 137
    :cond_42b
    :goto_42b
    invoke-virtual {v10, v3}, Lcom/android/server/pm/DumpState;->setTargetPackageName(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->setOptionEnabled(I)V

    :cond_431
    :goto_431
    const/4 v11, 0x0

    .line 279
    :goto_432
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v16

    if-eqz v3, :cond_45f

    .line 284
    invoke-interface {v7, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_45f

    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 285
    invoke-virtual {v1, v3}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45f

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_45f
    if-eqz v16, :cond_467

    const-string/jumbo v1, "vers,1"

    .line 291
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_467
    if-nez v16, :cond_474

    .line 296
    invoke-virtual {v10, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_474

    if-nez v3, :cond_474

    .line 298
    invoke-interface {v7, v6, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_474
    const-string v6, "  "

    if-nez v16, :cond_4dd

    .line 302
    invoke-virtual {v10, v12}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_4dd

    if-nez v3, :cond_4dd

    .line 304
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_489

    .line 305
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 307
    :cond_489
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v2, 0x78

    invoke-direct {v1, v9, v6, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    const-string v2, "Known Packages:"

    .line 308
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_499
    const/16 v12, 0x12

    if-gt v2, v12, :cond_4da

    .line 311
    invoke-static {v2}, Lcom/android/server/pm/KnownPackages;->knownPackageToString(I)Ljava/lang/String;

    move-result-object v12

    .line 312
    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ":"

    .line 313
    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 314
    iget-object v12, v0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    const/4 v4, 0x0

    invoke-virtual {v12, v7, v2, v4}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v12

    .line 316
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 317
    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c0

    const-string/jumbo v4, "none"

    .line 318
    invoke-virtual {v1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4ce

    .line 320
    :cond_4c0
    array-length v4, v12

    const/4 v15, 0x0

    :goto_4c2
    if-ge v15, v4, :cond_4ce

    aget-object v14, v12, v15

    .line 321
    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    const/high16 v14, 0x80000

    goto :goto_4c2

    .line 324
    :cond_4ce
    :goto_4ce
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    const/high16 v4, 0x100000

    const/high16 v14, 0x80000

    const/high16 v15, 0x200000

    goto :goto_499

    .line 326
    :cond_4da
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_4dd
    const/16 v1, 0x800

    .line 329
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    const-string v12, ")"

    const-string v2, ","

    const-wide/32 v14, 0x10000000

    if-eqz v1, :cond_52f

    if-nez v3, :cond_52f

    .line 331
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    if-nez v16, :cond_519

    .line 333
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_4fb

    .line 334
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_4fb
    const-string v4, "Verifiers:"

    .line 336
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  Required: "

    .line 337
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " (uid="

    .line 339
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 340
    invoke-interface {v7, v1, v14, v15, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 342
    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52f

    :cond_519
    const/4 v4, 0x0

    if-eqz v1, :cond_52f

    const-string/jumbo v13, "vrfy,"

    .line 344
    invoke-virtual {v9, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    invoke-interface {v7, v1, v14, v15, v4}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(I)V

    :cond_52f
    :goto_52f
    const/high16 v1, 0x20000

    .line 352
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_592

    if-nez v3, :cond_592

    .line 354
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object v1

    .line 355
    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_588

    .line 357
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v16, :cond_572

    .line 359
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_554

    .line 360
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_554
    const-string v4, "Domain Verifier:"

    .line 362
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  Using: "

    .line 363
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " (uid="

    .line 365
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 366
    invoke-interface {v7, v1, v14, v15, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 368
    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_593

    :cond_572
    const/4 v13, 0x0

    if-eqz v1, :cond_593

    const-string v4, "dv,"

    .line 370
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 373
    invoke-interface {v7, v1, v14, v15, v13}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_593

    :cond_588
    const/4 v13, 0x0

    .line 377
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    const-string v1, "No Domain Verifier available!"

    .line 378
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_593

    :cond_592
    const/4 v13, 0x0

    .line 382
    :cond_593
    :goto_593
    invoke-virtual {v10, v5}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_59e

    if-nez v3, :cond_59e

    .line 384
    invoke-interface {v7, v5, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_59e
    const/4 v1, 0x2

    .line 387
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_5fc

    if-nez v3, :cond_5fc

    .line 389
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_5b0

    .line 390
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_5b0
    if-nez v16, :cond_5b7

    const-string v1, "Features:"

    .line 393
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    :cond_5b7
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5fc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/FeatureInfo;

    if-nez v16, :cond_5e9

    .line 398
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    iget v5, v4, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v5, :cond_5e5

    const-string v5, " version="

    .line 401
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 404
    :cond_5e5
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_5c1

    :cond_5e9
    const-string v5, "feat,"

    .line 406
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    iget-object v5, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_5c1

    .line 414
    :cond_5fc
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v14

    if-nez v16, :cond_60c

    const/4 v1, 0x4

    .line 416
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_60c

    .line 417
    invoke-interface {v14, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpActivityResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_60c
    if-nez v16, :cond_619

    const/16 v1, 0x10

    .line 420
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_619

    .line 421
    invoke-interface {v14, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpReceiverResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_619
    if-nez v16, :cond_626

    const/16 v1, 0x8

    .line 424
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_626

    .line 425
    invoke-interface {v14, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServiceResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_626
    if-nez v16, :cond_633

    const/16 v1, 0x20

    .line 428
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_633

    .line 429
    invoke-interface {v14, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpProviderResolvers(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_633
    if-nez v16, :cond_640

    const/16 v1, 0x1000

    .line 433
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_640

    .line 434
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_640
    if-nez v16, :cond_64f

    const/16 v1, 0x2000

    .line 438
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_64f

    if-nez v3, :cond_64f

    .line 439
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_64f
    if-nez v16, :cond_65c

    const/high16 v1, 0x40000

    .line 443
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_65c

    .line 444
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_65c
    if-nez v16, :cond_669

    const/16 v1, 0x40

    .line 448
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_669

    .line 449
    invoke-interface {v7, v9, v3, v11, v10}, Lcom/android/server/pm/Computer;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    :cond_669
    if-nez v16, :cond_676

    const/16 v1, 0x400

    .line 453
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_676

    .line 454
    invoke-interface {v14, v7, v9, v10, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_676
    if-nez v16, :cond_683

    const/16 v1, 0x4000

    .line 459
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_683

    .line 460
    invoke-interface {v7, v9, v3, v10}, Lcom/android/server/pm/Computer;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    :cond_683
    const/16 v1, 0x80

    .line 463
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_69d

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v15, v3

    const/high16 v5, 0x100000

    move-object v4, v11

    move v13, v5

    move-object v5, v10

    move-object/from16 v17, v6

    move/from16 v6, v16

    .line 464
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    goto :goto_6a2

    :cond_69d
    move-object v15, v3

    move-object/from16 v17, v6

    const/high16 v13, 0x100000

    :goto_6a2
    if-nez v16, :cond_6af

    const/high16 v1, 0x4000000

    .line 468
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_6af

    .line 469
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6af
    const/16 v1, 0x100

    .line 472
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_6c3

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object v3, v15

    move-object v4, v11

    move-object v5, v10

    move/from16 v6, v16

    .line 473
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    :cond_6c3
    if-nez v16, :cond_6e7

    const/high16 v1, 0x400000

    .line 478
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_6e7

    if-nez v15, :cond_6e7

    .line 480
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_6d8

    .line 481
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_6d8
    const-string v1, "Package Changes:"

    .line 483
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    new-instance v2, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v9}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ChangedPackagesTracker;->iterateAll(Ljava/util/function/BiConsumer;)V

    :cond_6e7
    if-nez v16, :cond_6f6

    const/high16 v1, 0x80000

    .line 513
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_6f6

    if-nez v15, :cond_6f6

    .line 515
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_6f6
    if-nez v16, :cond_707

    const/high16 v1, 0x800000

    .line 519
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_707

    if-nez v15, :cond_707

    .line 521
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/pm/StorageEventHelper;->dumpLoadedVolumes(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_707
    if-nez v16, :cond_716

    const/high16 v1, 0x1000000

    .line 525
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_716

    if-nez v15, :cond_716

    .line 527
    invoke-interface {v14, v9, v10}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_716
    if-nez v16, :cond_721

    .line 531
    invoke-virtual {v10, v13}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_721

    .line 532
    invoke-interface {v7, v13, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_721
    if-nez v16, :cond_72e

    const/high16 v1, 0x200000

    .line 536
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_72e

    .line 537
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_72e
    const/16 v1, 0x200

    .line 540
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v2

    if-eqz v2, :cond_771

    if-nez v15, :cond_771

    if-nez v16, :cond_76b

    .line 543
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_743

    .line 544
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 546
    :cond_743
    invoke-interface {v7, v1, v8, v9, v10}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 547
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Package warning messages:"

    .line 548
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 549
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 553
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mRRFilter:Lcom/samsung/android/core/pm/RestrictedReceiverFilter;

    new-instance v2, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v9}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/core/pm/RestrictedReceiverFilter;->logViolationsIfNeeded(Ljava/util/function/Consumer;)V

    .line 557
    new-instance v1, Lcom/samsung/android/server/pm/install/SkippingApks;

    invoke-direct {v1}, Lcom/samsung/android/server/pm/install/SkippingApks;-><init>()V

    .line 558
    invoke-virtual {v1}, Lcom/samsung/android/server/pm/install/SkippingApks;->initSkippingApkList()V

    .line 559
    invoke-virtual {v1, v9}, Lcom/samsung/android/server/pm/install/SkippingApks;->dump(Ljava/io/PrintWriter;)V

    goto :goto_771

    :cond_76b
    const-string/jumbo v1, "msg,"

    .line 562
    invoke-static {v9, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_771
    :goto_771
    if-nez v16, :cond_795

    const/high16 v1, 0x10000

    .line 568
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_795

    if-nez v15, :cond_795

    .line 572
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_786

    .line 573
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 575
    :cond_786
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v3, 0x78

    move-object/from16 v4, v17

    invoke-direct {v2, v9, v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_797

    :cond_795
    move-object/from16 v4, v17

    :goto_797
    if-nez v16, :cond_7b0

    const/high16 v1, 0x2000000

    .line 579
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_7b0

    if-eqz v15, :cond_7ab

    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 580
    invoke-virtual {v1, v15}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b0

    .line 581
    :cond_7ab
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v1, v9, v15}, Lcom/android/server/pm/ApexManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_7b0
    if-nez v16, :cond_890

    const/high16 v1, 0x10000000

    .line 585
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_890

    if-nez v15, :cond_890

    .line 587
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_7c5

    .line 588
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_7c5
    const-string v1, "Per UID read timeouts:"

    .line 590
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Default timeouts flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getDefaultTimeouts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Known digesters list flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getKnownDigestersList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Timeouts ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_81a
    if-ge v3, v2, :cond_890

    aget-object v5, v1, v3

    const-string v6, "        ("

    .line 597
    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 599
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "minTimeUs="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v5, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "minPendingTimeUs="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v5, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "maxPendingTimeUs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v9, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_81a

    :cond_890
    if-nez v16, :cond_8a5

    const/high16 v1, 0x20000000

    .line 607
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_8a5

    if-nez v15, :cond_8a5

    .line 609
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_8a5

    .line 610
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_8a5
    if-nez v16, :cond_8d9

    const/high16 v1, 0x40000000    # 2.0f

    .line 615
    invoke-virtual {v10, v1}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_8d9

    if-nez v15, :cond_8d9

    .line 617
    invoke-virtual {v10}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_8ba

    .line 618
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    :cond_8ba
    const-string v1, "Protected broadcast actions:"

    .line 620
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 621
    :goto_8c0
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v11, v1, :cond_8d9

    .line 622
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8c0

    :cond_8d9
    return-void
.end method

.method public final dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 709
    iget-object v0, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1c

    .line 711
    iget-object v2, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/FeatureInfo;

    const-wide v3, 0x20b00000004L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/FeatureInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-void
.end method

.method public final dumpProto(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;)V
    .registers 13

    .line 669
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-wide v1, 0x10b00000001L

    .line 672
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 673
    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {v0, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 675
    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackage:Ljava/lang/String;

    const-wide/32 v5, 0x10000000

    const/4 v7, 0x0

    .line 677
    invoke-interface {p1, p2, v5, v6, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    const-wide v8, 0x10500000002L

    .line 675
    invoke-virtual {v0, v8, v9, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 681
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 683
    iget-object p2, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {p2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->getProxy()Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    move-result-object p2

    .line 684
    invoke-interface {p2}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_53

    .line 686
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-wide v1, 0x10b00000002L

    .line 688
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 689
    invoke-virtual {v0, v3, v4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 692
    invoke-interface {p1, p2, v5, v6, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    .line 690
    invoke-virtual {v0, v8, v9, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 696
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 699
    :cond_53
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 700
    invoke-virtual {p0, v0}, Lcom/android/server/pm/DumpHelper;->dumpAvailableFeaturesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 701
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 702
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 703
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V

    .line 704
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public final printHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string p0, "Package manager dump options:"

    .line 630
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  [-h] [-f] [--checkin] [--all-components] [cmd] ..."

    .line 631
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    --checkin: dump for a checkin"

    .line 632
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    -f: print details of intent filters"

    .line 633
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    -h: print this help"

    .line 634
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    --all-components: include all component names in package dump"

    .line 635
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  cmd may be one of:"

    .line 636
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    apex: list active APEXes and APEX session state"

    .line 637
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    l[ibraries]: list known shared libraries"

    .line 638
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    f[eatures]: list device features"

    .line 639
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    k[eysets]: print known keysets"

    .line 640
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    r[esolvers] [activity|service|receiver|content]: dump intent resolvers"

    .line 641
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    perm[issions]: dump permissions"

    .line 642
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    permission [name ...]: dump declaration and use of given permission"

    .line 643
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    pref[erred]: print preferred package settings"

    .line 644
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    preferred-xml [--full]: print preferred package settings as xml"

    .line 645
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    prov[iders]: dump content providers"

    .line 646
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    p[ackages]: dump installed packages"

    .line 647
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    q[ueries]: dump app queryability calculations"

    .line 648
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    s[hared-users]: dump shared user IDs"

    .line 649
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    m[essages]: print collected runtime messages"

    .line 650
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    v[erifiers]: print package verifier info"

    .line 651
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    d[omain-preferred-apps]: print domains preferred apps"

    .line 652
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    i[ntent-filter-verifiers]|ifv: print intent filter verifier info"

    .line 653
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    t[imeouts]: print read timeouts for known digesters"

    .line 654
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    version: print database version info"

    .line 655
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    write: write current settings now"

    .line 656
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    installs: details about install sessions"

    .line 657
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    check-permission <permission> <package> [<user>]: does pkg hold perm?"

    .line 658
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    dexopt: dump dexopt state"

    .line 659
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    compiler-stats: dump compiler statistics"

    .line 660
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    service-permissions: dump permissions required by services"

    .line 661
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    snapshot: dump snapshot statistics"

    .line 662
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    protected-broadcasts: print list of protected broadcast actions"

    .line 663
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    known-packages: dump known packages"

    .line 664
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    <package.name>: info about given package"

    .line 665
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
