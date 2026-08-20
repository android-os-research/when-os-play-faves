.class public Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;
.super Ljava/lang/Object;
.source "KeyCustomizationInfoXmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;,
        Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    }
.end annotation


# static fields
.field public static final CURRENT_XML_FILE_VERSION:F = 2.1f

.field public static final TAG:Ljava/lang/String; = "KeyCustomizationInfoXmlUtils"

.field public static final XML_FILE_NAME:Ljava/lang/String; = "key_customize_info.xml"


# instance fields
.field public mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

.field public mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public mMigrationCodeDuplicatedRoutinePlus:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public mMigrationCodeDuplicatedUnknownID:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public mMigrationCodeOneHandMode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public mMigrationCodeSOSMessage:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public mMigrationCodeSide:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public mMigrationCodeTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public mMigrationCodeXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

.field public mXmlVersion:F

.field public xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/KeyCustomizationInfoManager;)V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FAIL:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    .line 135
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->NOTHING:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 136
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 137
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 138
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 139
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeSide:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 140
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeSOSMessage:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 141
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeOneHandMode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 142
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedRoutinePlus:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 143
    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedUnknownID:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const/high16 v0, -0x40800000    # -1.0f

    .line 149
    iput v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    .line 154
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    return-void
.end method

.method public static getKeyCustomizationDir(I)Ljava/io/File;
    .registers 1

    .line 313
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 644
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "XmlFileErrorCode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getXmlFileErrorCode()Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->isNothing()Z

    move-result v0

    if-nez v0, :cond_25

    .line 648
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMigrationCodeB2BDeltaXCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 651
    :cond_25
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->isNothing()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 652
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "migrationCodeB2BDeltaTop="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 655
    :cond_3b
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->isNothing()Z

    move-result v0

    if-nez v0, :cond_51

    .line 656
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "migrationCodeXCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 659
    :cond_51
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->isNothing()Z

    move-result v0

    if-nez v0, :cond_67

    .line 660
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "migrationCodeTop="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 662
    :cond_67
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeSide:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->isNothing()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 663
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "migrationCodeSide="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeSide:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 665
    :cond_7d
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeSOSMessage:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->isNothing()Z

    move-result v0

    if-nez v0, :cond_93

    .line 666
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "migrationCodeSOSMessage="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeSOSMessage:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 669
    :cond_93
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeOneHandMode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->isNothing()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 670
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "migrationCodeOneHandMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeOneHandMode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 673
    :cond_a9
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedRoutinePlus:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->isNothing()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 674
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMigrationCodeDuplicatedRoutinePlus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedRoutinePlus:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 677
    :cond_bf
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedUnknownID:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->isNothing()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 678
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "mMigrationCodeDuplicatedUnknownID="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 679
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedUnknownID:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d5
    return-void
.end method

.method public final getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 4

    const/4 p0, 0x0

    .line 518
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 519
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    return p3

    .line 522
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;
    .registers 3

    const/4 p0, 0x0

    .line 635
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 636
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 637
    sget-object p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->NOTHING:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    return-object p0

    .line 639
    :cond_e
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->getMigrationCode(I)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    move-result-object p0

    return-object p0
.end method

.method public getXmlFileErrorCode()Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    .registers 1

    .line 526
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    return-object p0
.end method

.method public getXmlVersion()F
    .registers 1

    .line 173
    iget p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    return p0
.end method

.method public initXmlVersion()V
    .registers 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initXmlVersion, Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizationInfoXmlUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x40066666    # 2.1f

    .line 159
    iput v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    return-void
.end method

.method public loadSettingsLocked(I)V
    .registers 10

    const-string v0, "KeyCustomizationInfoXmlUtils"

    const-string/jumbo v1, "loadSettingsLockedInternal"

    .line 317
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getKeyCustomizationDir(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v2, "key_customize_info.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 322
    :try_start_15
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_26} :catch_105
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_dd
    .catchall {:try_start_15 .. :try_end_26} :catchall_db

    .line 324
    :try_start_26
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 325
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 329
    :cond_2d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_cf

    .line 331
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "keycustomize_info_version"

    .line 332
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    const-string/jumbo v5, "version"

    .line 333
    invoke-interface {v3, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_cf

    .line 335
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    goto/16 :goto_cf

    :cond_56
    const-string/jumbo v6, "press"

    .line 337
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    const/4 v5, 0x3

    .line 338
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_cf

    :cond_64
    const-string/jumbo v6, "long"

    .line 339
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    const/4 v5, 0x4

    .line 340
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_cf

    :cond_72
    const-string v6, "double"

    .line 341
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    const/16 v5, 0x8

    .line 342
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_cf

    :cond_80
    const-string/jumbo v6, "triple"

    .line 343
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    const/16 v5, 0x10

    .line 344
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_cf

    :cond_8f
    const-string/jumbo v6, "quadruple"

    .line 345
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9e

    const/16 v5, 0x20

    .line 346
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_cf

    :cond_9e
    const-string/jumbo v6, "quintuple"

    .line 347
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ad

    const/16 v5, 0x40

    .line 348
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_cf

    :cond_ad
    const-string/jumbo v6, "hot_key"

    .line 350
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 351
    iget-object v5, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 352
    invoke-virtual {v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getHotKeyMapLocked()Landroid/util/SparseArray;

    move-result-object v5

    .line 353
    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 354
    invoke-virtual {p0, v3, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseHotKeysAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;)V

    goto :goto_cf

    :cond_c3
    const-string/jumbo v6, "migration"

    .line 356
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 357
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseMigrationAttributes(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_cf
    :goto_cf
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    .line 361
    sget-object p1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    :try_end_d6
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_d6} :catch_d9
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_d6} :catch_d7
    .catchall {:try_start_26 .. :try_end_d6} :catchall_102

    goto :goto_fe

    :catch_d7
    move-exception p1

    goto :goto_e1

    :catch_d9
    move-object p1, v2

    goto :goto_105

    :catchall_db
    move-exception p0

    goto :goto_121

    :catch_dd
    move-exception v2

    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    .line 366
    :goto_e1
    :try_start_e1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Error "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    sget-object p1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->UNKNOWN_ERROR:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    :try_end_fe
    .catchall {:try_start_e1 .. :try_end_fe} :catchall_102

    .line 369
    :goto_fe
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_120

    :catchall_102
    move-exception p0

    move-object p1, v2

    goto :goto_121

    .line 363
    :catch_105
    :goto_105
    :try_start_105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object v0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;
    :try_end_11d
    .catchall {:try_start_105 .. :try_end_11d} :catchall_db

    .line 369
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_120
    return-void

    :goto_121
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 370
    throw p0
.end method

.method public final parseHotKeysAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 558
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v7, v4

    move-object v5, v3

    move-object v6, v5

    .line 563
    :cond_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v1, v9, :cond_3a

    const/4 v9, 0x3

    if-eq v1, v9, :cond_1a

    goto :goto_57

    :cond_1a
    if-eqz v4, :cond_30

    .line 573
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_30

    .line 574
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_30

    .line 575
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_30
    if-eqz v0, :cond_57

    .line 577
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    move v7, v10

    goto :goto_57

    :cond_3a
    const-string/jumbo v9, "key"

    .line 566
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    const-string/jumbo v4, "keyCode"

    .line 567
    invoke-virtual {p0, p1, v4, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "package_name"

    .line 568
    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "class_name"

    .line 569
    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_57
    :goto_57
    if-nez v7, :cond_5d

    .line 583
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    :cond_5d
    if-eq v1, v10, :cond_61

    if-eqz v7, :cond_e

    :cond_61
    return-void
.end method

.method public final parseKeyCustomizationAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 385
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    .line 390
    :cond_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const-string/jumbo v9, "key"

    if-eq v1, v7, :cond_4e

    const/4 v7, 0x3

    if-eq v1, v7, :cond_1c

    goto/16 :goto_11c

    :cond_1c
    if-eqz v4, :cond_43

    .line 453
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 454
    iget v7, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_36

    .line 455
    iget v7, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p2, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    :cond_36
    iget v7, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    iget v9, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-virtual {v7, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_43
    if-eqz v0, :cond_11c

    .line 461
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11c

    move v5, v8

    goto/16 :goto_11c

    .line 393
    :cond_4e
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v9, 0x7d3

    if-eqz v7, :cond_d6

    .line 394
    new-instance v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    invoke-direct {v4}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>()V

    const-string/jumbo v6, "keyCode"

    .line 395
    invoke-virtual {p0, p1, v6, v3}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    const-string/jumbo v6, "launchAction"

    const/4 v7, -0x1

    .line 397
    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    const-string v6, "dispatching"

    .line 398
    invoke-virtual {p0, p1, v6, v3}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    if-ne v6, v7, :cond_83

    .line 401
    iget v6, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    const v10, 0x40066666    # 2.1f

    cmpg-float v6, v6, v10

    if-gez v6, :cond_83

    .line 403
    iput v3, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    :cond_83
    const-string/jumbo v6, "id"

    .line 406
    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/4 v6, -0x2

    const-string/jumbo v7, "userId"

    .line 407
    invoke-virtual {p0, p1, v7, v6}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    const-string/jumbo v6, "longPressTimeoutMs"

    .line 409
    invoke-virtual {p0, p1, v6, v3}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeoutMs:J

    const-string/jumbo v6, "multiPressTimeoutMs"

    .line 411
    invoke-virtual {p0, p1, v6, v3}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeoutMs:J

    .line 414
    iget v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v7, 0x384

    if-ne v6, v7, :cond_b3

    .line 416
    iput v9, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    goto :goto_bb

    :cond_b3
    const/16 v7, 0x44e

    if-ne v6, v7, :cond_bb

    const/16 v6, 0x3b7

    .line 418
    iput v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 421
    :cond_bb
    :goto_bb
    iget v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-ne v6, v9, :cond_d3

    const-string/jumbo v6, "ownerPackage"

    .line 422
    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 424
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d3

    .line 425
    iput-object v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 426
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v7, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->addOwnerPackageList(Ljava/lang/String;)V

    .line 429
    :cond_d3
    iput p3, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    goto :goto_11c

    :cond_d6
    const-string/jumbo v7, "intent"

    .line 430
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11c

    if-eqz v4, :cond_11c

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_11c

    .line 434
    iget v7, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-ne v7, v9, :cond_11c

    iget-object v7, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 435
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11c

    .line 437
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_104

    .line 438
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_105

    :cond_104
    move-object v7, v2

    .line 440
    :goto_105
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 441
    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    .line 443
    :cond_10f
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11c

    .line 444
    iput-object v7, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 445
    iget-object v6, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v6, v7}, Lcom/android/server/policy/KeyCustomizationInfoManager;->addOwnerPackageList(Ljava/lang/String;)V

    :cond_11c
    :goto_11c
    if-nez v5, :cond_122

    .line 467
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    :cond_122
    if-eq v1, v8, :cond_126

    if-eqz v5, :cond_c

    :cond_126
    return-void
.end method

.method public final parseKeyCustomizationInfoByPress(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 376
    invoke-virtual {v0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 378
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->parseKeyCustomizationAttributes(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/SparseArray;I)V

    return-void
.end method

.method public final parseMigrationAttributes(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3

    const-string v0, "b2bDeltaXCover"

    .line 617
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v0, "b2bDeltaTop"

    .line 619
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string/jumbo v0, "xcoverKey"

    .line 621
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string/jumbo v0, "topKey"

    .line 622
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string/jumbo v0, "sideKey"

    .line 623
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeSide:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string/jumbo v0, "sosMessage"

    .line 624
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeSOSMessage:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string/jumbo v0, "oneHandMode"

    .line 626
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeOneHandMode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v0, "duplicatedRoutinePlus"

    .line 628
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedRoutinePlus:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    const-string v0, "duplicatedUnknownID"

    .line 630
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getAttributeMigrationResultCode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedUnknownID:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    return-void
.end method

.method public final restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 7

    const/4 p0, 0x0

    const-string v0, "action"

    .line 473
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "KeyCustomizationInfoXmlUtils"

    if-nez v1, :cond_cf

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_cf

    .line 479
    :cond_1a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_1f
    const-string/jumbo v3, "intent:"

    .line 481
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    const-string v3, "end"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 482
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_49

    .line 483
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "restoreFromXml intent info is uri type. action="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    const/4 p0, 0x1

    .line 485
    invoke-static {v0, p0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    move-object v1, p0

    goto/16 :goto_ce

    .line 487
    :cond_51
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_6a

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreFromXml intent info is old type. action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_6a
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "data"

    .line 491
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 493
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_80
    const-string/jumbo v0, "type"

    .line 495
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "ident"

    .line 496
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "component"

    .line 499
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 501
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_a7
    const-string v0, "flags"

    .line 504
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    .line 503
    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "package"

    .line 505
    invoke-interface {p1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 507
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_ce

    .line 508
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_c6} :catch_c7

    goto :goto_ce

    :catch_c7
    move-exception p0

    const-string/jumbo p1, "restoreFromXml failed "

    .line 512
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ce
    :goto_ce
    return-object v1

    :cond_cf
    :goto_cf
    const-string/jumbo p1, "restoreFromXml intent info is empty or null"

    .line 475
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public saveSettingsLocked(I)V
    .registers 14

    const-string/jumbo v0, "migration"

    const-string/jumbo v1, "hot_key"

    const-string/jumbo v2, "keycustomize_info_version"

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveSettingsLocked, Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyCustomizationInfoXmlUtils"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 181
    :try_start_2a
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 182
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 183
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 185
    invoke-interface {v5, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "version"

    const v8, 0x40066666    # 2.1f

    .line 187
    invoke-static {v8}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-interface {v5, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    invoke-interface {v5, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    sget-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v6, v2

    const/4 v8, 0x0

    :goto_4f
    if-ge v8, v6, :cond_8f

    aget v9, v2, v8

    .line 192
    iget-object v10, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v10, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v10

    and-int/lit8 v11, v9, 0x3

    if-eqz v11, :cond_61

    const-string/jumbo v9, "press"

    goto :goto_89

    :cond_61
    and-int/lit8 v11, v9, 0x4

    if-eqz v11, :cond_69

    const-string/jumbo v9, "long"

    goto :goto_89

    :cond_69
    and-int/lit8 v11, v9, 0x8

    if-eqz v11, :cond_70

    const-string v9, "double"

    goto :goto_89

    :cond_70
    and-int/lit8 v11, v9, 0x10

    if-eqz v11, :cond_78

    const-string/jumbo v9, "triple"

    goto :goto_89

    :cond_78
    and-int/lit8 v11, v9, 0x20

    if-eqz v11, :cond_80

    const-string/jumbo v9, "quadruple"

    goto :goto_89

    :cond_80
    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_88

    const-string/jumbo v9, "quintuple"

    goto :goto_89

    :cond_88
    move-object v9, v7

    .line 207
    :goto_89
    invoke-virtual {p0, v5, v9, v10}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->writeKeyCustomizationAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 211
    :cond_8f
    invoke-interface {v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    .line 213
    invoke-virtual {v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getHotKeyMapLocked()Landroid/util/SparseArray;

    move-result-object v2

    .line 212
    invoke-virtual {p0, v5, v2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->writeHotKeysAttributes(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/SparseArray;)V

    .line 214
    invoke-interface {v5, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-interface {v5, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    invoke-virtual {p0, v5}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->writeMigrationAttributes(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 220
    invoke-interface {v5, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 224
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_ad
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_ad} :catch_ae
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_ad} :catch_ae
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_ad} :catch_ae

    goto :goto_c3

    :catch_ae
    move-exception v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed saveSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_c3
    invoke-virtual {p0, v3, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->writeOutXmlFileLocked(Ljava/io/StringWriter;I)V

    return-void
.end method

.method public updateXmlVersionIfNeeded()Z
    .registers 4

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateXmlVersion old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x40066666    # 2.1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyCustomizationInfoXmlUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo p0, "updateXmlVersion same return"

    .line 165
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 168
    :cond_34
    iput v1, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    const/4 p0, 0x1

    return p0
.end method

.method public final writeHotKeysAttributes(Lorg/xmlpull/v1/XmlSerializer;Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_c

    const-string p0, "KeyCustomizationInfoXmlUtils"

    const-string/jumbo v0, "writeHotKeysAttributes."

    .line 533
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-nez p2, :cond_f

    return-void

    :cond_f
    const/4 p0, 0x0

    .line 540
    :goto_10
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p0, v0, :cond_4c

    const/4 v0, 0x0

    const-string/jumbo v1, "key"

    .line 541
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 543
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 544
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "keyCode"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v3, :cond_46

    .line 546
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "package_name"

    invoke-interface {p1, v0, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "class_name"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    :cond_46
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_10

    :cond_4c
    return-void
.end method

.method public final writeKeyCustomizationAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_1b

    .line 260
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "writeKeyCustomizationAttributes. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyCustomizationInfoXmlUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 p0, 0x0

    .line 263
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    move v1, v0

    .line 264
    :goto_21
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_e6

    .line 265
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move v3, v0

    .line 266
    :goto_2e
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_e2

    const-string/jumbo v4, "key"

    .line 267
    invoke-interface {p1, p0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v5, :cond_44

    goto/16 :goto_de

    .line 272
    :cond_44
    iget v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "keyCode"

    invoke-interface {p1, p0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 273
    iget v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "launchAction"

    invoke-interface {p1, p0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    iget v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6a

    .line 276
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dispatching"

    invoke-interface {p1, p0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    :cond_6a
    iget v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "id"

    invoke-interface {p1, p0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    iget v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    const/4 v7, -0x2

    if-eq v6, v7, :cond_85

    .line 281
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "userId"

    invoke-interface {p1, p0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    :cond_85
    iget-wide v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeoutMs:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_97

    .line 286
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "longPressTimeoutMs"

    .line 285
    invoke-interface {p1, p0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    :cond_97
    iget-wide v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeoutMs:J

    cmp-long v8, v6, v8

    if-eqz v8, :cond_a7

    .line 291
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "multiPressTimeoutMs"

    .line 290
    invoke-interface {p1, p0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    :cond_a7
    iget v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v7, 0x7d3

    if-ne v6, v7, :cond_bd

    iget-object v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 294
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_bd

    .line 295
    iget-object v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    const-string/jumbo v7, "ownerPackage"

    invoke-interface {p1, p0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_bd
    const-string/jumbo v6, "intent"

    .line 298
    invoke-interface {p1, p0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    iget-object v5, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    const-string v7, "action"

    if-eqz v5, :cond_d2

    const/4 v8, 0x1

    .line 301
    invoke-virtual {v5, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-interface {p1, p0, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_d8

    :cond_d2
    const-string/jumbo v5, "null"

    .line 303
    invoke-interface {p1, p0, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    :goto_d8
    invoke-interface {p1, p0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    invoke-interface {p1, p0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_de
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2e

    :cond_e2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    .line 309
    :cond_e6
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeMigrationAttributes(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "KeyCustomizationInfoXmlUtils"

    const-string/jumbo v1, "writeMigrationAttributes."

    .line 593
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeB2BDeltaXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 597
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "b2bDeltaXCover"

    .line 596
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 598
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeB2BDeltaTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 599
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "b2bDeltaTop"

    .line 598
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeXCover:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 601
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "xcoverKey"

    .line 600
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeTop:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 603
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "topKey"

    .line 602
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 604
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeSide:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 605
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sideKey"

    .line 604
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 606
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeSOSMessage:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 607
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sosMessage"

    .line 606
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeOneHandMode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 609
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "oneHandMode"

    .line 608
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedRoutinePlus:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 611
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "duplicatedRoutinePlus"

    .line 610
    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 612
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mMigrationCodeDuplicatedUnknownID:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;

    .line 613
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$MigrationCode;->getCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "duplicatedUnknownID"

    .line 612
    invoke-interface {p1, v1, v0, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeOutXmlFileLocked(Ljava/io/StringWriter;I)V
    .registers 7

    const-string p0, "Unable to close."

    const-string v0, "KeyCustomizationInfoXmlUtils"

    .line 234
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->getKeyCustomizationDir(I)Ljava/io/File;

    move-result-object p2

    const-string/jumbo v3, "key_customize_info.xml"

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 p2, 0x0

    .line 238
    :try_start_16
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p2

    .line 239
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    const/16 p1, 0xa

    .line 240
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 241
    invoke-virtual {v1, p2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2f} :catch_49
    .catchall {:try_start_16 .. :try_end_2f} :catchall_47

    .line 248
    :try_start_2f
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_76

    :catch_33
    move-exception p1

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_39
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :catchall_47
    move-exception p1

    goto :goto_77

    :catch_49
    move-exception p1

    .line 243
    :try_start_4a
    invoke-virtual {v1, p2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for persisting. "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_4a .. :try_end_69} :catchall_47

    if-eqz p2, :cond_76

    .line 248
    :try_start_6b
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_76

    :catch_6f
    move-exception p1

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_39

    :cond_76
    :goto_76
    return-void

    :goto_77
    if-eqz p2, :cond_90

    .line 248
    :try_start_79
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_90

    :catch_7d
    move-exception p2

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_90
    :goto_90
    throw p1
.end method
