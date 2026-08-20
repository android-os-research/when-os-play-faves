.class public Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemFontChanger"
.end annotation


# static fields
.field public static final KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"


# instance fields
.field public mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

.field public final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .registers 2

    .line 1348
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1350
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    return-void
.end method


# virtual methods
.method public final changeFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1426
    new-instance v2, Lcom/android/server/enterprise/general/FontWriter;

    invoke-direct {v2}, Lcom/android/server/enterprise/general/FontWriter;-><init>()V

    .line 1427
    iget-object v3, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/general/MiscPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "MiscPolicy"

    if-nez v4, :cond_22

    const-string v0, "changeFont():Installed font list is null"

    .line 1434
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_22
    move v7, v5

    .line 1438
    :goto_23
    array-length v8, v4

    if-ge v7, v8, :cond_47

    .line 1439
    aget-object v8, v4, v7

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 1441
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "index"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_44
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_47
    move v7, v5

    :goto_48
    const-string v8, "default"

    .line 1446
    invoke-virtual {v1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const-string/jumbo v9, "sans.loc"

    const/4 v10, 0x1

    if-eqz v8, :cond_79

    .line 1448
    iget-object v1, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/general/MiscPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "default#default"

    invoke-virtual {v2, v1, v9, v3}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    aget-object v1, v4, v7

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default font is selected..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 1455
    :cond_79
    iget-object v4, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v4, v1}, Lcom/android/server/enterprise/general/TypefaceFinder;->findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;

    move-result-object v1

    if-nez v1, :cond_87

    const-string v0, "change font failed"

    .line 1457
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 1461
    :cond_87
    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_96

    const-string v8, "com.monotype.android.font."

    .line 1462
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_96

    return v5

    .line 1465
    :cond_96
    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v8

    const-string v11, ".xml"

    const-string v12, ""

    .line 1468
    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, " "

    const-string v12, "-"

    .line 1470
    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1472
    iget-object v11, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v11}, Lcom/android/server/enterprise/general/MiscPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v2, v11, v8}, Lcom/android/server/enterprise/general/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_bc

    const-string v0, "create fontDir object is null "

    .line 1474
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 1482
    :cond_bc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move v13, v5

    .line 1483
    :goto_c1
    iget-object v14, v1, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_120

    .line 1484
    iget-object v14, v1, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/general/TypefaceFile;

    .line 1488
    :try_start_d1
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v15

    .line 1489
    invoke-virtual {v15}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    .line 1491
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fonts/"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/enterprise/general/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 1492
    invoke-virtual {v14}, Lcom/android/server/enterprise/general/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v5, v10}, Lcom/android/server/enterprise/general/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_f9} :catch_fe

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto :goto_c1

    :catch_fe
    move-exception v0

    const-string v1, "changeFont():Exception"

    .line 1494
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1497
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    return v1

    .line 1501
    :cond_120
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1504
    iget-object v3, v0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/general/MiscPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v9, v4}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    const-string v0, "change font:Done"

    .line 1506
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getActiveFontPosition()I
    .registers 6

    .line 1549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1551
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object p0

    const-string v3, "com.android.settings"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v3, "prefs"

    .line 1553
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1555
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1556
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p0, 0x4000

    invoke-direct {v3, v4, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_40
    .catchall {:try_start_5 .. :try_end_2b} :catchall_3e

    .line 1557
    :try_start_2b
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2f} :catch_31
    .catchall {:try_start_2b .. :try_end_2f} :catchall_5f

    move-object v2, v3

    goto :goto_34

    :catch_31
    move-exception p0

    goto :goto_42

    :cond_33
    move-object p0, v2

    :goto_34
    if-eqz v2, :cond_39

    .line 1564
    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 1566
    :cond_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_3c

    :catch_3c
    move-object v2, p0

    goto :goto_4d

    :catchall_3e
    move-exception p0

    goto :goto_61

    :catch_40
    move-exception p0

    move-object v3, v2

    .line 1560
    :goto_42
    :try_start_42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_5f

    if-eqz v3, :cond_4a

    .line 1564
    :try_start_47
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 1566
    :cond_4a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4d} :catch_4d

    :catch_4d
    :goto_4d
    const/4 p0, 0x0

    if-eqz v2, :cond_5e

    const-string v0, "SavedClickedItem"

    .line 1573
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5e

    .line 1574
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_5e
    return p0

    :catchall_5f
    move-exception p0

    move-object v2, v3

    :goto_61
    if-eqz v2, :cond_66

    .line 1564
    :try_start_63
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 1566
    :cond_66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_69} :catch_69

    .line 1570
    :catch_69
    throw p0
.end method

.method public final getFontString()[Ljava/lang/String;
    .registers 4

    .line 1587
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontsVector()Ljava/util/Vector;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1590
    :cond_8
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1593
    :goto_f
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 1594
    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_20
    return-object v0
.end method

.method public final getFontsVector()Ljava/util/Vector;
    .registers 14

    const/4 v0, 0x0

    .line 1600
    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1601
    new-instance v1, Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-direct {v1}, Lcom/android/server/enterprise/general/TypefaceFinder;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1603
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1605
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1607
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1612
    iget-object v4, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/general/MiscPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1613
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/16 v7, 0x80

    .line 1616
    :try_start_29
    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    .line 1619
    :goto_2e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_65

    .line 1620
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.monotype.android.font.droidserifitalic"

    .line 1621
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_45

    goto :goto_62

    :cond_45
    const-string v11, "com.monotype.android.font."

    .line 1623
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_62

    .line 1624
    invoke-virtual {v4, v10, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 1625
    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v12, v11, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1626
    invoke-virtual {v4, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 1627
    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    .line 1628
    iget-object v12, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v12, v11, v10}, Lcom/android/server/enterprise/general/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    :cond_62
    :goto_62
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    .line 1631
    :cond_65
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {p0, v4, v2, v3, v1}, Lcom/android/server/enterprise/general/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6a} :catch_71
    .catchall {:try_start_29 .. :try_end_6a} :catchall_6f

    .line 1637
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v2

    goto :goto_78

    :catchall_6f
    move-exception p0

    goto :goto_79

    :catch_71
    move-exception p0

    .line 1634
    :try_start_72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_6f

    .line 1637
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_78
    return-object v0

    :goto_79
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1638
    throw p0
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .registers 5

    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "getSystemActiveFont():getting active system font:"

    .line 1511
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getActiveFontPosition()I

    move-result v1

    .line 1513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveFontPosition():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 1516
    aget-object p0, p0, v1

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .registers 3

    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "getSystemFonts():getting all system fonts"

    .line 1581
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {p0}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public savePreferences(Ljava/lang/String;I)V
    .registers 9

    .line 1646
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1648
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.settings"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_17

    :catch_12
    move-exception v2

    .line 1651
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    :goto_17
    if-nez v2, :cond_21

    const-string p0, "MiscPolicy"

    const-string p1, "Setting Context is Null"

    .line 1655
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    const-string/jumbo v3, "prefs"

    const/4 v4, 0x0

    .line 1659
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1662
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "SelectDialogIsActive"

    .line 1663
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v5, "SavedClickedItem"

    .line 1664
    invoke-interface {v3, v5, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1667
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1668
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "flip_font_style"

    invoke-static {p0, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1669
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1671
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_preferences"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1672
    invoke-virtual {v2, p0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1673
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "MONOTYPE"

    .line 1674
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1675
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "setSystemActiveFont():Start"

    .line 1353
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p1, :cond_12

    const-string/jumbo p0, "setSystemActiveFont():Invalid input"

    .line 1357
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1361
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->changeFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_19

    return v1

    .line 1365
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1367
    :try_start_1d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 1368
    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 1374
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v5, Landroid/content/res/Configuration;->FlipFont:I

    .line 1375
    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_34} :catch_71
    .catchall {:try_start_1d .. :try_end_34} :catchall_6f

    .line 1382
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1387
    iget-object p0, p0, Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/general/MiscPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "activity"

    .line 1388
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 p1, 0x32

    .line 1389
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 1392
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1393
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1397
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_55

    .line 1402
    :cond_6b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_6f
    move-exception p0

    goto :goto_7b

    :catch_71
    :try_start_71
    const-string/jumbo p0, "setSystemActiveFont():Exception"

    .line 1379
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_6f

    .line 1382
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_7b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1383
    throw p0
.end method
