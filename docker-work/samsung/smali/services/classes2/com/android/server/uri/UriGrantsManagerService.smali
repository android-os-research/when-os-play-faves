.class public Lcom/android/server/uri/UriGrantsManagerService;
.super Landroid/app/IUriGrantsManager$Stub;
.source "UriGrantsManagerService.java"

# interfaces
.implements Lcom/android/server/uri/UriMetricsHelper$PersistentUriGrantsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/uri/UriGrantsManagerService$LocalService;,
        Lcom/android/server/uri/UriGrantsManagerService$H;,
        Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ATTR_CREATED_TIME:Ljava/lang/String; = "createdTime"

.field public static final ATTR_MODE_FLAGS:Ljava/lang/String; = "modeFlags"

.field public static final ATTR_PREFIX:Ljava/lang/String; = "prefix"

.field public static final ATTR_SOURCE_PKG:Ljava/lang/String; = "sourcePkg"

.field public static final ATTR_SOURCE_USER_ID:Ljava/lang/String; = "sourceUserId"

.field public static final ATTR_TARGET_PKG:Ljava/lang/String; = "targetPkg"

.field public static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field public static final ATTR_URI:Ljava/lang/String; = "uri"

.field public static final ATTR_USER_HANDLE:Ljava/lang/String; = "userHandle"

.field public static final DEBUG:Z = false

.field public static final ENABLE_DYNAMIC_PERMISSIONS:Z = true

.field public static final MAX_PERSISTED_URI_GRANTS:I = 0x200

.field public static final METADATA_EXEMPTED_AUTHORITY:Ljava/lang/String; = "com.samsung.android.exempt.GRANT_URI_PERMISSION"

.field public static final TAG:Ljava/lang/String; = "UriGrantsManagerService"

.field public static final TAG_URI_GRANT:Ljava/lang/String; = "uri-grant"

.field public static final TAG_URI_GRANTS:Ljava/lang/String; = "uri-grants"


# instance fields
.field public mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mGrantFile:Landroid/util/AtomicFile;

.field public final mGrantedUriPermissions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/uri/GrantUri;",
            "Lcom/android/server/uri/UriPermission;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mH:Lcom/android/server/uri/UriGrantsManagerService$H;

.field public final mLock:Ljava/lang/Object;

.field public mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

.field public mPmInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckAuthorityGrantsLocked(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckGrantUriPermissionFromIntentUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckGrantUriPermissionUnlocked(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckUriPermissionLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforceNotIsolatedCaller(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgrantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadGrantedUriPermissionsLocked(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->readGrantedUriPermissionsLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUriPermissionIfNeededLocked(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveUriPermissionsForPackageLocked(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrevokeUriPermission(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstart(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->start()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteGrantedUriPermissions(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->writeGrantedUriPermissions()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 157
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 5

    .line 160
    invoke-direct {p0}, Landroid/app/IUriGrantsManager$Stub;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    .line 152
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 161
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$H;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    .line 162
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "urigrants.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p1, "uri-grants"

    invoke-direct {v0, v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public static createForTest(Ljava/io/File;)Lcom/android/server/uri/UriGrantsManagerService;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 167
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/uri/UriGrantsManagerService;-><init>(Ljava/io/File;)V

    .line 168
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    iput-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 169
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    iput-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method


# virtual methods
.method public final checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    if-eqz p1, :cond_2a

    .line 534
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_10
    if-ltz v0, :cond_2a

    .line 535
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/GrantUri;

    .line 536
    iget v3, v2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v3, p3, :cond_1e

    if-nez p4, :cond_27

    .line 537
    :cond_1e
    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/uri/UriGrantsManagerService;->matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z

    move-result v2

    if-eqz v2, :cond_27

    return v1

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public final checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    .registers 23

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v6, p5

    if-eqz v7, :cond_d2

    const/4 v0, 0x0

    if-nez p3, :cond_c

    return-object v0

    .line 612
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    if-nez v1, :cond_19

    if-nez v9, :cond_19

    return-object v0

    .line 618
    :cond_19
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getContentUserHint()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_24

    .line 620
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    :cond_24
    if-eqz v6, :cond_2e

    .line 624
    iget v0, v6, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move-object/from16 v10, p0

    move/from16 v11, p6

    move v5, v0

    goto :goto_3f

    :cond_2e
    move-object/from16 v10, p0

    .line 626
    iget-object v3, v10, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v4, 0x10000000

    move/from16 v11, p6

    invoke-virtual {v3, v7, v4, v5, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    if-gez v3, :cond_3e

    return-object v0

    :cond_3e
    move v5, v3

    :goto_3f
    const/4 v12, 0x0

    if-eqz v1, :cond_7a

    .line 637
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v3, "media"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_56

    move v13, v12

    goto :goto_57

    :cond_56
    move v13, v2

    .line 642
    :goto_57
    invoke-static {v13, v1, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v14

    move/from16 v4, p4

    .line 643
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v5

    if-lez v5, :cond_7b

    if-nez v6, :cond_72

    .line 647
    new-instance v0, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v0, v7, v5, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    goto :goto_73

    :cond_72
    move-object v0, v6

    .line 649
    :goto_73
    iget-object v1, v0, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    goto :goto_7b

    :cond_7a
    move v13, v2

    :cond_7b
    :goto_7b
    if-eqz v9, :cond_d1

    move-object v14, v6

    move v15, v12

    move v12, v5

    .line 653
    :goto_80
    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v15, v0, :cond_d0

    .line 654
    invoke-virtual {v9, v15}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 656
    invoke-static {v13, v0, v8}, Lcom/android/server/uri/GrantUri;->resolve(ILandroid/net/Uri;I)Lcom/android/server/uri/GrantUri;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v6

    move/from16 v4, p4

    move v5, v12

    .line 657
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v12

    if-lez v12, :cond_cd

    if-nez v14, :cond_ab

    .line 661
    new-instance v14, Lcom/android/server/uri/NeededUriGrants;

    invoke-direct {v14, v7, v12, v8}, Lcom/android/server/uri/NeededUriGrants;-><init>(Ljava/lang/String;II)V

    .line 663
    :cond_ab
    iget-object v0, v14, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    .line 666
    :cond_b1
    invoke-virtual {v9, v15}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_cd

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object v5, v14

    move/from16 v6, p6

    .line 668
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    if-eqz v0, :cond_cd

    move-object v14, v0

    :cond_cd
    :goto_cd
    add-int/lit8 v15, v15, 0x1

    goto :goto_80

    :cond_d0
    move-object v6, v14

    :cond_d1
    return-object v6

    .line 606
    :cond_d2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "targetPkg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 12

    .line 1325
    new-instance v3, Lcom/android/server/uri/GrantUri;

    invoke-direct {v3, p5, p3, p4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result p0

    return p0
.end method

.method public final checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I
    .registers 22

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    .line 1101
    invoke-static/range {p4 .. p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v1

    const/4 v11, -0x1

    if-nez v1, :cond_12

    return v11

    :cond_12
    const-string v1, "content"

    .line 1110
    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v11

    .line 1117
    :cond_21
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1119
    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    const/16 v2, 0x3e8

    const/4 v13, 0x0

    if-eq v1, v2, :cond_32

    if-nez v1, :cond_db

    :cond_32
    const-string v1, "com.android.settings.files"

    .line 1122
    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_db

    const-string v1, "com.android.settings.module_licenses"

    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1123
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    goto/16 :goto_db

    :cond_50
    const-string v1, "com.salab.issuetracker.fileprovider"

    .line 1131
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_db

    const-string v1, "com.salab.act.fileprovider"

    .line 1132
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    goto/16 :goto_db

    :cond_62
    const-string v1, "com.samsung.android.mdecservice.nms.fileprovider"

    .line 1136
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    goto/16 :goto_db

    .line 1138
    :cond_6c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SUPPORT_APP_DATA_CLEANER:Z

    if-eqz v1, :cond_79

    const-string v1, "com.samsung.android.sm.FileProvider"

    .line 1139
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    goto :goto_db

    :cond_79
    const-string v1, "com.samsung.android.settings.gwfileprovider"

    .line 1142
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    goto :goto_db

    :cond_82
    const-string v1, "com.samsung.android.uds.fileprovider"

    .line 1146
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    goto :goto_db

    .line 1149
    :cond_8b
    iget-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x80

    .line 1150
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v2, v12

    move/from16 v6, p1

    .line 1149
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_bf

    .line 1151
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_bf

    const-string v2, "com.samsung.android.exempt.GRANT_URI_PERMISSION"

    .line 1152
    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_bf

    const-string v1, "UriGrantsManagerService"

    .line 1154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested grant to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    :cond_bf
    const-string v0, "UriGrantsManagerService"

    .line 1156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "For security reasons, the system cannot issue a Uri permission grant to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; use startActivityAsCaller() instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 1171
    :cond_db
    :goto_db
    iget v1, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v12, v1, v2, v7}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    if-nez v12, :cond_102

    const-string v0, "UriGrantsManagerService"

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No content provider found for permission check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1175
    invoke-virtual {v2}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_102
    if-gez p5, :cond_118

    if-eqz v8, :cond_118

    .line 1181
    iget-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v2, 0x10000000

    .line 1182
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1181
    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-gez v1, :cond_116

    return v11

    :cond_116
    move v8, v1

    goto :goto_11a

    :cond_118
    move/from16 v8, p5

    :goto_11a
    const/4 v14, 0x1

    if-ltz v8, :cond_125

    .line 1192
    invoke-virtual {v0, v12, v9, v8, v10}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    if-eqz v1, :cond_174

    :goto_123
    move v1, v14

    goto :goto_175

    .line 1200
    :cond_125
    iget-boolean v1, v12, Landroid/content/pm/ProviderInfo;->exported:Z

    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_130

    .line 1202
    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v3, :cond_130

    move v1, v13

    :cond_130
    and-int/lit8 v3, v10, 0x2

    if-eqz v3, :cond_139

    .line 1207
    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v4, :cond_139

    move v1, v13

    .line 1211
    :cond_139
    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v4, :cond_171

    .line 1212
    array-length v4, v4

    move v5, v13

    :goto_13f
    if-ge v5, v4, :cond_171

    .line 1214
    iget-object v6, v12, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v6, v6, v5

    if-eqz v6, :cond_16e

    iget-object v15, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1215
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16e

    if-eqz v2, :cond_160

    .line 1217
    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_160

    move v1, v13

    :cond_160
    if-eqz v3, :cond_171

    .line 1222
    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_171

    move v1, v13

    goto :goto_171

    :cond_16e
    add-int/lit8 v5, v5, 0x1

    goto :goto_13f

    :cond_171
    :goto_171
    if-eqz v1, :cond_174

    goto :goto_123

    :cond_174
    move v1, v13

    .line 1235
    :goto_175
    iget-boolean v2, v12, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v2, :cond_17a

    move v1, v13

    :cond_17a
    and-int/lit16 v2, v10, 0xc0

    if-nez v2, :cond_180

    move v15, v14

    goto :goto_181

    :cond_180
    move v15, v13

    :goto_181
    if-eqz v15, :cond_1a5

    if-eqz v1, :cond_1a5

    .line 1249
    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1250
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    .line 1251
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move/from16 p1, v1

    move-object/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    .line 1249
    invoke-virtual/range {p0 .. p5}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    return v11

    :cond_1a5
    if-ltz v8, :cond_1c1

    .line 1262
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget v2, v9, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v1, v2, :cond_1c1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p4

    .line 1263
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result v1

    if-eqz v1, :cond_1c1

    move v1, v14

    goto :goto_1c2

    :cond_1c1
    move v1, v13

    .line 1267
    :goto_1c2
    iget-boolean v2, v12, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 1268
    iget-object v3, v12, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e9

    .line 1269
    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v2, v2

    move v3, v13

    :goto_1d0
    if-ge v3, v2, :cond_1ea

    .line 1272
    iget-object v4, v12, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1e6

    iget-object v5, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 1273
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e6

    move v13, v14

    goto :goto_1ea

    :cond_1e6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d0

    :cond_1e9
    move v13, v2

    :cond_1ea
    :goto_1ea
    if-nez v13, :cond_251

    if-eqz v1, :cond_221

    if-eqz v15, :cond_1f1

    goto :goto_251

    .line 1284
    :cond_1f1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not allow granting of advanced Uri permissions (uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1290
    :cond_221
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not allow granting of Uri permissions (uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1298
    :cond_251
    :goto_251
    invoke-virtual {v0, v12, v9, v7, v10}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    if-nez v1, :cond_2b1

    .line 1301
    iget-object v1, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1302
    :try_start_25a
    invoke-virtual {v0, v9, v7, v10}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result v0

    .line 1303
    monitor-exit v1
    :try_end_25f
    .catchall {:try_start_25a .. :try_end_25f} :catchall_2ae

    if-nez v0, :cond_2b1

    const-string v0, "android.permission.MANAGE_DOCUMENTS"

    .line 1305
    iget-object v1, v12, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28f

    .line 1306
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have permission to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; you could obtain access using ACTION_OPEN_DOCUMENT or related APIs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1311
    :cond_28f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have permission to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2ae
    move-exception v0

    .line 1303
    :try_start_2af
    monitor-exit v1
    :try_end_2b0
    .catchall {:try_start_2af .. :try_end_2b0} :catchall_2ae

    throw v0

    :cond_2b1
    return v8
.end method

.method public final checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 946
    iget-object v5, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d3

    .line 950
    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x1

    if-ne v5, v3, :cond_1a

    return v6

    .line 952
    :cond_1a
    iget-boolean v5, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/4 v7, 0x0

    if-nez v5, :cond_20

    return v7

    :cond_20
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_26

    move v5, v6

    goto :goto_27

    :cond_26
    move v5, v7

    :goto_27
    and-int/lit8 v8, v4, 0x2

    if-nez v8, :cond_2d

    move v8, v6

    goto :goto_2e

    :cond_2d
    move v8, v7

    :goto_2e
    if-nez v5, :cond_3d

    .line 960
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v9, :cond_3d

    if-eqz p5, :cond_3d

    .line 961
    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3d

    move v5, v6

    :cond_3d
    if-nez v8, :cond_4c

    .line 964
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-eqz v9, :cond_4c

    if-eqz p5, :cond_4c

    .line 965
    invoke-virtual {v0, v9, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4c

    move v8, v6

    .line 971
    :cond_4c
    iget-object v9, v1, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v9, :cond_52

    move v9, v6

    goto :goto_53

    :cond_52
    move v9, v7

    .line 972
    :goto_53
    iget-object v10, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v10, :cond_59

    move v10, v6

    goto :goto_5a

    :cond_59
    move v10, v7

    .line 975
    :goto_5a
    iget-object v11, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-eqz v11, :cond_9c

    .line 977
    iget-object v12, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 978
    array-length v13, v11

    :cond_65
    :goto_65
    if-lez v13, :cond_9c

    if-eqz v5, :cond_6b

    if-nez v8, :cond_9c

    :cond_6b
    add-int/lit8 v13, v13, -0x1

    .line 981
    aget-object v14, v11, v13

    .line 982
    invoke-virtual {v14, v12}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_65

    if-nez v5, :cond_88

    .line 984
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_88

    if-eqz p5, :cond_87

    .line 990
    invoke-virtual {v0, v15, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v15

    if-nez v15, :cond_87

    move v5, v6

    goto :goto_88

    :cond_87
    move v9, v7

    :cond_88
    :goto_88
    if-nez v8, :cond_65

    .line 999
    invoke-virtual {v14}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_65

    if-eqz p5, :cond_9a

    .line 1005
    invoke-virtual {v0, v14, v3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_9a

    move v8, v6

    goto :goto_65

    :cond_9a
    move v10, v7

    goto :goto_65

    :cond_9c
    if-eqz v9, :cond_9f

    move v5, v6

    :cond_9f
    if-eqz v10, :cond_a2

    move v8, v6

    .line 1025
    :cond_a2
    iget-boolean v9, v1, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    if-eqz v9, :cond_c9

    .line 1026
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1027
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-eq v1, v9, :cond_bc

    if-nez v1, :cond_c7

    .line 1029
    invoke-static {v9}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v9

    if-eqz v9, :cond_c7

    .line 1030
    :cond_bc
    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v2, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/ActivityManagerInternal;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-nez v0, :cond_c7

    goto :goto_c9

    :cond_c7
    move v0, v7

    goto :goto_ca

    :cond_c9
    :goto_c9
    move v0, v6

    :goto_ca
    if-eqz v5, :cond_d1

    if-eqz v8, :cond_d1

    if-eqz v0, :cond_d1

    goto :goto_d2

    :cond_d1
    move v6, v7

    :goto_d2
    return v6

    .line 947
    :cond_d3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must never hold local mLock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z
    .registers 11

    .line 933
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v1, p2, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-eq v0, v1, :cond_14

    const/4 v0, -0x1

    const/4 v1, 0x1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 934
    invoke-static {v2, p3, v0, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 939
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsInternalUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;IIZ)Z

    move-result p0

    return p0
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .registers 3

    .line 215
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 217
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    and-int/lit8 v0, p3, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    if-nez p2, :cond_11

    return v2

    .line 1340
    :cond_11
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_1c

    return v1

    .line 1344
    :cond_1c
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriPermission;

    if-eqz p2, :cond_2b

    .line 1345
    invoke-virtual {p2, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result p2

    if-lt p2, v0, :cond_2b

    return v2

    .line 1350
    :cond_2b
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move v3, v1

    :goto_30
    if-ge v3, p2, :cond_52

    .line 1352
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    .line 1353
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v6, v5, Lcom/android/server/uri/GrantUri;->prefix:Z

    if-eqz v6, :cond_4f

    iget-object v6, p1, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v5}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1354
    invoke-virtual {v4, p3}, Lcom/android/server/uri/UriPermission;->getStrength(I)I

    move-result v4

    if-lt v4, v0, :cond_4f

    return v2

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_52
    return v1
.end method

.method public clearGrantedUriPermissions(Ljava/lang/String;I)V
    .registers 6

    .line 406
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "clearGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 409
    :try_start_d
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    .line 410
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw p0
.end method

.method public final enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 4

    .line 1079
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    .line 1080
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Isolated process not allowed to call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_13

    .line 759
    invoke-static {}, Lcom/google/android/collect/Maps;->newArrayMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 760
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 763
    :cond_13
    invoke-virtual {v0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/uri/UriPermission;

    if-nez p0, :cond_23

    .line 765
    new-instance p0, Lcom/android/server/uri/UriPermission;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriPermission;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V

    .line 766
    invoke-virtual {v0, p4, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-object p0
.end method

.method public final findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1064
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_11

    .line 1066
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/uri/UriPermission;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/GrantedUriPermission;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_APP_GRANTED_URI_PERMISSIONS"

    const-string v2, "getGrantedUriPermissions"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_11
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_4f

    .line 335
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    move v6, v3

    .line 336
    :goto_24
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_4c

    .line 337
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_3a

    .line 338
    iget-object v8, v7, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    :cond_3a
    iget v8, v7, Lcom/android/server/uri/UriPermission;->targetUserId:I

    if-ne v8, p2, :cond_49

    iget v8, v7, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v8, :cond_49

    .line 341
    invoke-virtual {v7}, Lcom/android/server/uri/UriPermission;->buildGrantedUriPermission()Landroid/app/GrantedUriPermission;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 345
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_11 .. :try_end_50} :catchall_56

    .line 346
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_56
    move-exception p0

    .line 345
    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public getLocalService()Lcom/android/server/uri/UriGrantsManagerInternal;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 175
    new-instance v0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$LocalService-IA;)V

    return-object v0
.end method

.method public final getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;
    .registers 11

    .line 1086
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    or-int/lit16 p0, p3, 0x800

    int-to-long v2, p0

    move-object v1, p1

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    const-string v0, "getUriPermissions"

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    .line 279
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 282
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 283
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v3, 0xc0000

    .line 284
    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ne v1, v0, :cond_b6

    .line 291
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    if-eqz p2, :cond_73

    .line 294
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_4f

    const-string p0, "UriGrantsManagerService"

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permission grants found for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 299
    :cond_4f
    :goto_4f
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-ge v3, p2, :cond_ac

    .line 300
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriPermission;

    .line 301
    iget-object v0, p2, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    if-eqz p3, :cond_69

    iget v0, p2, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v0, :cond_70

    .line 303
    :cond_69
    invoke-virtual {p2}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 308
    :cond_73
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    move v0, v3

    :goto_7a
    if-ge v0, p2, :cond_ac

    .line 310
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    .line 311
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move v5, v3

    .line 312
    :goto_85
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_a9

    .line 313
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermission;

    .line 314
    iget-object v7, v6, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a6

    if-eqz p3, :cond_9f

    iget v7, v6, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v7, :cond_a6

    .line 316
    :cond_9f
    invoke-virtual {v6}, Lcom/android/server/uri/UriPermission;->buildPersistedPublicApiObject()Landroid/content/UriPermission;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    add-int/lit8 v5, v5, 0x1

    goto :goto_85

    :cond_a9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7a

    .line 321
    :cond_ac
    :goto_ac
    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_2e .. :try_end_ad} :catchall_b3

    .line 322
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_b3
    move-exception p0

    .line 321
    :try_start_b4
    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    throw p0

    .line 287
    :cond_b6
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not belong to calling UID "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .registers 8

    .line 239
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    return-void
.end method

.method public final grantUriPermissionFromOwnerUnlocked(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    .registers 18

    move-object v0, p4

    move-object v1, p0

    .line 249
    iget-object v2, v1, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 250
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "grantUriPermissionFromOwner"

    const/4 v9, 0x0

    move/from16 v5, p7

    .line 249
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 253
    invoke-static {p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v5

    if-eqz v5, :cond_5c

    .line 257
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move v3, p2

    if-eq v3, v2, :cond_37

    .line 258
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v2, v4, :cond_2f

    goto :goto_37

    .line 261
    :cond_2f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "nice try"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :goto_37
    if-eqz p3, :cond_54

    if-eqz v0, :cond_4c

    .line 271
    new-instance v4, Lcom/android/server/uri/GrantUri;

    move v7, p5

    move/from16 v2, p6

    invoke-direct {v4, v2, p4, p5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, v4

    move v4, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V

    return-void

    .line 268
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null target"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V
    .registers 15

    .line 774
    invoke-static {p4}, Landroid/content/Intent;->isAccessUriMode(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 785
    :cond_7
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 786
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0x10000000

    const/16 v3, 0x3e8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_34

    const-string p0, "UriGrantsManagerService"

    .line 789
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No content provider found for grant: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 794
    :cond_34
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    :try_start_37
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, p2, p1, p3}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p2

    .line 796
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_5d

    .line 797
    invoke-virtual {p2, p4, p5}, Lcom/android/server/uri/UriPermission;->grantModes(ILcom/android/server/uri/UriPermissionOwner;)Z

    .line 798
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    .line 799
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x0

    and-int/lit8 p0, p4, 0x40

    if-eqz p0, :cond_57

    const/4 p0, 0x1

    goto :goto_58

    :cond_57
    const/4 p0, 0x0

    :goto_58
    move v8, p0

    .line 798
    invoke-virtual/range {v2 .. v8}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    return-void

    :catchall_5d
    move-exception p0

    .line 796
    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public final grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 809
    :cond_3
    iget-object v0, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_23

    .line 811
    iget v3, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    iget-object v4, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    .line 812
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/uri/GrantUri;

    iget v6, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    move-object v2, p0

    move-object v7, p2

    .line 811
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    return-void
.end method

.method public final grantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;I)V
    .registers 16

    if-eqz p2, :cond_20

    .line 821
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v1, 0x10000000

    invoke-virtual {v0, p2, v1, v2, p6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 824
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result v1

    if-gez v1, :cond_17

    return-void

    :cond_17
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 830
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    return-void

    .line 819
    :cond_20
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "targetPkg"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final matchesProvider(Landroid/net/Uri;Landroid/content/pm/ProviderInfo;)Z
    .registers 6

    .line 548
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    .line 549
    iget-object p1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const/16 p2, 0x3b

    .line 550
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_14

    .line 551
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_14
    const-string p2, ";"

    .line 553
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 554
    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, p2, :cond_2c

    .line 556
    aget-object v2, p1, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    return v0
.end method

.method public final maybePrunePersistedUriGrantsLocked(I)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 571
    :cond_c
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v2, 0x200

    if-ge v1, v2, :cond_15

    return v0

    .line 573
    :cond_15
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 574
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    .line 575
    iget v4, v3, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v4, :cond_21

    .line 576
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 580
    :cond_35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    if-gtz p1, :cond_3d

    return v0

    .line 583
    :cond_3d
    new-instance v2, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;

    invoke-direct {v2}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_45
    if-ge v0, p1, :cond_57

    .line 585
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermission;

    const/4 v3, -0x1

    .line 589
    invoke-virtual {v2, v3}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    .line 590
    invoke-virtual {p0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_57
    const/4 p0, 0x1

    return p0
.end method

.method public providePersistentUriGrants()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/uri/UriPermission;",
            ">;"
        }
    .end annotation

    .line 1364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1367
    :try_start_8
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v2, :cond_34

    .line 1369
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 1371
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v3

    :goto_1f
    if-ge v7, v6, :cond_31

    .line 1373
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    .line 1375
    iget v9, v8, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v9, :cond_2e

    .line 1376
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1380
    :cond_34
    monitor-exit v1

    return-object v0

    :catchall_36
    move-exception p0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public final readGrantedUriPermissionsLocked()V
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "Failed reading Uri grants"

    const-string v2, "UriGrantsManagerService"

    .line 685
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 689
    :try_start_b
    iget-object v6, v0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_11} :catch_155
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_14a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_11} :catch_140
    .catchall {:try_start_b .. :try_end_11} :catchall_13d

    .line 690
    :try_start_11
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v7

    .line 693
    :goto_15
    invoke-interface {v7}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_11e

    .line 694
    invoke-interface {v7}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    if-ne v8, v10, :cond_10f

    const-string/jumbo v8, "uri-grant"

    .line 696
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10f

    const-string/jumbo v8, "userHandle"

    const/16 v9, -0x2710

    .line 699
    invoke-interface {v7, v5, v8, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v9, :cond_39

    move v10, v8

    goto :goto_48

    :cond_39
    const-string/jumbo v8, "sourceUserId"

    .line 706
    invoke-interface {v7, v5, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "targetUserId"

    .line 707
    invoke-interface {v7, v5, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v10, v9

    :goto_48
    const-string/jumbo v9, "sourcePkg"

    .line 709
    invoke-interface {v7, v5, v9}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "targetPkg"

    .line 710
    invoke-interface {v7, v5, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "uri"

    .line 711
    invoke-interface {v7, v5, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string/jumbo v13, "prefix"

    const/4 v14, 0x0

    .line 712
    invoke-interface {v7, v5, v13, v14}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    const-string v15, "modeFlags"

    .line 713
    invoke-interface {v7, v5, v15}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const-string v14, "createdTime"
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_71} :catch_138
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_71} :catch_132
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_71} :catch_12a
    .catchall {:try_start_11 .. :try_end_71} :catchall_124

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 714
    :try_start_75
    invoke-interface {v7, v5, v14, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 719
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    const/high16 v5, 0xc0000

    move-wide/from16 v18, v3

    const/16 v3, 0x3e8

    invoke-virtual {v0, v14, v8, v5, v3}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v3
    :try_end_87
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_87} :catch_138
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_87} :catch_107
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_87} :catch_101
    .catchall {:try_start_75 .. :try_end_87} :catchall_124

    if-eqz v3, :cond_ce

    .line 721
    :try_start_89
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 722
    iget-object v4, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;
    :try_end_93
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_93} :catch_138
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_93} :catch_c5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_89 .. :try_end_93} :catch_101
    .catchall {:try_start_89 .. :try_end_93} :catchall_124

    move-object/from16 v20, v6

    const-wide/16 v5, 0x2000

    :try_start_97
    invoke-virtual {v4, v11, v5, v6, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c0

    .line 725
    new-instance v5, Lcom/android/server/uri/GrantUri;

    if-eqz v13, :cond_a5

    const/16 v14, 0x80

    goto :goto_a6

    :cond_a5
    const/4 v14, 0x0

    .line 726
    :goto_a6
    invoke-direct {v5, v8, v12, v14}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    .line 727
    invoke-virtual {v0, v9, v11, v4, v5}, Lcom/android/server/uri/UriGrantsManagerService;->findOrCreateUriPermissionLocked(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v5

    .line 729
    invoke-virtual {v5, v15, v1, v2}, Lcom/android/server/uri/UriPermission;->initPersistedModes(IJ)V

    .line 730
    iget-object v9, v0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v11, 0x0

    .line 732
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    iget-object v1, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 730
    invoke-virtual/range {v9 .. v15}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V
    :try_end_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_c0} :catch_13a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_c0} :catch_c3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_97 .. :try_end_c0} :catch_fd
    .catchall {:try_start_97 .. :try_end_c0} :catchall_fb

    :cond_c0
    move-object/from16 v2, v17

    goto :goto_115

    :catch_c3
    move-exception v0

    goto :goto_c8

    :catch_c5
    move-exception v0

    move-object/from16 v20, v6

    :goto_c8
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_135

    :cond_ce
    move-object/from16 v20, v6

    .line 737
    :try_start_d0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisted grant for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " had source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but instead found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_f1
    .catch Ljava/io/FileNotFoundException; {:try_start_d0 .. :try_end_f1} :catch_13a
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_f1} :catch_ff
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d0 .. :try_end_f1} :catch_fd
    .catchall {:try_start_d0 .. :try_end_f1} :catchall_fb

    move-object/from16 v2, v17

    :try_start_f3
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catch Ljava/io/FileNotFoundException; {:try_start_f3 .. :try_end_f6} :catch_13a
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f3 .. :try_end_f6} :catch_f7
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_fb

    goto :goto_115

    :catch_f7
    move-exception v0

    goto :goto_12f

    :catch_f9
    move-exception v0

    goto :goto_10c

    :catchall_fb
    move-exception v0

    goto :goto_127

    :catch_fd
    move-exception v0

    goto :goto_104

    :catch_ff
    move-exception v0

    goto :goto_10a

    :catch_101
    move-exception v0

    move-object/from16 v20, v6

    :goto_104
    move-object/from16 v2, v17

    goto :goto_12f

    :catch_107
    move-exception v0

    move-object/from16 v20, v6

    :goto_10a
    move-object/from16 v2, v17

    :goto_10c
    move-object/from16 v1, v16

    goto :goto_135

    :cond_10f
    move-object/from16 v16, v1

    move-wide/from16 v18, v3

    move-object/from16 v20, v6

    :goto_115
    move-object/from16 v1, v16

    move-wide/from16 v3, v18

    move-object/from16 v6, v20

    const/4 v5, 0x0

    goto/16 :goto_15

    :cond_11e
    move-object/from16 v20, v6

    .line 750
    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_159

    :catchall_124
    move-exception v0

    move-object/from16 v20, v6

    :goto_127
    move-object/from16 v5, v20

    goto :goto_151

    :catch_12a
    move-exception v0

    move-object/from16 v16, v1

    move-object/from16 v20, v6

    :goto_12f
    move-object/from16 v5, v20

    goto :goto_144

    :catch_132
    move-exception v0

    move-object/from16 v20, v6

    :goto_135
    move-object/from16 v5, v20

    goto :goto_14c

    :catch_138
    move-object/from16 v20, v6

    :catch_13a
    move-object/from16 v5, v20

    goto :goto_156

    :catchall_13d
    move-exception v0

    const/4 v5, 0x0

    goto :goto_151

    :catch_140
    move-exception v0

    move-object/from16 v16, v1

    const/4 v5, 0x0

    :goto_144
    move-object/from16 v1, v16

    .line 748
    :try_start_146
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_156

    :catch_14a
    move-exception v0

    const/4 v5, 0x0

    .line 746
    :goto_14c
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14f
    .catchall {:try_start_146 .. :try_end_14f} :catchall_150

    goto :goto_156

    :catchall_150
    move-exception v0

    .line 750
    :goto_151
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 751
    throw v0

    :catch_155
    const/4 v5, 0x0

    .line 750
    :goto_156
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_159
    return-void
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 11

    if-eqz p3, :cond_15

    .line 425
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v2, "releasePersistableUriPermission"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p3, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    goto :goto_1f

    :cond_15
    const-string/jumbo v0, "releasePersistableUriPermission"

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 430
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :goto_1f
    const/4 v1, 0x3

    .line 433
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 436
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_26
    new-instance v2, Lcom/android/server/uri/GrantUri;

    const/4 v3, 0x0

    invoke-direct {v2, p4, p1, v3}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v2

    .line 441
    new-instance v4, Lcom/android/server/uri/GrantUri;

    const/16 v5, 0x80

    invoke-direct {v4, p4, p1, v5}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, v0, v4}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p4

    if-nez v2, :cond_65

    if-nez p4, :cond_65

    if-eqz p3, :cond_42

    goto :goto_65

    .line 444
    :cond_42
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No permission grants found for UID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and Uri "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    :goto_65
    if-eqz v2, :cond_6f

    .line 449
    invoke-virtual {v2, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result p1

    or-int/2addr v3, p1

    .line 450
    invoke-virtual {p0, v2}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    :cond_6f
    if-eqz p4, :cond_79

    .line 453
    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->releasePersistableModes(I)Z

    move-result p1

    or-int/2addr v3, p1

    .line 454
    invoke-virtual {p0, p4}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V

    :cond_79
    if-eqz v3, :cond_7e

    .line 458
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 460
    :cond_7e
    monitor-exit v1

    return-void

    :catchall_80
    move-exception p0

    monitor-exit v1
    :try_end_82
    .catchall {:try_start_26 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public final removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1046
    iget v0, p1, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-eqz v0, :cond_5

    return-void

    .line 1049
    :cond_5
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    return-void

    .line 1056
    :cond_12
    iget-object v1, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1058
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/uri/UriPermission;->targetUid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_24
    return-void
.end method

.method public final removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    if-eqz p1, :cond_6

    goto :goto_e

    .line 479
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must narrow by either package or user"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 484
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v2, v1, :cond_8e

    .line 486
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 487
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    const/4 v6, 0x1

    if-eq p2, v0, :cond_2f

    .line 491
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne p2, v7, :cond_8c

    .line 492
    :cond_2f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_37
    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 493
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_57

    if-nez p4, :cond_4f

    .line 496
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_57

    :cond_4f
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    .line 497
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 501
    :cond_57
    iget-object v9, v8, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v9, v9, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    const-string v10, "downloads"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    if-nez p3, :cond_6a

    goto :goto_37

    :cond_6a
    if-eqz p3, :cond_6e

    move v9, v0

    goto :goto_70

    :cond_6e
    const/16 v9, -0x41

    .line 504
    :goto_70
    invoke-virtual {v8, v9, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v9

    or-int/2addr v3, v9

    .line 509
    iget v8, v8, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v8, :cond_37

    .line 510
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_37

    .line 515
    :cond_7d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 516
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_8c
    add-int/2addr v2, v6

    goto :goto_16

    :cond_8e
    if-eqz v3, :cond_93

    .line 524
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_93
    return-void
.end method

.method public final revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 12

    .line 837
    iget-object v0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 838
    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0xc0000

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(Ljava/lang/String;III)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string p0, "UriGrantsManagerService"

    .line 841
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No content provider found for permission revoke: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 841
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 846
    :cond_2b
    invoke-virtual {p0, v0, p3, p2, p4}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v5

    .line 848
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 849
    :try_start_37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V

    .line 851
    monitor-exit v6

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v6
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p5, :cond_5b

    .line 861
    iget-object p5, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/ArrayMap;

    if-eqz p5, :cond_5a

    .line 864
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move v0, v1

    :goto_14
    if-ltz v2, :cond_4a

    .line 865
    invoke-virtual {p5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_27

    .line 866
    iget-object v4, v3, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_47

    .line 869
    :cond_27
    iget-object v4, v3, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v5, v4, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v6, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v5, v6, :cond_47

    iget-object v4, v4, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v5, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 870
    invoke-virtual {v4, v5}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_47

    or-int/lit8 v4, p4, 0x40

    .line 873
    invoke-virtual {v3, v4, v1}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v4

    or-int/2addr v0, v4

    .line 875
    iget v3, v3, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v3, :cond_47

    .line 876
    invoke-virtual {p5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_47
    :goto_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 880
    :cond_4a
    invoke-virtual {p5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 881
    iget-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_55
    if-eqz v0, :cond_5a

    .line 884
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_5a
    return-void

    .line 893
    :cond_5b
    iget-object p2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v0

    move p5, v1

    :goto_63
    if-ltz p2, :cond_c0

    .line 894
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 895
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 897
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_77
    if-ltz v3, :cond_b2

    .line 898
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission;

    if-eqz p1, :cond_8a

    .line 899
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8a

    goto :goto_af

    .line 902
    :cond_8a
    iget-object v5, v4, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iget v6, v5, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    iget v7, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    if-ne v6, v7, :cond_af

    iget-object v5, v5, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    iget-object v6, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    .line 903
    invoke-virtual {v5, v6}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_af

    or-int/lit8 v5, p4, 0x40

    if-nez p1, :cond_a2

    move v6, v0

    goto :goto_a3

    :cond_a2
    move v6, v1

    .line 906
    :goto_a3
    invoke-virtual {v4, v5, v6}, Lcom/android/server/uri/UriPermission;->revokeModes(IZ)Z

    move-result v5

    or-int/2addr p5, v5

    .line 909
    iget v4, v4, Lcom/android/server/uri/UriPermission;->modeFlags:I

    if-nez v4, :cond_af

    .line 910
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_af
    :goto_af
    add-int/lit8 v3, v3, -0x1

    goto :goto_77

    .line 915
    :cond_b2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 916
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_bd
    add-int/lit8 p2, p2, -0x1

    goto :goto_63

    :cond_c0
    if-eqz p5, :cond_c5

    .line 921
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    :cond_c5
    return-void
.end method

.method public final schedulePersistUriGrants()V
    .registers 4

    .line 1072
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1073
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mH:Lcom/android/server/uri/UriGrantsManagerService$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_14
    return-void
.end method

.method public final start()V
    .registers 4

    .line 179
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$LocalService-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 11

    if-eqz p3, :cond_15

    .line 360
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS"

    const-string/jumbo v2, "takePersistableUriPermission"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p3, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    goto :goto_1f

    :cond_15
    const-string/jumbo p3, "takePersistableUriPermission"

    .line 364
    invoke-virtual {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 365
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    :goto_1f
    const/4 v0, 0x3

    .line 368
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 371
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_26
    new-instance v1, Lcom/android/server/uri/GrantUri;

    const/4 v2, 0x0

    invoke-direct {v1, p4, p1, v2}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, p3, v1}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object v1

    .line 376
    new-instance v3, Lcom/android/server/uri/GrantUri;

    const/16 v4, 0x80

    invoke-direct {v3, p4, p1, v4}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {p0, p3, v3}, Lcom/android/server/uri/UriGrantsManagerService;->findUriPermissionLocked(ILcom/android/server/uri/GrantUri;)Lcom/android/server/uri/UriPermission;

    move-result-object p4

    const/4 v3, 0x1

    if-eqz v1, :cond_45

    .line 379
    iget v4, v1, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_45

    move v4, v3

    goto :goto_46

    :cond_45
    move v4, v2

    :goto_46
    if-eqz p4, :cond_4e

    .line 381
    iget v5, p4, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v5, p2

    if-ne v5, p2, :cond_4e

    goto :goto_4f

    :cond_4e
    move v3, v2

    :goto_4f
    if-nez v4, :cond_77

    if-eqz v3, :cond_54

    goto :goto_77

    .line 385
    :cond_54
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No persistable permission grants found for UID "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " and Uri "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_77
    :goto_77
    if-eqz v4, :cond_7e

    .line 390
    invoke-virtual {v1, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result p1

    or-int/2addr v2, p1

    :cond_7e
    if-eqz v3, :cond_85

    .line 393
    invoke-virtual {p4, p2}, Lcom/android/server/uri/UriPermission;->takePersistableModes(I)Z

    move-result p1

    or-int/2addr v2, p1

    .line 396
    :cond_85
    invoke-virtual {p0, p3}, Lcom/android/server/uri/UriGrantsManagerService;->maybePrunePersistedUriGrantsLocked(I)Z

    move-result p1

    or-int/2addr p1, v2

    if-eqz p1, :cond_8f

    .line 399
    invoke-virtual {p0}, Lcom/android/server/uri/UriGrantsManagerService;->schedulePersistUriGrants()V

    .line 401
    :cond_8f
    monitor-exit v0

    return-void

    :catchall_91
    move-exception p0

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_26 .. :try_end_93} :catchall_91

    throw p0
.end method

.method public final writeGrantedUriPermissions()V
    .registers 14

    .line 1388
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1393
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1394
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1395
    :try_start_b
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_14
    if-ge v6, v4, :cond_3e

    .line 1397
    iget-object v8, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 1399
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move v10, v5

    :goto_23
    if-ge v10, v9, :cond_3b

    .line 1401
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/uri/UriPermission;

    .line 1403
    iget v12, v11, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v12, :cond_38

    add-int/lit8 v7, v7, 0x1

    .line 1405
    invoke-virtual {v11}, Lcom/android/server/uri/UriPermission;->snapshot()Lcom/android/server/uri/UriPermission$Snapshot;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 1409
    :cond_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_d7

    const/4 v3, 0x0

    .line 1413
    :try_start_40
    iget-object v4, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v0, v1}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_46} :catch_ca

    .line 1415
    :try_start_46
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v1

    .line 1416
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "uri-grants"

    .line 1417
    invoke-interface {v1, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1418
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/UriPermission$Snapshot;

    const-string/jumbo v5, "uri-grant"

    .line 1419
    invoke-interface {v1, v3, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "sourceUserId"

    .line 1420
    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget v6, v6, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    invoke-interface {v1, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "targetUserId"

    .line 1421
    iget v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->targetUserId:I

    invoke-interface {v1, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "sourcePkg"

    .line 1422
    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    invoke-interface {v1, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "targetPkg"

    .line 1423
    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    invoke-interface {v1, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "uri"

    .line 1424
    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-object v6, v6, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "prefix"

    .line 1425
    iget-object v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->uri:Lcom/android/server/uri/GrantUri;

    iget-boolean v6, v6, Lcom/android/server/uri/GrantUri;->prefix:Z

    invoke-static {v1, v5, v6}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v5, "modeFlags"

    .line 1426
    iget v6, v4, Lcom/android/server/uri/UriPermission$Snapshot;->persistedModeFlags:I

    invoke-interface {v1, v3, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "createdTime"

    .line 1427
    iget-wide v8, v4, Lcom/android/server/uri/UriPermission$Snapshot;->persistedCreateTime:J

    invoke-interface {v1, v3, v5, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "uri-grant"

    .line 1428
    invoke-interface {v1, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_59

    :cond_ba
    const-string/jumbo v2, "uri-grants"

    .line 1430
    invoke-interface {v1, v3, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1431
    invoke-interface {v1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1433
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_c8} :catch_c9

    goto :goto_d1

    :catch_c9
    move-object v3, v0

    :catch_ca
    if-eqz v3, :cond_d1

    .line 1436
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mGrantFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1440
    :cond_d1
    :goto_d1
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mMetricsHelper:Lcom/android/server/uri/UriMetricsHelper;

    invoke-virtual {p0, v7}, Lcom/android/server/uri/UriMetricsHelper;->reportPersistentUriFlushed(I)V

    return-void

    :catchall_d7
    move-exception p0

    .line 1409
    :try_start_d8
    monitor-exit v3
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw p0
.end method
