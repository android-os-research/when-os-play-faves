.class public Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;
.super Ljava/lang/Object;
.source "SdpServiceKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdpPolicyDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;
    }
.end annotation


# static fields
.field public static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field public static final ATTR_PKG:Ljava/lang/String; = "pkg_name"

.field public static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field public static final DEBUG:Z = true

.field public static final ELEMENT_OWNER:Ljava/lang/String; = "owner"

.field public static final ELEMENT_PRIVILEGED_APP:Ljava/lang/String; = "privileged_app"

.field public static final ELEMENT_ROOT:Ljava/lang/String; = "engine_policy"

.field public static final MAX_SALT_LENGTH:I = 0x20


# direct methods
.method public static bridge synthetic -$$Nest$mgetPolicyLocked(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mputPolicyLocked(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->putPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremovePolicyLocked(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->removePolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final byteToHex([B)Ljava/lang/String;
    .registers 7

    .line 859
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 860
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_21

    aget-byte v3, p1, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 861
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "%02X"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 862
    :cond_21
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final generateHash([BLjava/io/File;)[B
    .registers 9

    const-string p1, "SdpServiceKeeper"

    const-string v0, "SHA-256"

    const/4 v1, 0x0

    .line 795
    :try_start_5
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 796
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_e} :catch_59
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_46
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_3b
    .catchall {:try_start_5 .. :try_end_e} :catchall_39

    const/16 p2, 0x400

    :try_start_10
    new-array p2, p2, [B

    .line 800
    :goto_12
    invoke-virtual {v3, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1e

    const/4 v5, 0x0

    .line 801
    invoke-virtual {v2, p2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_12

    .line 804
    :cond_1e
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    .line 808
    array-length v2, p2

    if-lez v2, :cond_2c

    .line 809
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_2c} :catch_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_2c} :catch_37
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_35
    .catchall {:try_start_10 .. :try_end_2c} :catchall_56

    .line 820
    :cond_2c
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p0

    .line 823
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_34
    return-object p2

    :catch_35
    move-exception p0

    goto :goto_3d

    :catch_37
    move-exception p0

    goto :goto_48

    :catchall_39
    move-exception p0

    goto :goto_74

    :catch_3b
    move-exception p0

    move-object v3, v1

    .line 816
    :goto_3d
    :try_start_3d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_56

    if-eqz v3, :cond_73

    .line 820
    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_51

    goto :goto_73

    :catch_46
    move-exception p0

    move-object v3, v1

    .line 814
    :goto_48
    :try_start_48
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_56

    if-eqz v3, :cond_73

    .line 820
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_73

    :catch_51
    move-exception p0

    .line 823
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_73

    :catchall_56
    move-exception p0

    move-object v1, v3

    goto :goto_74

    :catch_59
    move-object v3, v1

    .line 812
    :catch_5a
    :try_start_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to hash : missing algorithm: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_5a .. :try_end_6e} :catchall_56

    if-eqz v3, :cond_73

    .line 820
    :try_start_70
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_51

    :cond_73
    :goto_73
    return-object v1

    :goto_74
    if-eqz v1, :cond_7e

    :try_start_76
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception p1

    .line 823
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 825
    :cond_7e
    :goto_7e
    throw p0
.end method

.method public final generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B
    .registers 2

    const/16 p0, 0x20

    new-array p0, p0, [B

    const/4 p1, 0x0

    .line 849
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    return-object p0
.end method

.method public final getPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;
    .registers 9

    .line 559
    new-instance v0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;-><init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->loadHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 564
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;

    move-result-object v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    move-exception v3

    .line 566
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v2

    :goto_14
    const-string v4, "SdpServiceKeeper"

    if-eqz v3, :cond_87

    if-nez v1, :cond_1b

    goto :goto_87

    .line 577
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->generateHash([BLjava/io/File;)[B

    move-result-object p1

    if-eqz p1, :cond_57

    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadPolicy :: generated hash : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadPolicy :: stored hash : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_57
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_63

    const-string p0, "Policy file tempered!"

    .line 585
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 589
    :cond_63
    :try_start_63
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_68} :catch_7d

    .line 590
    :try_start_68
    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_73

    .line 591
    :try_start_6b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_7d

    .line 597
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->-$$Nest$mgetSdpPolicy(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p0

    return-object p0

    :catchall_73
    move-exception p0

    .line 589
    :try_start_74
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception p1

    :try_start_79
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7c
    throw p0
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7d} :catch_7d

    :catch_7d
    move-exception p0

    .line 592
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, "engine_poilcy xml io failed"

    .line 593
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_87
    :goto_87
    const-string p0, "No policy file or its hash"

    .line 570
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/sdp_engine_policy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final loadHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B
    .registers 6

    .line 839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 840
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtector;->getInstance()Lcom/android/server/knox/dar/KeyProtector;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_sdp_policy_hash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    .line 840
    invoke-virtual {p0, v2, p1}, Lcom/android/server/knox/dar/KeyProtector;->release(Ljava/lang/String;I)[B

    move-result-object p0

    .line 842
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .registers 4

    const/4 p0, 0x0

    .line 701
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 705
    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 706
    new-instance p2, Lorg/xml/sax/InputSource;

    invoke-direct {p2, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_18} :catch_24
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_1f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    .line 714
    invoke-virtual {p0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :goto_1d
    const/4 p0, 0x1

    return p0

    :catch_1f
    move-exception p1

    .line 711
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p0

    :catch_24
    move-exception p1

    .line 708
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    return p0
.end method

.method public final putPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;)I
    .registers 16

    const-string/jumbo v0, "pkg_name"

    const-string v1, "alias"

    const-string v2, " putPolicyLocked failed"

    const-string v3, "SdpServiceKeeper"

    .line 603
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;

    move-result-object v4
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_d3

    const/16 v5, -0x63

    .line 611
    :try_start_f
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 612
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 614
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    const-string v7, "engine_policy"

    .line 615
    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 616
    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string/jumbo v8, "owner"

    .line 619
    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 620
    invoke-interface {v6, v1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 621
    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v10

    .line 623
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 624
    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 626
    invoke-virtual {p2}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->getOwner()Lcom/samsung/android/knox/sdp/core/SdpDomain;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 627
    invoke-interface {v8, v10}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 629
    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 632
    invoke-virtual {p2}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;->getPrivilegedApps()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_91

    .line 633
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_91

    .line 634
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    const-string/jumbo v9, "privileged_app"

    .line 635
    invoke-interface {v6, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 636
    invoke-interface {v6, v1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v10

    .line 637
    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    .line 639
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 640
    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 642
    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v8}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 643
    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 645
    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_5e

    .line 650
    :cond_91
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p2

    .line 651
    invoke-virtual {p2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p2

    const-string/jumbo v0, "indent"

    const-string/jumbo v1, "yes"

    .line 652
    invoke-virtual {p2, v0, v1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 654
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 656
    invoke-virtual {p2, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_af
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_af} :catch_cb
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f .. :try_end_af} :catch_c3

    .line 669
    invoke-virtual {p0, p1, v4}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->saveHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_bd

    const-string/jumbo p0, "putPolicyLocked :: SUCCESS"

    .line 670
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_bd
    const-string p0, "can\'t store hash to key protector"

    .line 674
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_c3
    move-exception p0

    .line 663
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 664
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_cb
    move-exception p0

    .line 659
    invoke-virtual {p0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 660
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_d3
    move-exception p0

    .line 605
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 606
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xc

    return p0
.end method

.method public final removePolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 7

    const-string v0, "SdpServiceKeeper"

    .line 681
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_42

    .line 688
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_11

    const-string p0, "Couldn\'t remove policy file!"

    .line 689
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 692
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtector;->getInstance()Lcom/android/server/knox/dar/KeyProtector;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_sdp_policy_hash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    .line 692
    invoke-virtual {p0, v3, p1}, Lcom/android/server/knox/dar/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_3e

    const-string/jumbo p0, "removePolicyLocked failure"

    .line 695
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_42
    move-exception p0

    .line 683
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, " removePolicyLocked  failed"

    .line 684
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final saveHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/io/File;)Z
    .registers 7

    .line 830
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;->generateHash([BLjava/io/File;)[B

    move-result-object p0

    .line 831
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 832
    invoke-static {}, Lcom/android/server/knox/dar/KeyProtector;->getInstance()Lcom/android/server/knox/dar/KeyProtector;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_sdp_policy_hash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result p1

    .line 832
    invoke-virtual {p2, p0, v2, p1}, Lcom/android/server/knox/dar/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result p0

    .line 834
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method
