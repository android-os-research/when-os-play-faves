.class public Lcom/android/server/smartclip/SpenThemeManager$ThemeData;
.super Ljava/lang/Object;
.source "SpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeData"
.end annotation


# instance fields
.field public hotspotX:F

.field public hotspotY:F

.field public mContext:Landroid/content/Context;

.field public mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

.field public mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

.field public packageNameList:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenThemeManager;Landroid/content/Context;)V
    .registers 5

    .line 503
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    new-instance v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;-><init>(Lcom/android/server/smartclip/SpenThemeManager;Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo-IA;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    .line 497
    new-instance v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    invoke-direct {v0, p1, v1}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;-><init>(Lcom/android/server/smartclip/SpenThemeManager;Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo-IA;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 499
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 500
    iput p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    .line 501
    iput p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    .line 504
    iput-object p2, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mContext:Landroid/content/Context;

    .line 505
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    invoke-virtual {p1, p2}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->readSetting(Landroid/content/Context;)V

    .line 506
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    const-string p1, "/system/media/audio/ui/Pen_att_noti1.ogg"

    const-string p2, "/system/media/audio/ui/Pen_det_noti1.ogg"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->setPaths(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAttachSoundPath()Ljava/lang/String;
    .registers 1

    .line 521
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    return-object p0
.end method

.method public getDetachSoundPath()Ljava/lang/String;
    .registers 1

    .line 536
    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    return-object p0
.end method

.method public loadData()V
    .registers 6

    .line 585
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    .line 588
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "There\'s no data file to load"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const/4 v1, 0x0

    .line 594
    :try_start_19
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_1e} :catch_64
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_1e} :catch_4a

    .line 595
    :try_start_1e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 596
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 599
    :cond_2b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_41

    .line 601
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hover-icon"

    .line 602
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 603
    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->parseHoverIconData(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_41} :catch_48
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_41} :catch_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_41} :catch_45

    :cond_41
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2b

    goto :goto_6e

    :catch_45
    move-exception v0

    move-object v1, v2

    goto :goto_4b

    :catch_48
    move-object v1, v2

    goto :goto_64

    :catch_4a
    move-exception v0

    .line 610
    :goto_4b
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 608
    :catch_64
    :goto_64
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "no current wallpaper -- first boot?"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d
    move-object v2, v1

    .line 613
    :goto_6e
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 614
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$fgetmThemeData(Lcom/android/server/smartclip/SpenThemeManager;)Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final makeJournaledFile()Lcom/android/internal/util/JournaledFile;
    .registers 5

    .line 646
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$mgetRootDir(Lcom/android/server/smartclip/SpenThemeManager;)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "spen_theme_data_file"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 647
    new-instance v0, Lcom/android/internal/util/JournaledFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v0
.end method

.method public final parseHoverIconData(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .line 621
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_43

    .line 623
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 626
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package"

    .line 628
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 629
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    goto :goto_53

    :cond_21
    const-string v3, "hotspotX"

    .line 630
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz v2, :cond_53

    .line 631
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    goto :goto_53

    :cond_32
    const-string v3, "hotspotY"

    .line 632
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    if-eqz v2, :cond_53

    .line 633
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    goto :goto_53

    :cond_43
    const/4 v1, 0x3

    if-ne v0, v1, :cond_53

    .line 636
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hover-icon"

    .line 637
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_50} :catch_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_50} :catch_57
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_50} :catch_57

    if-eqz v1, :cond_53

    return-void

    :cond_53
    :goto_53
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_5b

    :catch_57
    move-exception p0

    .line 641
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5b
    return-void
.end method

.method public saveData()V
    .registers 7

    .line 540
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    const/4 v1, 0x0

    .line 544
    :try_start_5
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 545
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 546
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_19} :catch_3b

    .line 547
    :try_start_19
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 549
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 550
    invoke-virtual {p0, v2}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->saveElements(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 551
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 553
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 554
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 555
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 556
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_39} :catch_3a

    goto :goto_41

    :catch_3a
    move-object v1, v4

    .line 558
    :catch_3b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 559
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_41
    return-void
.end method

.method public final saveElements(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9

    const-string v0, "hotspotY"

    const-string v1, "hotspotX"

    const-string/jumbo v2, "package"

    const-string v3, "hover-icon"

    const/4 v4, 0x0

    .line 565
    :try_start_a
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 567
    iget-object v5, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_1a

    .line 568
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    :cond_1a
    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 571
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    iget v2, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 573
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    iget v1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-exception p1

    .line 579
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 581
    :goto_43
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->this$0:Lcom/android/server/smartclip/SpenThemeManager;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$fgetmThemeData(Lcom/android/server/smartclip/SpenThemeManager;)Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAttachSoundPath(Ljava/lang/String;)V
    .registers 5

    .line 510
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach sound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 512
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    goto :goto_2b

    .line 514
    :cond_27
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iput-object p1, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->attachSoundPath:Ljava/lang/String;

    .line 517
    :goto_2b
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->writeSetting(Landroid/content/Context;)V

    return-void
.end method

.method public setDetachSoundPath(Ljava/lang/String;)V
    .registers 5

    .line 525
    invoke-static {}, Lcom/android/server/smartclip/SpenThemeManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach sound = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 527
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mDefaultSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    goto :goto_2b

    .line 529
    :cond_27
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iput-object p1, v0, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->detachSoundPath:Ljava/lang/String;

    .line 532
    :goto_2b
    iget-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mCurSoundPathInfo:Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;->writeSetting(Landroid/content/Context;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon package name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon hotspotX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", hotspotY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
