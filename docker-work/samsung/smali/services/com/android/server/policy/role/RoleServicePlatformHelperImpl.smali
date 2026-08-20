.class public Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;
.super Ljava/lang/Object;
.source "RoleServicePlatformHelperImpl.java"

# interfaces
.implements Lcom/android/server/role/RoleServicePlatformHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field public static final LOG_TAG:Ljava/lang/String; = "RoleServicePlatformHelperImpl"

.field public static final ROLES_FILE_NAME:Ljava/lang/String; = "roles.xml"

.field public static final TAG_HOLDER:Ljava/lang/String; = "holder"

.field public static final TAG_ROLE:Ljava/lang/String; = "role"

.field public static final TAG_ROLES:Ljava/lang/String; = "roles"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$tII3sOW9l1MCRQnAY3O7iaVmROk(Ljava/io/DataOutputStream;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->lambda$computePackageStateHash$0(Ljava/io/DataOutputStream;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getFile(I)Ljava/io/File;
    .registers 3

    .line 182
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "roles.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$computePackageStateHash$0(Ljava/io/DataOutputStream;Landroid/content/pm/PackageManagerInternal;ILcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 9

    .line 312
    :try_start_0
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 313
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 315
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getApplicationEnabledState(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 317
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    .line 318
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 319
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_26
    if-ge v3, v1, :cond_34

    .line 321
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 325
    :cond_34
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 326
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 327
    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v3, v2

    :goto_44
    if-ge v3, v1, :cond_52

    .line 329
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 333
    :cond_52
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object p1

    .line 334
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p2

    move v0, v2

    :goto_5f
    if-ge v0, p2, :cond_6d

    .line 336
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 339
    :cond_6d
    invoke-interface {p3}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p1

    array-length p2, p1

    :goto_76
    if-ge v2, p2, :cond_84

    aget-object p3, p1, v2

    .line 340
    invoke-virtual {p3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_81} :catch_85

    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_84
    return-void

    :catch_85
    move-exception p0

    .line 344
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public computePackageStateHash(I)Ljava/lang/String;
    .registers 5

    .line 305
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 307
    new-instance v0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;

    invoke-direct {v0}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;-><init>()V

    .line 309
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 310
    new-instance v2, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$$ExternalSyntheticLambda0;-><init>(Ljava/io/DataOutputStream;Landroid/content/pm/PackageManagerInternal;I)V

    invoke-virtual {p0, v2, p1}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 347
    invoke-virtual {v0}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl$MessageDigestOutputStream;->getDigestAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLegacyRoleState(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->readFile(I)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_a

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->readFromLegacySettings(I)Ljava/util/Map;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public final isSettingsApplication(Ljava/lang/String;I)Z
    .registers 5

    .line 291
    iget-object p0, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0xd0000

    invoke-virtual {p0, v0, v1, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 296
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_1a

    goto :goto_21

    .line 299
    :cond_1a
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method public final parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 160
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 165
    :cond_b
    :goto_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_39

    .line 166
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1a

    const/4 v4, 0x3

    if-eq v2, v4, :cond_39

    :cond_1a
    if-gt v3, v0, :cond_b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    goto :goto_b

    .line 171
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "holder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    .line 172
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_39
    return-object p0
.end method

.method public final parseRoles(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 136
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 141
    :cond_b
    :goto_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_3d

    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_1a

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3d

    :cond_1a
    if-gt v4, v1, :cond_b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_20

    goto :goto_b

    .line 147
    :cond_20
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "role"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    .line 148
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->parseRoleHoldersLocked(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Set;

    move-result-object v4

    .line 150
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_3d
    return-object v0
.end method

.method public final parseXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 118
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 119
    :cond_6
    :goto_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_2d

    .line 120
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_15

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2d

    :cond_15
    if-gt v3, v0, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1b

    goto :goto_6

    .line 125
    :cond_1b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "roles"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->parseRoles(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 130
    :cond_2d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing <roles> in roles.xml"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readFile(I)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->getFile(I)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 98
    :try_start_5
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_e} :catch_32
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_32

    .line 99
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 100
    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object p0

    .line 102
    sget-object v2, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Read legacy roles.xml successfully"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_26

    if-eqz v1, :cond_25

    .line 104
    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_25} :catch_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_25} :catch_32
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_32

    :cond_25
    return-object p0

    :catchall_26
    move-exception p0

    if-eqz v1, :cond_31

    .line 98
    :try_start_29
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v1

    :try_start_2e
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw p0
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_32} :catch_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_32} :catch_32
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_32} :catch_32

    :catch_32
    move-exception p0

    .line 108
    sget-object v1, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse legacy roles.xml: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    .line 105
    :catch_4a
    sget-object p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Legacy roles.xml not found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final readFromLegacySettings(I)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 187
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 190
    iget-object v1, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assistant"

    .line 191
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v3, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_2b

    .line 198
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_41

    .line 199
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 200
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_42

    .line 205
    :cond_2b
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 206
    iget-object v2, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    const v5, 0x1040021

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_41

    goto :goto_42

    :cond_41
    move-object v2, v4

    :goto_42
    if-eqz v2, :cond_4d

    .line 212
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v5, "android.app.role.ASSISTANT"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_4d
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 218
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 221
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v5, "android.app.role.BROWSER"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_64
    const-string v2, "dialer_default_application"

    .line 225
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_71

    goto :goto_82

    .line 230
    :cond_71
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 235
    iget-object v2, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    const v5, 0x1040023

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_82

    :cond_81
    move-object v2, v4

    :goto_82
    if-eqz v2, :cond_8d

    .line 240
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v5, "android.app.role.DIALER"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8d
    const-string/jumbo v2, "sms_default_application"

    .line 244
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9b

    goto :goto_b2

    .line 249
    :cond_9b
    iget-object v2, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 252
    iget-object v2, p0, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->mContext:Landroid/content/Context;

    const v5, 0x1040024

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b2

    :cond_b1
    move-object v2, v4

    :goto_b2
    if-eqz v2, :cond_bd

    .line 257
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v5, "android.app.role.SMS"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_bd
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 263
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.HOME"

    .line 264
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v5, 0xd0000

    .line 263
    invoke-virtual {v3, v2, v5, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_df

    .line 268
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_df

    .line 269
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_e0

    :cond_df
    move-object v2, v4

    :goto_e0
    if-eqz v2, :cond_e9

    .line 270
    invoke-virtual {p0, v2, p1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;->isSettingsApplication(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_e9

    goto :goto_ea

    :cond_e9
    move-object v4, v2

    :cond_ea
    :goto_ea
    if-eqz v4, :cond_f5

    .line 277
    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string v2, "android.app.role.HOME"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f5
    const-string p0, "emergency_assistance_application"

    .line 281
    invoke-static {v1, p0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_106

    .line 284
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string p1, "android.app.role.EMERGENCY"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_106
    return-object v0
.end method
