.class public Lcom/android/server/location/nsflp/NSKmlWriter;
.super Ljava/lang/Object;
.source "NSKmlWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;,
        Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;,
        Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NSKmlWriter"


# instance fields
.field public final mDebugInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mNmeaKmlInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mPositionKmlInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1KzM0EHs-KvB5_NZenB62ZRs4Lc(Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSKmlWriter;->lambda$getPositionKmlBody$0(Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$p9Ccp82oD9Nrcgdk2rSQKW7_1Cc(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSKmlWriter;->lambda$parseFile$1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mNmeaKmlInfoList:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mPositionKmlInfoMap:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mDebugInfoList:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$getPositionKmlBody$0(Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)Ljava/util/List;
    .registers 1

    .line 198
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$parseFile$1(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 270
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public createKmzFile(ILjava/io/File;)Z
    .registers 7

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/nsflp/NSKmlWriter;->getContents(ILjava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".txt"

    const-string v1, ".kml"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Lcom/android/server/location/nsflp/NSUtLogger;->makeFile(Ljava/io/File;)Z

    const/4 v2, 0x0

    .line 70
    :try_start_19
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/android/server/location/nsflp/NSUtLogger;->writeFile(Ljava/io/File;[BZ)Z

    move-result p1
    :try_end_23
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_19 .. :try_end_23} :catch_3e

    if-nez p1, :cond_26

    return v2

    :cond_26
    const-string p1, ".kmz"

    .line 78
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    :try_start_31
    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/nsflp/NSKmlWriter;->createZipFile(Ljava/io/File;Ljava/io/File;)V

    .line 82
    invoke-static {v0}, Lcom/android/server/location/nsflp/NSUtLogger;->deleteFile(Ljava/io/File;)Z
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_37} :catch_39

    const/4 p0, 0x1

    return p0

    :catch_39
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v2

    :catch_3e
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    return v2
.end method

.method public final createZipFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 334
    :try_start_5
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-direct {p2, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_60

    .line 335
    :try_start_a
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_56

    .line 336
    :try_start_f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_4c

    .line 337
    :try_start_14
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 341
    :goto_24
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2f

    const/4 v3, 0x0

    .line 342
    invoke-virtual {v0, p1, v3, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_24

    .line 344
    :cond_2f
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 345
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_42

    .line 346
    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_4c

    :try_start_38
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_56

    :try_start_3b
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_60

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_42
    move-exception p1

    .line 333
    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v1

    :try_start_48
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4b
    throw p1
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p1

    :try_start_4d
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v0

    :try_start_52
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_55
    throw p1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception p1

    :try_start_57
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception p2

    :try_start_5c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5f
    throw p1
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    :catchall_60
    move-exception p1

    :try_start_61
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_69

    :catchall_65
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_69
    throw p1
.end method

.method public final getContents(ILjava/io/File;)Ljava/lang/String;
    .registers 4

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/nsflp/NSKmlWriter;->parseFile(ILjava/io/File;)V

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSKmlWriter;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 44
    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSKmlWriter;->getNmeaKmlBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mNmeaKmlInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_47

    .line 47
    :cond_1f
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mPositionKmlInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSKmlWriter;->getPositionKmlBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 50
    :cond_3d
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mPositionKmlInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 51
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mDebugInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_47
    const-string p0, "</Document></kml>"

    .line 54
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDebugKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;
    .registers 14

    .line 305
    array-length p0, p1

    const/16 v0, 0x8

    if-ge p0, v0, :cond_1d

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDebugKmlInfo, wrong data length : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSKmlWriter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_1d
    const/4 v1, 0x0

    .line 312
    aget-object v3, p1, v1

    const/4 v1, 0x1

    .line 313
    aget-object v4, p1, v1

    const/4 v1, 0x2

    .line 314
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v1, 0x3

    .line 315
    aget-object v7, p1, v1

    const/4 v1, 0x4

    .line 316
    aget-object v8, p1, v1

    const/4 v1, 0x5

    .line 317
    aget-object v9, p1, v1

    const/4 v1, 0x6

    .line 318
    aget-object v10, p1, v1

    .line 319
    aget-object v0, p1, v0

    const-string v1, "ENGINE_OFF"

    .line 321
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const/16 v1, 0xa

    if-le p0, v1, :cond_5c

    .line 322
    aget-object p0, p1, v1

    .line 323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v11, p0

    goto :goto_5d

    :cond_5c
    move-object v11, v0

    .line 325
    :goto_5d
    new-instance p0, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getHeadTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 432
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 433
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HHmmssddMMyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 434
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "UTC %04d/%02d/%02d, %02d:%02d:%02d"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 435
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    .line 434
    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_72
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_72} :catch_73

    return-object p0

    :catch_73
    move-exception p0

    .line 437
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public final getHeader()Ljava/lang/String;
    .registers 1

    const-string p0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<kml xmlns=\"http://www.opengis.net/kml/2.2\">\n<Document>\n<name>UtLogGenerator</name><open>1</open>\n<Style id=\"lineStyleRed\"><LineStyle><color>ff0000ff</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleYellow\"><LineStyle><color>ff00fffd</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleGreen\"><LineStyle><color>ff008000</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStylePurple\"><LineStyle><color>ff800080</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleFuchsia\"><LineStyle><color>ffff00ff</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleNavy\"><LineStyle><color>ff000080</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleBlue\"><LineStyle><color>ff0000ff</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleTeal\"><LineStyle><color>ff008080</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"lineStyleOlive\"><LineStyle><color>ff808000</color><width>1.5</width>\n</LineStyle></Style>\n<Style id=\"pointStyleRed\"><LabelStyle><color>00ffffff</color></LabelStyle> <IconStyle><color>ff0000ff</color>\n<scale>0.5</scale>\"<Icon><href>http://maps.google.com/mapfiles/kml/shapes/placemark_square.png</href></Icon></IconStyle>\n</Style>\n<Style id=\"pointStyleYellow\"><LabelStyle><color>00ffffff</color></LabelStyle> <IconStyle><color>ff00fffd</color>\n<scale>0.5</scale>\"<Icon><href>http://maps.google.com/mapfiles/kml/shapes/placemark_square.png</href></Icon></IconStyle>\n</Style>\n<Style id=\"pointStyleGreen\"><LabelStyle><color>00ffffff</color></LabelStyle> <IconStyle><color>ff008000</color>\n<scale>0.5</scale>\"<Icon><href>http://maps.google.com/mapfiles/kml/shapes/placemark_square.png</href></Icon></IconStyle>\n</Style>\n<Style id=\"sn_wht-diamond\"><IconStyle><color>ffff0000</color><scale>1.0</scale><Icon><href>http://maps.google.com/mapfiles/kml/paddle/wht-diamond.png</href></Icon></IconStyle></Style><Style id=\"sn_forbidden\"><IconStyle><color>ffff0c00</color><scale>1.0</scale><Icon><href>http://maps.google.com/mapfiles/kml/shapes/forbidden.png</href></Icon></IconStyle></Style><Style id=\"sn_arrow\"><IconStyle><color>ffff0c00</color><scale>1.0</scale><Icon><href>http://maps.google.com/mapfiles/kml/shapes/arrow.png</href></Icon></IconStyle></Style>"

    return-object p0
.end method

.method public final getNmeaKmlBody()Ljava/lang/String;
    .registers 8

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<Folder id=\"Data\">\n<name>NMEA</name>\n"

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<Placemark>\n<name>Line</name><styleUrl>#lineStyleRed</styleUrl>"

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<LineString>\n"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<extrude>1</extrude>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<tessellate>1</tessellate>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<coordinates>\n"

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mNmeaKmlInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    .line 146
    invoke-virtual {v4}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const-string v5, "<Placemark>\n<name>P"

    .line 149
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/location/nsflp/NSKmlWriter;->getHeadTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</name>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<styleUrl>#pointStyleRed</styleUrl>"

    .line 150
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<description>latitude="

    .line 151
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " longitude="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " speed="

    .line 152
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getSpeed()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "</description>\n"

    .line 153
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<Point><coordinates>"

    .line 154
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v4}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ",0 \n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</coordinates></Point>\n</Placemark>\n"

    .line 156
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2f

    :cond_c4
    const-string p0, "</Folder>"

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</coordinates>\n</LineString>\n</Placemark>"

    .line 159
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNmeaKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;
    .registers 21

    move-object/from16 v0, p1

    .line 350
    array-length v1, v0

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-lt v1, v3, :cond_d1

    const/4 v1, 0x1

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_14

    goto/16 :goto_d1

    .line 352
    :cond_14
    aget-object v1, v0, v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    .line 353
    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "A"

    .line 354
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    return-object v2

    :cond_2b
    const/4 v2, 0x3

    .line 357
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/4 v2, 0x4

    .line 358
    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    .line 359
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 360
    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    .line 361
    aget-object v10, v0, v5

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_52

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_5c

    :cond_52
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const v10, 0x3fed0e56    # 1.852f

    mul-float/2addr v5, v10

    :goto_5c
    move/from16 v16, v5

    .line 363
    aget-object v0, v0, v3

    .line 364
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p0

    invoke-virtual {v5, v0}, Lcom/android/server/location/nsflp/NSKmlWriter;->roundsUtcTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_90
    move-object/from16 v17, v0

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v6, v0

    double-to-int v3, v6

    int-to-double v10, v3

    sub-double/2addr v6, v10

    const-wide v12, 0x3ffaaaaaaaaaaaabL    # 1.6666666666666667

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    const-string v3, "S"

    .line 374
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_b0

    move-wide v2, v10

    goto :goto_b1

    :cond_b0
    move-wide v2, v14

    :goto_b1
    mul-double/2addr v2, v6

    mul-double/2addr v8, v0

    double-to-int v0, v8

    int-to-double v0, v0

    sub-double/2addr v8, v0

    mul-double/2addr v8, v12

    add-double/2addr v8, v0

    const-string v0, "W"

    .line 381
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    goto :goto_c2

    :cond_c1
    move-wide v10, v14

    :goto_c2
    mul-double v14, v8, v10

    .line 383
    new-instance v0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    const/16 v18, 0x0

    const-string/jumbo v11, "gps"

    move-object v10, v0

    move-wide v12, v2

    invoke-direct/range {v10 .. v18}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;-><init>(Ljava/lang/String;DDFLjava/lang/String;Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)V

    return-object v0

    :cond_d1
    :goto_d1
    return-object v2
.end method

.method public final getPositionKmlBody(Ljava/lang/String;)Ljava/lang/String;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    .line 170
    invoke-virtual {v0, v1, v6}, Lcom/android/server/location/nsflp/NSKmlWriter;->getStyle(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 171
    invoke-virtual {v0, v1, v8}, Lcom/android/server/location/nsflp/NSKmlWriter;->getStyle(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const-string v10, "<Folder id=\"Data\">\n<name>"

    .line 173
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "</name>"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<Placemark>\n<name>Line</name><styleUrl>"

    .line 174
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</styleUrl>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<LineString>\n"

    .line 175
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<extrude>1</extrude>\n"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<tessellate>1</tessellate>"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "<coordinates>\n"

    .line 176
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 181
    iget-object v12, v0, Lcom/android/server/location/nsflp/NSKmlWriter;->mPositionKmlInfoMap:Ljava/util/Map;

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_66
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string/jumbo v14, "gps"

    if-eqz v13, :cond_148

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    move-object/from16 v16, v7

    .line 182
    invoke-virtual {v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    add-int/2addr v8, v6

    const-string v7, "<Placemark>\n<name>P"

    .line 185
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<styleUrl>"

    .line 186
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v16

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "<description>latitude="

    .line 187
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " longitude="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " speed="

    .line 188
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getSpeed()F

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "</description>\n"

    .line 189
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<Point><coordinates>"

    .line 190
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v8

    invoke-virtual {v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ",0 \n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</coordinates></Point>\n</Placemark>\n"

    .line 192
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_139

    .line 195
    invoke-virtual {v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getSatelliteState()Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    move-result-object v7

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-virtual {v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 198
    new-instance v8, Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v11, v7, v8}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13d

    :cond_139
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    :goto_13d
    move-object/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    const/4 v6, 0x1

    goto/16 :goto_66

    :cond_148
    const-string v6, "</Folder>"

    .line 201
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</coordinates>\n</LineString>\n</Placemark>"

    .line 202
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16c

    .line 206
    iget-object v1, v0, Lcom/android/server/location/nsflp/NSKmlWriter;->mDebugInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_163

    .line 207
    invoke-virtual {v0, v5}, Lcom/android/server/location/nsflp/NSKmlWriter;->updateDebugBody(Ljava/lang/StringBuilder;)V

    .line 209
    :cond_163
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16c

    .line 210
    invoke-virtual {v0, v11, v4}, Lcom/android/server/location/nsflp/NSKmlWriter;->updateSatelliteBody(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 213
    :cond_16c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPositionKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;
    .registers 13

    .line 281
    array-length p0, p1

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ge p0, v1, :cond_1d

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPositionKmlInfo, wrong data length : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSKmlWriter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1d
    const/4 v1, 0x0

    .line 288
    aget-object v9, p1, v1

    const/4 v1, 0x1

    .line 289
    aget-object v3, p1, v1

    const/4 v1, 0x2

    .line 290
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v1, 0x3

    .line 291
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/4 v1, 0x5

    .line 292
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    const-string/jumbo v1, "gps"

    .line 295
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const/16 v1, 0x8

    if-le p0, v1, :cond_5a

    .line 296
    aget-object p0, p1, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_5a

    .line 297
    invoke-static {}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->values()[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    move-result-object p1

    array-length p1, p1

    if-ge p0, p1, :cond_5a

    .line 298
    invoke-static {}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->values()[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    move-result-object p1

    aget-object v0, p1, p0

    :cond_5a
    move-object v10, v0

    .line 301
    new-instance p0, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;-><init>(Ljava/lang/String;DDFLjava/lang/String;Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)V

    return-object p0
.end method

.method public final getSignalLineStyle(Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)Ljava/lang/String;
    .registers 2

    .line 227
    sget-object p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->OUTDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "#lineStylePurple"

    return-object p0

    .line 229
    :cond_b
    sget-object p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->MILD_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const-string p0, "#lineStyleFuchsia"

    return-object p0

    .line 231
    :cond_16
    sget-object p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->DEEP_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, "#lineStyleNavy"

    return-object p0

    .line 233
    :cond_21
    sget-object p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->SHADOW:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "#lineStyleBlue"

    return-object p0

    .line 235
    :cond_2c
    sget-object p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->NO_SATELLITE:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "#lineStyleTeal"

    return-object p0

    :cond_37
    const-string p0, "#lineStyleOlive"

    return-object p0
.end method

.method public final getStyle(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    const-string/jumbo p0, "gps"

    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    if-eqz p2, :cond_e

    const-string p0, "#lineStyleRed"

    goto :goto_10

    :cond_e
    const-string p0, "#pointStyleRed"

    :goto_10
    return-object p0

    :cond_11
    const-string/jumbo p0, "network"

    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    if-eqz p2, :cond_1f

    const-string p0, "#lineStyleYellow"

    goto :goto_21

    :cond_1f
    const-string p0, "#pointStyleYellow"

    :goto_21
    return-object p0

    :cond_22
    if-eqz p2, :cond_27

    const-string p0, "#lineStyleGreen"

    goto :goto_29

    :cond_27
    const-string p0, "#pointStyleGreen"

    :goto_29
    return-object p0
.end method

.method public final isRMC(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_10

    .line 387
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x3

    const-string v0, "RMC"

    .line 388
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final parseFile(ILjava/io/File;)V
    .registers 7

    .line 243
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_85

    .line 246
    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_7b

    if-eqz p2, :cond_77

    const-string v1, "[,*]"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_32

    .line 248
    :try_start_1c
    invoke-virtual {p0, p2}, Lcom/android/server/location/nsflp/NSKmlWriter;->isRMC(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 249
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/location/nsflp/NSKmlWriter;->getNmeaKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 251
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mNmeaKmlInfoList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 255
    :cond_32
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 256
    array-length v1, p2

    const/4 v3, 0x2

    if-ge v1, v3, :cond_3b

    goto :goto_11

    .line 258
    :cond_3b
    aget-object v1, p2, v2

    const-string v2, "FIRST_FIX"

    .line 260
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "ENGINE_OFF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_6a

    .line 266
    :cond_4e
    invoke-virtual {p0, p2}, Lcom/android/server/location/nsflp/NSKmlWriter;->getPositionKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;

    move-result-object p2

    if-nez p2, :cond_55

    goto :goto_11

    .line 269
    :cond_55
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mPositionKmlInfoMap:Ljava/util/Map;

    .line 270
    invoke-virtual {p2}, Lcom/android/server/location/nsflp/NSKmlWriter$KmlInfo;->getProvider()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/location/nsflp/NSKmlWriter$$ExternalSyntheticLambda1;-><init>()V

    .line 269
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 271
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 261
    :cond_6a
    :goto_6a
    invoke-virtual {p0, p2}, Lcom/android/server/location/nsflp/NSKmlWriter;->getDebugKmlInfo([Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;

    move-result-object p2

    if-nez p2, :cond_71

    goto :goto_11

    .line 264
    :cond_71
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSKmlWriter;->mDebugInfoList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catchall {:try_start_1c .. :try_end_76} :catchall_7b

    goto :goto_11

    .line 275
    :cond_77
    :try_start_77
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_85

    goto :goto_89

    :catchall_7b
    move-exception p0

    .line 243
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_84

    :catchall_80
    move-exception p1

    :try_start_81
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_84
    throw p0
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_85} :catch_85

    :catch_85
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_89
    return-void
.end method

.method public final roundsUtcTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 p0, 0x0

    const/4 v0, 0x2

    .line 396
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    .line 397
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x6

    .line 398
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x7

    const/16 v4, 0x8

    .line 399
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x5

    if-lt p1, v3, :cond_43

    const/16 p1, 0x3b

    if-ge v2, p1, :cond_32

    add-int/lit8 p0, v2, 0x1

    :goto_30
    move v2, p0

    goto :goto_43

    :cond_32
    if-ge v0, p1, :cond_37

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_37
    const/16 p1, 0x17

    if-ge v1, p1, :cond_40

    add-int/lit8 v1, v1, 0x1

    move v0, p0

    move v2, v0

    goto :goto_43

    :cond_40
    move v0, p0

    move v2, v0

    goto :goto_44

    :cond_43
    :goto_43
    move p0, v1

    :goto_44
    const-string p1, ""

    const-string v1, "0"

    const/16 v3, 0xa

    if-ge p0, v3, :cond_5b

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 418
    :cond_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-ge v0, v3, :cond_7b

    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 420
    :cond_7b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-ge v2, v3, :cond_9b

    .line 421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 422
    :cond_9b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateDebugBody(Ljava/lang/StringBuilder;)V
    .registers 28

    move-object/from16 v0, p1

    const-string v1, "<Folder>\n<name>Debug</name>"

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    .line 463
    iget-object v1, v1, Lcom/android/server/location/nsflp/NSKmlWriter;->mDebugInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;

    .line 464
    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgettype(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FIRST_FIX"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "</b></p>\n"

    const-string v5, " - "

    const-string v6, "</p>"

    const-string v7, "<p>"

    const-string v8, "</Placemark>"

    const-string v9, "</coordinates></Point>"

    const-string v12, "<coordinates>"

    const-string v13, "<Point><gx:drawOrder>1</gx:drawOrder>"

    const-string v14, "</styleUrl>"

    const-string v15, "<styleUrl>"

    const-string v10, "</div>]]></description>"

    const-string v11, "\\|"

    move-object/from16 v16, v1

    const-string v1, "<![CDATA[<div style=\"white-space: nowrap;\">\n"

    move-object/from16 v17, v8

    const-string v8, "<description>\n"

    move-object/from16 v18, v9

    const-string v9, "</name>"

    move-object/from16 v19, v12

    const-string v12, "<Placemark>\n<name>"

    const/16 v20, 0x0

    if-eqz v3, :cond_e9

    .line 465
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v3, v13

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetsessionNumber(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgettype(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v12

    .line 466
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetreceivedTime(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<p><b>* Session start time : "

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgettime(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<p><b>** Location history around 1sec based on engine on</b></p>\n"

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetmessage(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 473
    array-length v4, v1

    move/from16 v5, v20

    :goto_9f
    if-ge v5, v4, :cond_af

    aget-object v8, v1, v5

    .line 474
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_9f

    .line 476
    :cond_af
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#sn_wht-diamond"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v19

    .line 479
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetlongitude(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetlatitude(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_24b

    :cond_e9
    move-object v3, v13

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    .line 482
    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgettype(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v3

    const-string v3, "ENGINE_OFF"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24b

    .line 483
    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetmessage(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "/"

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 485
    array-length v13, v3

    move-object/from16 v18, v14

    const/4 v14, 0x2

    if-ge v13, v14, :cond_10e

    goto/16 :goto_24b

    .line 486
    :cond_10e
    aget-object v13, v3, v20

    const/4 v14, 0x1

    .line 487
    aget-object v3, v3, v14

    .line 489
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v23, v13

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetsessionNumber(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgettype(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v13

    .line 490
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetreceivedTime(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "<p><b>"

    .line 493
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "* Last fix time : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgettime(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Last interval="

    .line 494
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetlastInterval(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<p><b>** Location history around 1sec based on engine off</b></p>\n"

    .line 495
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 499
    array-length v4, v3

    move/from16 v5, v20

    :goto_16f
    if-ge v5, v4, :cond_199

    aget-object v13, v3, v5

    const-string v14, ";"

    .line 501
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 502
    array-length v14, v13

    move-object/from16 v24, v3

    move/from16 v3, v20

    :goto_17e
    if-ge v3, v14, :cond_192

    move/from16 v25, v4

    aget-object v4, v13, v3

    .line 503
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v25

    goto :goto_17e

    :cond_192
    move/from16 v25, v4

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v24

    goto :goto_16f

    .line 506
    :cond_199
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#sn_forbidden"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    .line 508
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v19

    .line 509
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetlongitude(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x2c

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetlatitude(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x30

    .line 510
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v13, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v21

    .line 511
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v18, v13

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetsessionNumber(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v12, "SUPL_HISTORY"

    .line 515
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "<visibility>0</visibility>"

    .line 516
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    .line 520
    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 521
    array-length v8, v1

    move/from16 v9, v20

    :goto_207
    if-ge v9, v8, :cond_217

    aget-object v11, v1, v9

    .line 522
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_207

    .line 525
    :cond_217
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#sn_arrow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetlongitude(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;->-$$Nest$fgetlatitude(Lcom/android/server/location/nsflp/NSKmlWriter$DebugInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24b
    :goto_24b
    move-object/from16 v1, v16

    goto/16 :goto_f

    :cond_24f
    const-string v1, "</Folder>"

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final updateSatelliteBody(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const-string v0, "<Folder>\n<name>Signal</name>"

    .line 443
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 445
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_d

    .line 447
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string v2, "<Placemark>\n<name>"

    .line 448
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "</name>"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<visibility>0</visibility>"

    .line 449
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<styleUrl>"

    .line 450
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSKmlWriter;->getSignalLineStyle(Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</styleUrl>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<LineString>\n"

    .line 451
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<extrude>1</extrude>\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<tessellate>1</tessellate>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<coordinates>\n"

    .line 452
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</coordinates>\n</LineString></Placemark>"

    .line 455
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_79
    const-string p0, "</Folder>"

    .line 458
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
