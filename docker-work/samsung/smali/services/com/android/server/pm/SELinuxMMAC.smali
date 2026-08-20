.class public final Lcom/android/server/pm/SELinuxMMAC;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# static fields
.field public static final DEBUG_POLICY:Z = false

.field public static final DEBUG_POLICY_INSTALL:Z = false

.field public static final DEBUG_POLICY_ORDER:Z = false

.field public static final DEFAULT_SEINFO:Ljava/lang/String; = "default"

.field public static final PRIVILEGED_APP_STR:Ljava/lang/String; = ":privapp"

.field public static final SELINUX_LATEST_CHANGES:J = 0x88e3d87L

.field public static final SELINUX_R_CHANGES:J = 0xa0f6c63L

.field public static final TAG:Ljava/lang/String; = "SELinuxMMAC"

.field public static final TARGETSDKVERSION_STR:Ljava/lang/String; = ":targetSdkVersion="

.field public static mDDCFlag:Z

.field public static sMacPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static sPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static sPolicyRead:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    const/4 v0, 0x0

    .line 81
    sput-boolean v0, Lcom/android/server/pm/SELinuxMMAC;->mDDCFlag:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    .line 122
    new-instance v1, Ljava/io/File;

    .line 123
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/etc/selinux/plat_mac_permissions.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v0, Ljava/io/File;

    .line 127
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/selinux/system_ext_mac_permissions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 129
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_35
    new-instance v0, Ljava/io/File;

    .line 134
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/selinux/product_mac_permissions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 136
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_4b
    new-instance v0, Ljava/io/File;

    .line 141
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/selinux/vendor_mac_permissions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 143
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_61
    new-instance v0, Ljava/io/File;

    .line 148
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/selinux/odm_mac_permissions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 150
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_77
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupMACFile()V
    .registers 6

    .line 336
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/seams/ddc/mac_permissions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "/seams/ddc/mac_permissions_backup.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "/security/mycontainer/mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "/security/mycontainer/mac_permissions_backup.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 341
    invoke-static {v0, v1}, Lcom/android/server/pm/SELinuxMMAC;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 343
    :cond_35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 344
    invoke-static {v2, v3}, Lcom/android/server/pm/SELinuxMMAC;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_3e
    return-void
.end method

.method public static clearPolicies()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x1

    .line 350
    invoke-virtual {p0, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 351
    invoke-virtual {p1, v0}, Ljava/io/File;->setWritable(Z)Z

    const/4 v1, 0x0

    .line 353
    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_40

    .line 354
    :try_start_d
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_33

    const/16 v4, 0x400

    :try_start_14
    new-array v4, v4, [B

    .line 357
    :goto_16
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_20

    .line 358
    invoke-virtual {v3, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_29

    goto :goto_16

    .line 361
    :cond_20
    :try_start_20
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    :try_start_23
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_3e

    goto :goto_49

    :catchall_27
    move-exception v3

    goto :goto_35

    :catchall_29
    move-exception v0

    .line 353
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v3

    :try_start_2f
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v3

    move v0, v1

    :goto_35
    :try_start_35
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v2

    :try_start_3a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw v3
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception v2

    goto :goto_42

    :catch_40
    move-exception v2

    move v0, v1

    :goto_42
    const-string v3, "SELinuxMMAC"

    const-string v4, "Exception : "

    .line 362
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    :goto_49
    invoke-virtual {p0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 366
    invoke-virtual {p1, v1}, Ljava/io/File;->setWritable(Z)Z

    return v0
.end method

.method public static getDDCFlag()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/SharedUserApi;Lcom/android/server/compat/PlatformCompat;)Ljava/lang/String;
    .registers 4

    .line 552
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getTargetSdkVersionForSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/SharedUserApi;Lcom/android/server/compat/PlatformCompat;)I

    move-result p2

    if-eqz p1, :cond_10

    .line 557
    invoke-interface {p1}, Lcom/android/server/pm/pkg/SharedUserApi;->isPrivileged()Z

    move-result p1

    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result v0

    or-int/2addr p1, v0

    goto :goto_14

    :cond_10
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result p1

    .line 558
    :goto_14
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Ljava/lang/String;
    .registers 7

    .line 577
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v0

    .line 578
    :try_start_3
    sget-boolean v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    const/4 v2, 0x0

    if-nez v1, :cond_9

    goto :goto_21

    .line 583
    :cond_9
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Policy;

    .line 584
    invoke-virtual {v2, p0}, Lcom/android/server/pm/Policy;->getMatchedSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 590
    :cond_21
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_4e

    if-nez v2, :cond_26

    const-string v2, "default"

    :cond_26
    if-eqz p1, :cond_39

    .line 597
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":privapp"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 600
    :cond_39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":targetSdkVersion="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_4e
    move-exception p0

    .line 590
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public static getTargetSdkVersionForSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/pkg/SharedUserApi;Lcom/android/server/compat/PlatformCompat;)I
    .registers 5

    if-eqz p1, :cond_11

    .line 525
    invoke-interface {p1}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_11

    .line 526
    invoke-interface {p1}, Lcom/android/server/pm/pkg/SharedUserApi;->getSeInfoTargetSdkVersion()I

    move-result p0

    return p0

    .line 528
    :cond_11
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-wide/32 v0, 0x88e3d87

    .line 529
    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 p1, 0x2710

    .line 531
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    .line 530
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_29
    const-wide/32 v0, 0xa0f6c63

    .line 532
    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternal(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_3d

    const/16 p1, 0x1e

    .line 533
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 536
    :cond_3d
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    return p0
.end method

.method public static readCert(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "cert"

    .line 480
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-void
.end method

.method public static readInstallPolicy()Z
    .registers 14

    .line 168
    sget-object v0, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v0

    .line 169
    :try_start_3
    sget-boolean v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 170
    monitor-exit v0

    return v2

    .line 172
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10c

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 198
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    move v6, v5

    :goto_1e
    if-ge v6, v3, :cond_e2

    .line 201
    sget-object v8, Lcom/android/server/pm/SELinuxMMAC;->sMacPermissions:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 209
    :try_start_28
    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_2d} :catch_b2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2d} :catch_b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2d} :catch_b2
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_97
    .catchall {:try_start_28 .. :try_end_2d} :catchall_95

    :try_start_2d
    const-string v7, "SELinuxMMAC"

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Using policy file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 213
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const-string/jumbo v7, "policy"

    const/4 v10, 0x2

    .line 214
    invoke-interface {v1, v10, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_50
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v11, 0x3

    if-eq v7, v11, :cond_85

    .line 217
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v10, :cond_5e

    goto :goto_50

    .line 221
    :cond_5e
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v11, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, -0x35ca90d6    # -2972618.5f

    if-eq v12, v13, :cond_6d

    goto :goto_77

    :cond_6d
    const-string/jumbo v12, "signer"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    move v11, v5

    :cond_77
    :goto_77
    if-eqz v11, :cond_7d

    .line 226
    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_50

    .line 223
    :cond_7d
    invoke-static {v1}, Lcom/android/server/pm/SELinuxMMAC;->readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_84} :catch_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_84} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_84} :catch_92
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_84} :catch_8f
    .catchall {:try_start_2d .. :try_end_84} :catchall_8c

    goto :goto_50

    .line 253
    :cond_85
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v6, v6, 0x1

    move-object v7, v9

    goto :goto_1e

    :catchall_8c
    move-exception v0

    move-object v7, v9

    goto :goto_de

    :catch_8f
    move-exception v0

    move-object v7, v9

    goto :goto_98

    :catch_92
    move-exception v0

    move-object v7, v9

    goto :goto_b3

    :catchall_95
    move-exception v0

    goto :goto_de

    :catch_97
    move-exception v0

    :goto_98
    :try_start_98
    const-string v1, "SELinuxMMAC"

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catchall {:try_start_98 .. :try_end_ae} :catchall_95

    .line 253
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v5

    :catch_b2
    move-exception v0

    .line 231
    :goto_b3
    :try_start_b3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception @"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " while parsing "

    .line 233
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 235
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "SELinuxMMAC"

    .line 237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_b3 .. :try_end_da} :catchall_95

    .line 253
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v5

    :goto_de
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 264
    throw v0

    .line 273
    :cond_e2
    new-instance v1, Lcom/android/server/pm/PolicyComparator;

    invoke-direct {v1}, Lcom/android/server/pm/PolicyComparator;-><init>()V

    .line 274
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 275
    invoke-virtual {v1}, Lcom/android/server/pm/PolicyComparator;->foundDuplicate()Z

    move-result v1

    if-eqz v1, :cond_f8

    const-string v0, "SELinuxMMAC"

    const-string v1, "ERROR! Duplicate entries found parsing mac_permissions.xml files"

    .line 276
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 280
    :cond_f8
    sget-object v1, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    monitor-enter v1

    .line 281
    :try_start_fb
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 282
    sget-object v3, Lcom/android/server/pm/SELinuxMMAC;->sPolicies:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    sput-boolean v2, Lcom/android/server/pm/SELinuxMMAC;->sPolicyRead:Z

    .line 290
    monitor-exit v1

    return v2

    :catchall_109
    move-exception v0

    monitor-exit v1
    :try_end_10b
    .catchall {:try_start_fb .. :try_end_10b} :catchall_109

    throw v0

    :catchall_10c
    move-exception v1

    .line 172
    :try_start_10d
    monitor-exit v0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    throw v1
.end method

.method public static readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "package"

    .line 443
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "name"

    .line 444
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    :goto_f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3c

    .line 447
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_1d

    goto :goto_f

    .line 451
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "seinfo"

    .line 452
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string/jumbo v3, "value"

    .line 453
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-virtual {p1, v2, v3}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 455
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    .line 457
    :cond_38
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_f

    :cond_3c
    return-void
.end method

.method public static readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "seinfo"

    .line 486
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-void
.end method

.method public static readService(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "service"

    .line 493
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    return-void
.end method

.method public static readServiceOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "service"

    .line 465
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    .line 466
    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "seinfo"

    .line 467
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    :try_start_16
    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/Policy$PolicyBuilder;->addInnerTPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_38

    :catch_1a
    move-exception p1

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PB"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readService(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 474
    :goto_38
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readService(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static readSignerOrThrow(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/Policy;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "signer"

    .line 389
    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v2, Lcom/android/server/pm/Policy$PolicyBuilder;

    invoke-direct {v2}, Lcom/android/server/pm/Policy$PolicyBuilder;-><init>()V

    const-string/jumbo v3, "signature"

    .line 394
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 396
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 399
    :cond_19
    :goto_19
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_66

    .line 400
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v0, :cond_27

    goto :goto_19

    .line 404
    :cond_27
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "seinfo"

    .line 405
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    const-string/jumbo v4, "value"

    .line 406
    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 408
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readSeinfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_19

    :cond_42
    const-string/jumbo v5, "package"

    .line 409
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 410
    invoke-static {p0, v2}, Lcom/android/server/pm/SELinuxMMAC;->readPackageOrThrow(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/Policy$PolicyBuilder;)V

    goto :goto_19

    :cond_4f
    const-string v5, "cert"

    .line 411
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 412
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 413
    invoke-virtual {v2, v4}, Lcom/android/server/pm/Policy$PolicyBuilder;->addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 414
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->readCert(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_19

    .line 420
    :cond_62
    invoke-static {p0}, Lcom/android/server/pm/SELinuxMMAC;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_19

    .line 424
    :cond_66
    invoke-virtual {v2}, Lcom/android/server/pm/Policy$PolicyBuilder;->build()Lcom/android/server/pm/Policy;

    move-result-object p0

    return-object p0
.end method

.method public static restoreOrRemoveMACFile(Ljava/io/File;)V
    .registers 7

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreOrRemoveMACFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SELinuxMMAC"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_1b
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/seams/ddc/mac_permissions.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_38} :catch_d1

    const-string v2, "Backup Mac File Deleted Successfully"

    const-string v3, "Mac File Deleted Successfully"

    if-eqz v0, :cond_78

    :try_start_3e
    const-string/jumbo v0, "restoreMFile: step 1"

    .line 300
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "/seams/ddc/mac_permissions_backup.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_68

    const-string/jumbo v3, "restoreMFile: step 1_1"

    .line 303
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {v0, p0}, Lcom/android/server/pm/SELinuxMMAC;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d7

    .line 306
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    :cond_68
    const-string/jumbo v0, "restoreMFile: step 1_2"

    .line 309
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d7

    .line 311
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 314
    :cond_78
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/security/mycontainer/mac_permissions.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    const-string/jumbo v0, "restoreMFile: step 2"

    .line 315
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "/security/mycontainer/mac_permissions_backup.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c1

    const-string/jumbo v3, "restoreMFile: step 2_1"

    .line 318
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {v0, p0}, Lcom/android/server/pm/SELinuxMMAC;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 320
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d7

    .line 321
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    :cond_c1
    const-string/jumbo v0, "restoreMFile: step 2_2"

    .line 324
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d7

    .line 326
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/SecurityException; {:try_start_3e .. :try_end_d0} :catch_d1

    goto :goto_d7

    :catch_d1
    move-exception p0

    const-string v0, "Exception : "

    .line 331
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d7
    :goto_d7
    return-void
.end method

.method public static setDDCFlag(Z)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 499
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_1a

    .line 504
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_17

    const/4 v3, 0x3

    if-eq v2, v3, :cond_14

    goto :goto_8

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1a
    return-void

    .line 500
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
