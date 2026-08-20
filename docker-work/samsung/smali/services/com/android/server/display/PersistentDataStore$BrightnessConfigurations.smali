.class public final Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/PersistentDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BrightnessConfigurations"
.end annotation


# instance fields
.field public final mConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/BrightnessConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSetConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/BrightnessConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public mSetPackageNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSetTimeStamps:Landroid/util/SparseLongArray;

.field public final mTimeStamps:Landroid/util/SparseLongArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmConfigurations(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 990
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    .line 991
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    .line 992
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    .line 995
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    .line 996
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    .line 997
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    return-void
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .registers 5

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteInt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManager.PersistentDataStore"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1368
    :try_start_1f
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_29} :catch_49
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_3d

    .line 1372
    :try_start_29
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1373
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_39} :catch_3a

    goto :goto_49

    :catch_3a
    move-exception p0

    move-object v0, v1

    goto :goto_3e

    :catch_3d
    move-exception p0

    .line 1375
    :goto_3e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1377
    :try_start_41
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception p0

    .line 1379
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :catch_49
    :goto_49
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 13

    const/4 v0, 0x0

    .line 1100
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string v2, "  "

    if-ge v0, v1, :cond_94

    .line 1101
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1102
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    .line 1103
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v1, v6, v4

    if-eqz v1, :cond_5c

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  set at: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5c
    if-eqz v3, :cond_75

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  set by: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1111
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1114
    :cond_94
    invoke-virtual {p0, p1, v2}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dumpSetBrightnessConfiguration(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpSetBrightnessConfiguration(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    const-string p0, "UTF-8"

    .line 1283
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n dumpSetBrightnessConfiguration_1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/Brightness_Configurations_1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1286
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1287
    :goto_28
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1288
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28

    .line 1290
    :cond_36
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception v0

    .line 1293
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1297
    :cond_3e
    :goto_3e
    :try_start_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n\n dumpSetBrightnessConfiguration_2"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    new-instance p2, Ljava/io/File;

    const-string v0, "/data/log/Brightness_Configurations_2"

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1300
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p2, p0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1301
    :goto_64
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result p0

    if-eqz p0, :cond_72

    .line 1302
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_64

    .line 1304
    :cond_72
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_75
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_75} :catch_76

    goto :goto_7a

    :catch_76
    move-exception p0

    .line 1307
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 1041
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/BrightnessConfiguration;

    return-object p0
.end method

.method public loadFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "DisplayManager.PersistentDataStore"

    .line 1046
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 1047
    :cond_6
    :goto_6
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1048
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "brightness-configuration"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :try_start_19
    const-string/jumbo v3, "user-serial"

    .line 1051
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception v3

    const/4 v4, -0x1

    const-string v5, "Failed to read in brightness configuration"

    .line 1054
    invoke-static {v0, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    :goto_29
    const-string/jumbo v4, "package-name"

    .line 1057
    invoke-interface {p1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "timestamp"

    const-wide/16 v6, -0x1

    .line 1058
    invoke-interface {p1, v2, v5, v6, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1062
    :try_start_39
    invoke-static {p1}, Landroid/hardware/display/BrightnessConfiguration;->loadFromXml(Landroid/util/TypedXmlPullParser;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    if-ltz v3, :cond_6

    if-eqz v2, :cond_6

    .line 1064
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    cmp-long v2, v8, v6

    if-eqz v2, :cond_4f

    .line 1066
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_4f
    if-eqz v4, :cond_6

    .line 1069
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_56} :catch_57

    goto :goto_6

    :catch_57
    move-exception v2

    const-string v3, "Failed to load brightness configuration!"

    .line 1073
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_5e
    return-void
.end method

.method public final readFilePosition()I
    .registers 5

    .line 1320
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/BC_Position"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "DisplayManager.PersistentDataStore"

    const/4 v3, 0x0

    if-eqz v0, :cond_3d

    .line 1322
    invoke-virtual {p0, v1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1e

    const-string p0, "/data/log/BC_Position : data is null."

    .line 1324
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_1c
    move v3, p0

    goto :goto_47

    .line 1328
    :cond_1e
    :try_start_1e
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_22} :catch_23

    goto :goto_1c

    .line 1330
    :catch_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/log/BC_Position : data is \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_3d
    const-string/jumbo p0, "make new position file"

    .line 1334
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 1335
    invoke-static {v1, p0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(Ljava/lang/String;I)V

    :goto_47
    return v3
.end method

.method public final readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string p0, "DisplayManager.PersistentDataStore"

    const/4 v0, 0x0

    .line 1344
    :try_start_3
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_38

    .line 1346
    :try_start_10
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1347
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readFromFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_34} :catch_35

    goto :goto_4a

    :catch_35
    move-object p1, v0

    move-object v0, v1

    goto :goto_39

    :catch_38
    move-object p1, v0

    :goto_39
    const-string v1, "IOException in readFromFile"

    .line 1351
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_49

    .line 1354
    :try_start_40
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_49

    :catch_44
    const-string v0, "Exception in readFromFile"

    .line 1357
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    move-object v0, p1

    :goto_4a
    return-object v0
.end method

.method public saveHistory(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v1, p0

    const-string v2, "\n  set at: "

    .line 1120
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->readFilePosition()I

    move-result v0

    const/4 v3, 0x0

    const-string v4, "/data/log/Brightness_Configurations_1"

    if-eqz v0, :cond_79

    const-string v5, "/data/log/BC_Position"

    const v6, 0x186a0

    const-string v7, "/data/log/Brightness_Configurations_2"

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v0, v9, :cond_4c

    if-eq v0, v8, :cond_21

    :try_start_19
    const-string v0, "DisplayManager.PersistentDataStore"

    const-string v4, "Error case"

    .line 1162
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1149
    :cond_21
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1150
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2b} :catch_84

    .line 1151
    :try_start_2b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v8

    if-gt v8, v6, :cond_38

    .line 1152
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_36
    move-object v3, v7

    goto :goto_8c

    .line 1154
    :cond_38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1155
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_42} :catch_49

    .line 1156
    :try_start_42
    invoke-static {v5, v9}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(Ljava/lang/String;I)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_36

    :catch_46
    move-exception v0

    move-object v3, v4

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    move-object v4, v7

    goto :goto_86

    .line 1136
    :cond_4c
    :try_start_4c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1137
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_56} :catch_84

    .line 1138
    :try_start_56
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v10

    if-gt v10, v6, :cond_64

    .line 1139
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v4

    move-object v4, v5

    goto :goto_8c

    .line 1141
    :cond_64
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1142
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_6e} :catch_77

    .line 1143
    :try_start_6e
    invoke-static {v5, v8}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->fileWriteInt(Ljava/lang/String;I)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_74

    move-object v3, v4

    move-object v4, v6

    goto :goto_8c

    :catch_74
    move-exception v0

    move-object v3, v6

    goto :goto_86

    :catch_77
    move-exception v0

    goto :goto_86

    .line 1130
    :cond_79
    :try_start_79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1131
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_83} :catch_84

    goto :goto_8c

    :catch_84
    move-exception v0

    move-object v4, v3

    .line 1167
    :goto_86
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v13, v4

    move-object v4, v3

    move-object v3, v13

    :goto_8c
    if-eqz v4, :cond_23c

    const/4 v0, 0x0

    move v5, v0

    .line 1171
    :goto_90
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_23c

    .line 1172
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1173
    iget-object v6, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    const-wide/16 v7, -0x1

    invoke-virtual {v6, v0, v7, v8}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    .line 1174
    iget-object v8, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1176
    :try_start_ae
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n\n User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1177
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1180
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1182
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1183
    invoke-virtual {v0, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v9, v0

    const-wide/32 v11, 0x36ee80

    .line 1184
    div-long v11, v9, v11

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v6, v9

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " GMT : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1186
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n  set by: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1189
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1191
    iget-object v0, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_146

    const-string v0, "\n   Same Configuration"

    goto/16 :goto_22a

    .line 1195
    :cond_146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1196
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_166} :catch_234

    const-string v6, "),"

    const-string v7, " ("

    if-eqz p1, :cond_1aa

    .line 1200
    :try_start_16c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1aa

    .line 1202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v8, "\n   weight: "

    .line 1204
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 1205
    :goto_181
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a9

    .line 1206
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1207
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_181

    :cond_1a9
    move-object v0, v8

    :cond_1aa
    if-eqz p2, :cond_1ea

    .line 1213
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1ea

    .line 1215
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v8, "\n   timeWeights: "

    .line 1217
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 1218
    :goto_1c1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1e9

    .line 1219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1220
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1c1

    :cond_1e9
    move-object v0, v8

    :cond_1ea
    if-eqz p3, :cond_22a

    .line 1226
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_22a

    .line 1228
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v8, "\n   continuityWeights: "

    .line 1230
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 1231
    :goto_201
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_229

    .line 1232
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1233
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_201

    :cond_229
    move-object v0, v8

    .line 1262
    :cond_22a
    :goto_22a
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_233
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_233} :catch_234

    goto :goto_238

    :catch_234
    move-exception v0

    .line 1264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_238
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_90

    :cond_23c
    if-eqz v4, :cond_247

    .line 1270
    :try_start_23e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_23e .. :try_end_241} :catch_242

    goto :goto_247

    :catch_242
    move-exception v0

    move-object v1, v0

    .line 1272
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_247
    :goto_247
    if-eqz v3, :cond_252

    .line 1275
    :try_start_249
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_24c
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_24c} :catch_24d

    goto :goto_252

    :catch_24d
    move-exception v0

    move-object v1, v0

    .line 1277
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_252
    :goto_252
    return-void
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1080
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 1081
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1082
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/BrightnessConfiguration;

    const/4 v3, 0x0

    const-string v4, "brightness-configuration"

    .line 1084
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "user-serial"

    .line 1085
    invoke-interface {p1, v3, v5, v1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1086
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_33

    const-string/jumbo v6, "package-name"

    .line 1088
    invoke-interface {p1, v3, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1090
    :cond_33
    iget-object v5, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v1, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-eqz v1, :cond_45

    const-string/jumbo v1, "timestamp"

    .line 1092
    invoke-interface {p1, v3, v1, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1094
    :cond_45
    invoke-virtual {v2, p1}, Landroid/hardware/display/BrightnessConfiguration;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 1095
    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4e
    return-void
.end method

.method public final setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    .registers 8

    .line 1003
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    if-eqz p1, :cond_34

    if-nez p3, :cond_12

    .line 1008
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_17

    .line 1010
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1012
    :goto_17
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetTimeStamps:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    if-eqz v0, :cond_2f

    .line 1014
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1015
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_34

    .line 1017
    :cond_2f
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mSetConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_34
    :goto_34
    if-eq v0, p1, :cond_6d

    if-eqz v0, :cond_3e

    .line 1021
    invoke-virtual {v0, p1}, Landroid/hardware/display/BrightnessConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    :cond_3e
    if-eqz p1, :cond_5c

    if-nez p3, :cond_48

    .line 1024
    iget-object p3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4d

    .line 1026
    :cond_48
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1028
    :goto_4d
    iget-object p3, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1029
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6b

    .line 1031
    :cond_5c
    iget-object p1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mPackageNames:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1032
    iget-object p1, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mTimeStamps:Landroid/util/SparseLongArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1033
    iget-object p0, p0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->mConfigurations:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    :goto_6b
    const/4 p0, 0x1

    return p0

    :cond_6d
    const/4 p0, 0x0

    return p0
.end method
