.class final Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultMessageAppConfig"
.end annotation


# instance fields
.field final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1592
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    .line 1593
    return-void
.end method

.method private static blacklist closeFileInputStream(Ljava/io/FileInputStream;)V
    .registers 2
    .param p0, "stream"    # Ljava/io/FileInputStream;

    .line 1775
    if-eqz p0, :cond_a

    .line 1777
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1780
    goto :goto_a

    .line 1778
    :catch_6
    move-exception v0

    .line 1779
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1782
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_a
    return-void
.end method

.method private blacklist findLoadedSimSlot()I
    .registers 7

    .line 1736
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1737
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 1738
    .local v1, "phoneCount":I
    :goto_13
    const/4 v2, -0x1

    .line 1740
    .local v2, "simSlot":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_24

    .line 1741
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v4

    .line 1742
    .local v4, "state":I
    const/16 v5, 0xa

    if-ne v4, v5, :cond_21

    .line 1743
    move v2, v3

    .line 1744
    goto :goto_24

    .line 1740
    .end local v4    # "state":I
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1748
    .end local v3    # "i":I
    :cond_24
    :goto_24
    return v2
.end method

.method private blacklist getActiveOperatorId()Ljava/lang/String;
    .registers 8

    .line 1682
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isTssDevice()Z

    move-result v0

    .line 1683
    .local v0, "isSupportTrueSingleSKU":Z
    const-string/jumbo v1, "mdc.singlesku.activated"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1684
    .local v1, "isTSSActivated":Z
    const-string v2, "NONE"

    .line 1686
    .local v2, "activeOperatorId":Ljava/lang/String;
    const-string/jumbo v3, "ro.csc.sales_code"

    const-string v4, "NONE"

    if-eqz v0, :cond_66

    .line 1687
    if-eqz v1, :cond_5b

    .line 1688
    const-string/jumbo v3, "ro.boot.activatedid"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1689
    const-string v3, "EUX"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "EUY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1690
    :cond_2e
    const-string/jumbo v3, "ro.csc.countryiso_code"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1691
    .local v3, "countryiso":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "countryiso : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SmsApplication"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1693
    const-string v2, "NONE"

    goto :goto_5a

    .line 1695
    :cond_56
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getActiveOperatorIdByCountryiso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1697
    .end local v3    # "countryiso":Ljava/lang/String;
    :goto_5a
    goto :goto_6a

    .line 1698
    :cond_5b
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isWifiSkipCarrier()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 1699
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6a

    .line 1702
    :cond_66
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1704
    :cond_6a
    :goto_6a
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetmLogStb()Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " isSupportTrueSingleSKU : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1705
    const-string v4, ", isTSSActivated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1706
    const-string v4, ", isWifiSkipCarrier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isWifiSkipCarrier()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 1707
    const-string v4, ", activeOperatorId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1708
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->setDMACdataTssInfo(ZZLjava/lang/String;)V

    .line 1709
    return-object v2
.end method

.method private blacklist getActiveOperatorIdByCountryiso(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 1612
    const-string v0, "SmsApplication"

    const-string v1, "NONE"

    .line 1613
    .local v1, "activeOperatorId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1616
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/etc/countryISO_openBuyer_config.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_7c

    move-object v2, v3

    .line 1620
    nop

    .line 1622
    const/4 v3, 0x0

    .line 1625
    .local v3, "bFind":Z
    nop

    .line 1626
    :try_start_15
    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1627
    .local v4, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v4, :cond_21

    .line 1628
    const-string v5, "XmlPullParser is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 1630
    :cond_21
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 1632
    .local v5, "eventType":I
    :goto_25
    const/4 v6, 0x1

    if-eq v5, v6, :cond_56

    .line 1633
    packed-switch v5, :pswitch_data_a4

    :pswitch_2b
    goto :goto_47

    .line 1644
    :pswitch_2c
    if-eqz v3, :cond_47

    .line 1645
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 1646
    const/4 v3, 0x0

    .line 1647
    goto :goto_47

    .line 1639
    :pswitch_39
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1640
    const/4 v3, 0x1

    goto :goto_47

    .line 1637
    :pswitch_45
    goto :goto_47

    .line 1635
    :pswitch_46
    nop

    .line 1653
    :cond_47
    :goto_47
    const-string v6, "NONE"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 1654
    goto :goto_56

    .line 1655
    :cond_50
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v5, v6

    goto :goto_25

    .line 1658
    .end local v5    # "eventType":I
    :cond_56
    :goto_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "xml parsing result- activeOperatorId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_6d} :catch_74
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_6d} :catch_74
    .catchall {:try_start_15 .. :try_end_6d} :catchall_72

    .line 1663
    .end local v4    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :goto_6d
    nop

    :goto_6e
    invoke-static {v2}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 1664
    return-object v1

    .line 1663
    :catchall_72
    move-exception v0

    goto :goto_6d

    .line 1660
    :catch_74
    move-exception v4

    .line 1661
    .local v4, "exp":Ljava/lang/Exception;
    :try_start_75
    const-string v5, "Error while parsing"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_72

    .line 1663
    nop

    .end local v4    # "exp":Ljava/lang/Exception;
    goto :goto_6e

    .line 1617
    .end local v3    # "bFind":Z
    :catch_7c
    move-exception v3

    .line 1618
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    return-object v1

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_46
        :pswitch_45
        :pswitch_39
        :pswitch_2b
        :pswitch_2c
    .end packed-switch
.end method

.method private blacklist getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1823
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1828
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1829
    const-string v0, "com.android.mms"

    .line 1831
    :cond_14
    return-object v0
.end method

.method private static blacklist getParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .registers 5
    .param p0, "stream"    # Ljava/io/FileInputStream;

    .line 1752
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 1753
    const-string v1, "SmsApplication"

    const-string/jumbo v2, "no file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    return-object v0

    .line 1757
    :cond_c
    const/4 v1, 0x0

    .line 1758
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 1761
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_start_e
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    move-object v2, v3

    .line 1762
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1763
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    move-object v1, v3

    .line 1764
    invoke-interface {v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_1f} :catch_20

    .line 1769
    goto :goto_28

    .line 1765
    :catch_20
    move-exception v0

    .line 1766
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v1, 0x0

    .line 1767
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1768
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 1771
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_28
    return-object v1
.end method

.method private blacklist getSalesCode()Ljava/lang/String;
    .registers 5

    .line 1835
    const-string v0, "NONE"

    const-string v1, ""

    .line 1837
    .local v1, "sales_code":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1838
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1839
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1b

    move-object v1, v0

    .line 1843
    :cond_1a
    goto :goto_24

    .line 1841
    :catch_1b
    move-exception v0

    .line 1842
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SmsApplication"

    const-string/jumbo v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-object v1
.end method

.method private blacklist hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 1810
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1811
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 1813
    .local v1, "hasPkg":Z
    const/16 v2, 0x80

    :try_start_7
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1817
    goto :goto_25

    .line 1814
    :catch_b
    move-exception v2

    .line 1815
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 1816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SmsApplication"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_25
    return v1
.end method

.method private blacklist isAMInstalled()Z
    .registers 4

    .line 1785
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1788
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_7
    const-string v2, "com.google.android.apps.messaging"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_f

    .line 1789
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x1

    return v2

    .line 1790
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_f
    move-exception v2

    .line 1791
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private blacklist isOperatorFixed()Z
    .registers 5

    .line 1599
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isTssDevice()Z

    move-result v0

    .line 1600
    .local v0, "isSupportTrueSingleSKU":Z
    const-string/jumbo v1, "mdc.singlesku.activated"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1602
    .local v1, "isTSSActivated":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOperatorFixed()- isSupportTrueSingleSKU : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isTSSActivated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsApplication"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    if-eqz v0, :cond_32

    .line 1605
    return v1

    .line 1608
    :cond_32
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1797
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_9} :catch_13

    .line 1798
    .local v1, "enable":I
    const/4 v2, 0x2

    if-eq v2, v1, :cond_12

    const/4 v2, 0x3

    if-ne v2, v1, :cond_10

    goto :goto_12

    .line 1802
    :cond_10
    const/4 v0, 0x1

    return v0

    .line 1800
    :cond_12
    :goto_12
    return v0

    .line 1804
    .end local v1    # "enable":I
    :catch_13
    move-exception v1

    .line 1805
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v0
.end method

.method private blacklist isTssDevice()Z
    .registers 3

    .line 1595
    const-string/jumbo v0, "mdc.singlesku"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist isWifiSkipCarrier()Z
    .registers 10

    .line 1669
    const-string/jumbo v0, "ro.boot.carrierid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1670
    .local v0, "carrierId":Ljava/lang/String;
    const-string v1, "XSG"

    const-string v2, "MID"

    const-string v3, "ILO"

    const-string v4, "XFA"

    const-string v5, "AFR"

    const-string v6, "M10"

    const-string v7, "M06"

    const-string v8, "M05"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 1671
    .local v1, "wifiSkipCarrier":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1673
    .local v2, "wifiSkipCarrierList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1674
    const-string v3, "SmsApplication"

    const-string/jumbo v4, "isWifiSkipCarrier return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/4 v3, 0x1

    return v3

    .line 1677
    :cond_36
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist setDefaultMsgApp_File(Ljava/lang/String;)Z
    .registers 28
    .param p1, "activeOperatorId"    # Ljava/lang/String;

    .line 1941
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 1942
    .local v3, "bSelectAM":Z
    const/4 v4, 0x0

    .line 1943
    .local v4, "stream":Ljava/io/FileInputStream;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->findLoadedSimSlot()I

    move-result v5

    .line 1944
    .local v5, "phoneId":I
    const/4 v0, 0x0

    if-ltz v5, :cond_f

    const/4 v7, 0x1

    goto :goto_10

    :cond_f
    move v7, v0

    .line 1945
    .local v7, "isSimLoaded":Z
    :goto_10
    const-string v8, ""

    .line 1946
    .local v8, "mccmnc":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 1947
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FIRST_API_LEVEL_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ro.product.first_api_level"

    invoke-static {v11, v0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1949
    .local v10, "firstApiLevel":Ljava/lang/String;
    const-string/jumbo v11, "ro.product.model"

    const-string v12, "Unknown"

    invoke-static {v11, v12}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1950
    .local v11, "productModel":Ljava/lang/String;
    const-string v12, "SM-A136B"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "SmsApplication"

    if-eqz v12, :cond_52

    .line 1951
    const-string v10, "FIRST_API_LEVEL_31"

    .line 1952
    const-string/jumbo v12, "in case of SM-A136B, modify the first api level from 30 to 31"

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_52
    if-eqz v7, :cond_5e

    .line 1956
    if-eqz v9, :cond_5b

    invoke-virtual {v9, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_5d

    :cond_5b
    const-string v12, ""

    :goto_5d
    move-object v8, v12

    .line 1958
    :cond_5e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "activeOperatorId: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " phoneId: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " isSimLoaded: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " mccmnc: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " firstApiLevel: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetmLogStb()Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v14, ", phoneId : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 1960
    const-string v14, ", isSimLoaded : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v12

    .line 1961
    const-string v14, ", mccmnc : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1964
    :try_start_bd
    new-instance v12, Ljava/io/FileInputStream;

    new-instance v14, Ljava/io/File;

    const-string v15, "/system/etc/default_msg_config.xml"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c9
    .catch Ljava/io/FileNotFoundException; {:try_start_bd .. :try_end_c9} :catch_37a

    move-object v4, v12

    .line 1968
    nop

    .line 1970
    const/4 v12, 0x0

    .line 1971
    .local v12, "bFindInOpen":Z
    const/4 v14, 0x0

    .line 1972
    .local v14, "bSMInCarrier":Z
    const/4 v15, 0x0

    .line 1973
    .local v15, "bChangeOS":Z
    const-string v16, ""

    .line 1974
    .local v16, "smNetCodeOpen":Ljava/lang/String;
    const-string v17, ""

    .line 1975
    .local v17, "smCarrierCsc":Ljava/lang/String;
    const-string v18, ""

    .line 1978
    .local v18, "smChangeOs":Ljava/lang/String;
    nop

    .line 1979
    :try_start_d5
    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v19
    :try_end_d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d5 .. :try_end_d9} :catch_362
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d9} :catch_362
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_358

    .line 1980
    .local v19, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v0, "SM"

    if-nez v19, :cond_104

    .line 1981
    :try_start_dd
    const-string v6, "XmlPullParser is null"

    invoke-static {v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_dd .. :try_end_e2} :catch_f9
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e2} :catch_f9
    .catchall {:try_start_dd .. :try_end_e2} :catchall_ee

    move/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_182

    .line 2030
    .end local v19    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_ee
    move-exception v0

    move/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    goto/16 :goto_376

    .line 2026
    :catch_f9
    move-exception v0

    move/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    goto/16 :goto_36b

    .line 1983
    .restart local v19    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_104
    :try_start_104
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6
    :try_end_108
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_104 .. :try_end_108} :catch_362
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_108} :catch_362
    .catchall {:try_start_104 .. :try_end_108} :catchall_358

    .line 1985
    .local v6, "eventType":I
    :goto_108
    move/from16 v22, v5

    const/4 v5, 0x1

    .end local v5    # "phoneId":I
    .local v22, "phoneId":I
    if-eq v6, v5, :cond_17a

    .line 1986
    packed-switch v6, :pswitch_data_3aa

    :pswitch_110
    goto :goto_160

    .line 2004
    :pswitch_111
    if-eqz v12, :cond_11e

    .line 2005
    :try_start_113
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2006
    .end local v16    # "smNetCodeOpen":Ljava/lang/String;
    .local v5, "smNetCodeOpen":Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v16, v5

    .line 2008
    .end local v5    # "smNetCodeOpen":Ljava/lang/String;
    .restart local v16    # "smNetCodeOpen":Ljava/lang/String;
    :cond_11e
    if-eqz v14, :cond_12b

    .line 2009
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2010
    .end local v17    # "smCarrierCsc":Ljava/lang/String;
    .local v5, "smCarrierCsc":Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v17, v5

    .line 2012
    .end local v5    # "smCarrierCsc":Ljava/lang/String;
    .restart local v17    # "smCarrierCsc":Ljava/lang/String;
    :cond_12b
    if-eqz v15, :cond_160

    .line 2013
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2014
    .end local v18    # "smChangeOs":Ljava/lang/String;
    .local v5, "smChangeOs":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v18, v5

    goto :goto_160

    .line 1992
    .end local v5    # "smChangeOs":Ljava/lang/String;
    .restart local v18    # "smChangeOs":Ljava/lang/String;
    :pswitch_139
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_145

    .line 1993
    const/4 v5, 0x1

    move v12, v5

    .line 1995
    :cond_145
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_151

    .line 1996
    const/4 v5, 0x1

    move v14, v5

    .line 1998
    :cond_151
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_160

    .line 1999
    const/4 v5, 0x1

    move v15, v5

    .end local v15    # "bChangeOS":Z
    .local v5, "bChangeOS":Z
    goto :goto_160

    .line 1990
    .end local v5    # "bChangeOS":Z
    .restart local v15    # "bChangeOS":Z
    :pswitch_15e
    goto :goto_160

    .line 1988
    :pswitch_15f
    nop

    .line 2021
    :cond_160
    :goto_160
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_164
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_113 .. :try_end_164} :catch_171
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_164} :catch_171
    .catchall {:try_start_113 .. :try_end_164} :catchall_168

    move v6, v5

    move/from16 v5, v22

    goto :goto_108

    .line 2030
    .end local v6    # "eventType":I
    .end local v19    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_168
    move-exception v0

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    goto/16 :goto_376

    .line 2026
    :catch_171
    move-exception v0

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    goto/16 :goto_36b

    .line 1985
    .restart local v6    # "eventType":I
    .restart local v19    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_17a
    move/from16 v23, v7

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    .line 2024
    .end local v16    # "smNetCodeOpen":Ljava/lang/String;
    .end local v17    # "smCarrierCsc":Ljava/lang/String;
    .end local v18    # "smChangeOs":Ljava/lang/String;
    .local v5, "smNetCodeOpen":Ljava/lang/String;
    .local v6, "smCarrierCsc":Ljava/lang/String;
    .local v7, "smChangeOs":Ljava/lang/String;
    .local v23, "isSimLoaded":Z
    :goto_182
    move-object/from16 v24, v9

    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    .local v24, "tm":Landroid/telephony/TelephonyManager;
    :try_start_184
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_189
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_184 .. :try_end_189} :catch_348
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_189} :catch_348
    .catchall {:try_start_184 .. :try_end_189} :catchall_338

    move-object/from16 v25, v11

    .end local v11    # "productModel":Ljava/lang/String;
    .local v25, "productModel":Ljava/lang/String;
    :try_start_18b
    const-string/jumbo v11, "xml parsing result- smNetCodeOpen: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " smCarrierCsc: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " smChangeOs: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18b .. :try_end_1b1} :catch_32a
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_1b1} :catch_32a
    .catchall {:try_start_18b .. :try_end_1b1} :catchall_31c

    .line 2030
    .end local v19    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 2031
    nop

    .line 2035
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v11, "OS change is not shown"

    move/from16 v16, v12

    .end local v12    # "bFindInOpen":Z
    .local v16, "bFindInOpen":Z
    const-string v12, " to "

    move/from16 v17, v14

    .end local v14    # "bSMInCarrier":Z
    .local v17, "bSMInCarrier":Z
    const-string v14, "OS change: first api:"

    if-eqz v9, :cond_221

    .line 2037
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v8}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->setDMACdataConfigInfo(ZLjava/lang/String;)V

    .line 2038
    invoke-direct {v1, v7, v2, v9}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->updateChangeByOs(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2040
    .local v0, "changedValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1d7

    .line 2041
    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fe

    .line 2044
    :cond_1d7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " smCarrierCsc is change from "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    move-object v6, v0

    .line 2047
    :goto_1fe
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_20c

    .line 2048
    const-string v9, "SM tag is empty  - AM select!!"

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    const/4 v3, 0x1

    goto/16 :goto_31b

    .line 2051
    :cond_20c
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_219

    .line 2052
    const-string v9, "Carrier phone - SM select!!"

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31b

    .line 2054
    :cond_219
    const-string v9, "Carrier phone - AM select!!"

    invoke-static {v13, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    const/4 v3, 0x1

    goto/16 :goto_31b

    .line 2060
    .end local v0    # "changedValue":Ljava/lang/String;
    :cond_221
    const/4 v9, 0x0

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v8}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->setDMACdataConfigInfo(ZLjava/lang/String;)V

    .line 2061
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    .line 2062
    .local v18, "bMccMnc":Z
    move-object/from16 v19, v6

    .end local v6    # "smCarrierCsc":Ljava/lang/String;
    .local v19, "smCarrierCsc":Ljava/lang/String;
    invoke-direct {v1, v7, v2, v9}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->updateChangeByOs(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 2064
    .local v6, "changedValue":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_23c

    .line 2065
    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_263

    .line 2068
    :cond_23c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " smNetcodeOpen is change from "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    move-object v5, v6

    .line 2074
    :goto_263
    const/4 v11, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_3b8

    :cond_26b
    goto :goto_282

    :sswitch_26c
    const-string v12, "111111"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26b

    move/from16 v20, v9

    goto :goto_284

    :sswitch_277
    const-string v9, "000000"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26b

    const/16 v20, 0x0

    goto :goto_284

    :goto_282
    move/from16 v20, v11

    :goto_284
    packed-switch v20, :pswitch_data_3c2

    .line 2091
    if-eqz v18, :cond_303

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unlocked phone, Some selects SM. mccmnc: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f9

    .line 2094
    const-string v0, "Unlocked phone - contains mccmnc - SM select!!"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30e

    .line 2084
    :pswitch_2ab
    if-eqz v18, :cond_2ca

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unlocked phone, All selects SM. mccmnc: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " - SM select!!"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30e

    .line 2087
    :cond_2ca
    const-string v0, "Unlocked phone, All selects SM. no sim! - SM select!!"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    goto :goto_30e

    .line 2076
    :pswitch_2d0
    if-eqz v18, :cond_2ef

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unlocked phone, All selects AM. mccmnc: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " - AM select!!"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f4

    .line 2079
    :cond_2ef
    const-string v0, "Unlocked phone, All selects AM. no sim! - AM select!!"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :goto_2f4
    const/4 v3, 0x1

    .line 2082
    move-object v0, v6

    move-object/from16 v6, v19

    goto :goto_31b

    .line 2096
    :cond_2f9
    const-string v0, "Unlocked phone - no matching mccmnc - AM select!!"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    const/4 v3, 0x1

    move-object v0, v6

    move-object/from16 v6, v19

    goto :goto_31b

    .line 2100
    :cond_303
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_312

    .line 2101
    const-string v0, "Unlocked phone, Some selects SM. no Sim! - SM select!!"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    .end local v18    # "bMccMnc":Z
    :goto_30e
    move-object v0, v6

    move-object/from16 v6, v19

    goto :goto_31b

    .line 2103
    .restart local v18    # "bMccMnc":Z
    :cond_312
    const/4 v3, 0x1

    .line 2104
    const-string v0, "Unlocked phone, Some selects SM. no Sim! - AM select!!"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    move-object/from16 v6, v19

    .line 2110
    .end local v18    # "bMccMnc":Z
    .end local v19    # "smCarrierCsc":Ljava/lang/String;
    .restart local v0    # "changedValue":Ljava/lang/String;
    .local v6, "smCarrierCsc":Ljava/lang/String;
    :goto_31b
    return v3

    .line 2030
    .end local v0    # "changedValue":Ljava/lang/String;
    .end local v16    # "bFindInOpen":Z
    .end local v17    # "bSMInCarrier":Z
    .restart local v12    # "bFindInOpen":Z
    .restart local v14    # "bSMInCarrier":Z
    :catchall_31c
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v16, v12

    move/from16 v17, v14

    move-object/from16 v18, v7

    move-object/from16 v17, v19

    move-object/from16 v16, v5

    .end local v6    # "smCarrierCsc":Ljava/lang/String;
    .end local v12    # "bFindInOpen":Z
    .end local v14    # "bSMInCarrier":Z
    .restart local v16    # "bFindInOpen":Z
    .restart local v17    # "bSMInCarrier":Z
    .restart local v19    # "smCarrierCsc":Ljava/lang/String;
    goto :goto_376

    .line 2026
    .end local v16    # "bFindInOpen":Z
    .end local v17    # "bSMInCarrier":Z
    .end local v19    # "smCarrierCsc":Ljava/lang/String;
    .restart local v6    # "smCarrierCsc":Ljava/lang/String;
    .restart local v12    # "bFindInOpen":Z
    .restart local v14    # "bSMInCarrier":Z
    :catch_32a
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v16, v12

    move/from16 v17, v14

    move-object/from16 v18, v7

    move-object/from16 v17, v19

    move-object/from16 v16, v5

    .end local v6    # "smCarrierCsc":Ljava/lang/String;
    .end local v12    # "bFindInOpen":Z
    .end local v14    # "bSMInCarrier":Z
    .restart local v16    # "bFindInOpen":Z
    .restart local v17    # "bSMInCarrier":Z
    .restart local v19    # "smCarrierCsc":Ljava/lang/String;
    goto :goto_36b

    .line 2030
    .end local v16    # "bFindInOpen":Z
    .end local v17    # "bSMInCarrier":Z
    .end local v19    # "smCarrierCsc":Ljava/lang/String;
    .end local v25    # "productModel":Ljava/lang/String;
    .restart local v6    # "smCarrierCsc":Ljava/lang/String;
    .restart local v11    # "productModel":Ljava/lang/String;
    .restart local v12    # "bFindInOpen":Z
    .restart local v14    # "bSMInCarrier":Z
    :catchall_338
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v25, v11

    move/from16 v16, v12

    move/from16 v17, v14

    move-object/from16 v18, v7

    move-object/from16 v17, v19

    move-object/from16 v16, v5

    .end local v6    # "smCarrierCsc":Ljava/lang/String;
    .end local v11    # "productModel":Ljava/lang/String;
    .end local v12    # "bFindInOpen":Z
    .end local v14    # "bSMInCarrier":Z
    .restart local v16    # "bFindInOpen":Z
    .restart local v17    # "bSMInCarrier":Z
    .restart local v19    # "smCarrierCsc":Ljava/lang/String;
    .restart local v25    # "productModel":Ljava/lang/String;
    goto :goto_376

    .line 2026
    .end local v16    # "bFindInOpen":Z
    .end local v17    # "bSMInCarrier":Z
    .end local v19    # "smCarrierCsc":Ljava/lang/String;
    .end local v25    # "productModel":Ljava/lang/String;
    .restart local v6    # "smCarrierCsc":Ljava/lang/String;
    .restart local v11    # "productModel":Ljava/lang/String;
    .restart local v12    # "bFindInOpen":Z
    .restart local v14    # "bSMInCarrier":Z
    :catch_348
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v25, v11

    move/from16 v16, v12

    move/from16 v17, v14

    move-object/from16 v18, v7

    move-object/from16 v17, v19

    move-object/from16 v16, v5

    .end local v6    # "smCarrierCsc":Ljava/lang/String;
    .end local v11    # "productModel":Ljava/lang/String;
    .end local v12    # "bFindInOpen":Z
    .end local v14    # "bSMInCarrier":Z
    .restart local v16    # "bFindInOpen":Z
    .restart local v17    # "bSMInCarrier":Z
    .restart local v19    # "smCarrierCsc":Ljava/lang/String;
    .restart local v25    # "productModel":Ljava/lang/String;
    goto :goto_36b

    .line 2030
    .end local v19    # "smCarrierCsc":Ljava/lang/String;
    .end local v22    # "phoneId":I
    .end local v23    # "isSimLoaded":Z
    .end local v24    # "tm":Landroid/telephony/TelephonyManager;
    .end local v25    # "productModel":Ljava/lang/String;
    .local v5, "phoneId":I
    .local v7, "isSimLoaded":Z
    .restart local v9    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v11    # "productModel":Ljava/lang/String;
    .restart local v12    # "bFindInOpen":Z
    .restart local v14    # "bSMInCarrier":Z
    .local v16, "smNetCodeOpen":Ljava/lang/String;
    .local v17, "smCarrierCsc":Ljava/lang/String;
    .local v18, "smChangeOs":Ljava/lang/String;
    :catchall_358
    move-exception v0

    move/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    .end local v5    # "phoneId":I
    .end local v7    # "isSimLoaded":Z
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    .end local v11    # "productModel":Ljava/lang/String;
    .restart local v22    # "phoneId":I
    .restart local v23    # "isSimLoaded":Z
    .restart local v24    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v25    # "productModel":Ljava/lang/String;
    goto :goto_376

    .line 2026
    .end local v22    # "phoneId":I
    .end local v23    # "isSimLoaded":Z
    .end local v24    # "tm":Landroid/telephony/TelephonyManager;
    .end local v25    # "productModel":Ljava/lang/String;
    .restart local v5    # "phoneId":I
    .restart local v7    # "isSimLoaded":Z
    .restart local v9    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v11    # "productModel":Ljava/lang/String;
    :catch_362
    move-exception v0

    move/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    .line 2027
    .end local v5    # "phoneId":I
    .end local v7    # "isSimLoaded":Z
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    .end local v11    # "productModel":Ljava/lang/String;
    .local v0, "exp":Ljava/lang/Exception;
    .restart local v22    # "phoneId":I
    .restart local v23    # "isSimLoaded":Z
    .restart local v24    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v25    # "productModel":Ljava/lang/String;
    :goto_36b
    :try_start_36b
    const-string v5, "Error while parsing"

    invoke-static {v13, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_370
    .catchall {:try_start_36b .. :try_end_370} :catchall_375

    .line 2028
    nop

    .line 2030
    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 2028
    return v3

    .line 2030
    .end local v0    # "exp":Ljava/lang/Exception;
    :catchall_375
    move-exception v0

    :goto_376
    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 2031
    throw v0

    .line 1965
    .end local v12    # "bFindInOpen":Z
    .end local v14    # "bSMInCarrier":Z
    .end local v15    # "bChangeOS":Z
    .end local v16    # "smNetCodeOpen":Ljava/lang/String;
    .end local v17    # "smCarrierCsc":Ljava/lang/String;
    .end local v18    # "smChangeOs":Ljava/lang/String;
    .end local v22    # "phoneId":I
    .end local v23    # "isSimLoaded":Z
    .end local v24    # "tm":Landroid/telephony/TelephonyManager;
    .end local v25    # "productModel":Ljava/lang/String;
    .restart local v5    # "phoneId":I
    .restart local v7    # "isSimLoaded":Z
    .restart local v9    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v11    # "productModel":Ljava/lang/String;
    :catch_37a
    move-exception v0

    move/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    .line 1966
    .end local v5    # "phoneId":I
    .end local v7    # "isSimLoaded":Z
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    .end local v11    # "productModel":Ljava/lang/String;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v22    # "phoneId":I
    .restart local v23    # "isSimLoaded":Z
    .restart local v24    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v25    # "productModel":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    return v3

    :pswitch_data_3aa
    .packed-switch 0x0
        :pswitch_15f
        :pswitch_15e
        :pswitch_139
        :pswitch_110
        :pswitch_111
    .end packed-switch

    :sswitch_data_3b8
    .sparse-switch
        0x54a39200 -> :sswitch_277
        0x5666fa60 -> :sswitch_26c
    .end sparse-switch

    :pswitch_data_3c2
    .packed-switch 0x0
        :pswitch_2d0
        :pswitch_2ab
    .end packed-switch
.end method

.method private blacklist setSMorOperatorMessageApp()V
    .registers 10

    .line 1890
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1891
    .local v0, "salesCode":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1892
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v3

    .line 1893
    .local v4, "isSmsCapable":Z
    :goto_1c
    if-eqz v4, :cond_99

    .line 1894
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ConfigDefSmsApp"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1896
    .local v5, "smsDefaultResorcePackage":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1897
    .local v6, "messageAppName":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_9a

    :cond_36
    goto :goto_4a

    :sswitch_37
    const-string v2, "SBM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    move v2, v3

    goto :goto_4b

    :sswitch_41
    const-string v3, "DCM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_4b

    :goto_4a
    move v2, v7

    :goto_4b
    packed-switch v2, :pswitch_data_a4

    goto :goto_73

    .line 1903
    :pswitch_4f
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string v3, "com.nttdocomo.android.msg"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1904
    const-string/jumbo v2, "samsung"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 1905
    const-string v6, "com.nttdocomo.android.msg"

    goto :goto_73

    .line 1899
    :pswitch_65
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "jp.softbank.mb.mail"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1900
    const-string/jumbo v6, "jp.softbank.mb.mail"

    .line 1908
    :cond_73
    :goto_73
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v6}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 1909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultApplication messageAppName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsApplication"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-static {v6, v2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 1913
    .end local v5    # "smsDefaultResorcePackage":Ljava/lang/String;
    .end local v6    # "messageAppName":Ljava/lang/String;
    :cond_99
    return-void

    :sswitch_data_9a
    .sparse-switch
        0x107ae -> :sswitch_41
        0x13fde -> :sswitch_37
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_65
        :pswitch_4f
    .end packed-switch
.end method

.method private blacklist updateChangeByOs(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11
    .param p1, "changedValueByOs"    # Ljava/lang/String;
    .param p2, "activeOperatorId"    # Ljava/lang/String;
    .param p3, "isOpen"    # Z

    .line 1917
    const-string v0, ""

    .line 1918
    .local v0, "retVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1919
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1921
    .local v1, "changeOsSplit":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_46

    .line 1922
    aget-object v3, v1, v2

    .line 1923
    .local v3, "split":Ljava/lang/String;
    const-string v4, ""

    if-eqz p3, :cond_36

    .line 1924
    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1925
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1926
    goto :goto_46

    .line 1929
    :cond_36
    const-string v5, "SM_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 1930
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1931
    goto :goto_46

    .line 1921
    .end local v3    # "split":Ljava/lang/String;
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1936
    .end local v1    # "changeOsSplit":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_46
    :goto_46
    return-object v0
.end method


# virtual methods
.method blacklist setDMACdataConfigInfo(ZLjava/lang/String;)V
    .registers 5
    .param p1, "isUnlockPhone"    # Z
    .param p2, "mccmnc"    # Ljava/lang/String;

    .line 1726
    if-eqz p1, :cond_c

    .line 1727
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    const-string v1, "True"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemDMACdata;->setIsUnLockedPhone(Ljava/lang/String;)V

    goto :goto_15

    .line 1729
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    const-string v1, "False"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemDMACdata;->setIsUnLockedPhone(Ljava/lang/String;)V

    .line 1732
    :goto_15
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/SemDMACdata;->setMccmnc(Ljava/lang/String;)V

    .line 1733
    return-void
.end method

.method blacklist setDMACdataTssInfo(ZZLjava/lang/String;)V
    .registers 6
    .param p1, "isSupportTrueSingleSKU"    # Z
    .param p2, "isTSSActivated"    # Z
    .param p3, "activeOperatorId"    # Ljava/lang/String;

    .line 1713
    if-nez p1, :cond_c

    .line 1714
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    const-string v1, "NotSupported"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemDMACdata;->setTssActivated(Ljava/lang/String;)V

    goto :goto_21

    .line 1716
    :cond_c
    if-eqz p2, :cond_18

    .line 1717
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    const-string v1, "Activated"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemDMACdata;->setTssActivated(Ljava/lang/String;)V

    goto :goto_21

    .line 1719
    :cond_18
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    const-string v1, "Deactivated"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemDMACdata;->setTssActivated(Ljava/lang/String;)V

    .line 1722
    :goto_21
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/SemDMACdata;->setCarrierActivatedId(Ljava/lang/String;)V

    .line 1723
    return-void
.end method

.method public blacklist setDefaultMsgApp()V
    .registers 10

    .line 1849
    const/4 v0, 0x0

    .line 1850
    .local v0, "mChangeToAM":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->getActiveOperatorId()Ljava/lang/String;

    move-result-object v1

    .line 1851
    .local v1, "activeOperatorId":Ljava/lang/String;
    const-string v2, "SmsApplication"

    const-string/jumbo v3, "setDefaultMsgAppFromConfig"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetmLogStb()Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "setDefaultMsgApp Config Info ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1854
    iget-object v3, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$smgetIncomingUserId(Landroid/content/Context;)I

    move-result v3

    .line 1856
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$smgetDefaultSmsPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 1858
    .local v4, "oldPackageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->isAMInstalled()Z

    move-result v5

    const-string v6, "SM"

    const-string/jumbo v7, "persist.ril.config.defaultmsgapp"

    if-nez v5, :cond_3b

    .line 1859
    invoke-static {v7, v6}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v5

    const-string v8, "NoAM"

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/SemDMACdata;->setPreInstalledMsgAppError(Ljava/lang/String;)V

    goto :goto_6a

    .line 1862
    :cond_3b
    const-string v5, "NONE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 1863
    invoke-static {v7, v6}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 1865
    :cond_47
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->setDefaultMsgApp_File(Ljava/lang/String;)Z

    move-result v0

    .line 1866
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetmLogStb()Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, ", mChangeToAM : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1867
    if-eqz v0, :cond_67

    .line 1868
    const-string v5, "AM"

    invoke-static {v7, v5}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    iget-object v5, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    const-string v8, "com.google.android.apps.messaging"

    invoke-static {v8, v5}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_6a

    .line 1871
    :cond_67
    invoke-static {v7, v6}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    :goto_6a
    invoke-static {v7, v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 1877
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->setSMorOperatorMessageApp()V

    .line 1880
    :cond_77
    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetmLogStb()Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v8, ", SemSystemProperties - persist.ril.config.defaultmsgapp : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 1881
    invoke-static {v7, v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1883
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default Msg app is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default Msg app parameter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$DefaultMessageAppConfig;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/telephony/SmsApplication;->-$$Nest$sfgetsDMACdata()Lcom/android/internal/telephony/SemDMACdata;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/android/internal/telephony/SmsApplication;->sendBroadcast_SMS_BIG_DATA_INFO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SemDMACdata;)V

    .line 1887
    return-void
.end method
