.class public Lcom/samsung/android/gesture/ExposureToLuxMapping;
.super Ljava/lang/Object;
.source "ExposureToLuxMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;,
        Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;,
        Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
    }
.end annotation


# static fields
.field private static final DEBUG_HISTORY_SIZE:I = 0x64

.field private static final DEFAULT_VAL_BRIGHTNESS:F = 2000000.0f

.field private static final DEFAULT_VAL_EXPOSURE:F = 2000000.0f

.field private static final EV2L_ATTR_DEVICE:Ljava/lang/String; = "target_device"

.field private static final EV2L_ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final EV2L_ATTR_VER:Ljava/lang/String; = "table_ver"

.field private static final EV2L_TABLE_DEVICE_DEFAULT:Ljava/lang/String; = "none"

.field private static final EV2L_TABLE_TYPE_DEFAULT:Ljava/lang/String; = "normal"

.field private static final EV2L_TABLE_VER_DEFAULT:Ljava/lang/String; = "00000000"

.field private static final EV2L_TAG_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final EV2L_TAG_EXPOSURE:Ljava/lang/String; = "exposure"

.field private static final EV2L_TAG_HEADER:Ljava/lang/String; = "ev2lux_map"

.field private static final EV2L_TAG_ITEM:Ljava/lang/String; = "item"

.field private static final EV2L_TAG_LUX:Ljava/lang/String; = "lux"

.field private static final EV_TO_LUX_MAP_CONFIG:Ljava/lang/String; = "etc/ev_lux_map_config.xml"

.field private static final EV_TO_LUX_MAP_CONFIG_TO_VENDOR:Ljava/lang/String; = "vendor/etc/ev_lux_map_config.xml"

.field protected static final TAG:Ljava/lang/String; = "MotionRecognitionService"


# instance fields
.field private EV2L_TABLE_DEVICE:Ljava/lang/String;

.field private EV2L_TABLE_TYPE:Ljava/lang/String;

.field private EV2L_TABLE_VER:Ljava/lang/String;

.field private brightness:F

.field private ev2l_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;",
            ">;"
        }
    .end annotation
.end field

.field private exposure:F

.field private flag_config_file:Z

.field private luxEvent:[F

.field private final mContext:Landroid/content/Context;

.field private mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray<",
            "Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mconvertTimeToStr(Lcom/samsung/android/gesture/ExposureToLuxMapping;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->convertTimeToStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->ev2l_items:Ljava/util/List;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->flag_config_file:Z

    .line 66
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    .line 67
    const-string v0, "none"

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    .line 68
    const-string v0, "normal"

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/ev_lux_map_config.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .local v0, "temp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 81
    new-instance v1, Ljava/io/File;

    const-string v2, "vendor/etc/ev_lux_map_config.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 83
    :cond_3e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->flag_config_file:Z

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->ev2l_items:Ljava/util/List;

    .line 87
    iget-boolean v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->flag_config_file:Z

    if-eqz v1, :cond_53

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->readEVtoLuxMap()V

    goto :goto_5a

    .line 90
    :cond_53
    const-string v1, "MotionRecognitionService"

    const-string v2, "there is no ev_lux_map_config.xml"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_5a
    return-void
.end method

.method private checkEmptyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 213
    move-object p1, p2

    .line 215
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 216
    return-object p1
.end method

.method private convertTimeToStr(J)Ljava/lang/String;
    .registers 8
    .param p1, "time"    # J

    .line 1061
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 1062
    const-string v0, ""

    return-object v0

    .line 1064
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1065
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1067
    .local v1, "today":Ljava/util/Calendar;
    if-eqz v1, :cond_74

    .line 1068
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1069
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 1071
    .local v3, "month":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1078
    .end local v3    # "month":I
    :cond_74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLuxFromTable()F
    .registers 6

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "lux":F
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->ev2l_items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;

    .line 323
    .local v2, "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
    iget v3, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    iget v4, v2, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_exposure:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1c

    .line 324
    goto :goto_7

    .line 326
    :cond_1c
    iget v3, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    iget v4, v2, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_brightness:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_25

    .line 327
    goto :goto_7

    .line 329
    :cond_25
    iget v0, v2, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_lux:F

    .line 330
    nop

    .line 333
    .end local v2    # "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
    :cond_28
    return v0
.end method

.method private readEVtoLuxMap()V
    .registers 12

    .line 234
    const-string v0, "[EV2L] Exception while closing configuation file."

    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "etc/ev_lux_map_config.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 235
    .local v2, "configFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 236
    new-instance v3, Ljava/io/File;

    const-string v4, "vendor/etc/ev_lux_map_config.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 238
    :cond_1d
    const/4 v3, 0x0

    .line 240
    .local v3, "configReader":Ljava/io/FileReader;
    const/4 v4, 0x0

    .line 243
    .local v4, "temp_item":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
    :try_start_1f
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_24} :catch_26

    move-object v3, v5

    .line 246
    goto :goto_2c

    .line 244
    :catch_26
    move-exception v5

    .line 245
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    const-string v6, "[EV2L] USE DEFAULT CONFIGURATION."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_2c
    :try_start_2c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 250
    .local v5, "configParser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 251
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6
    :try_end_37
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_37} :catch_13d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_37} :catch_12b
    .catchall {:try_start_2c .. :try_end_37} :catchall_129

    .line 253
    .local v6, "type":I
    :goto_37
    const/4 v7, 0x1

    if-eq v6, v7, :cond_11d

    .line 254
    const/4 v7, 0x0

    .line 256
    .local v7, "name":Ljava/lang/String;
    const-string v8, "item"

    packed-switch v6, :pswitch_data_158

    goto/16 :goto_116

    .line 289
    :pswitch_42
    :try_start_42
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 290
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_116

    .line 291
    if-eqz v4, :cond_116

    .line 292
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EV2L] MAPPED: EV "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_exposure:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " && BR "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_brightness:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_lux:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v8, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->ev2l_items:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_116

    .line 258
    :pswitch_86
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 259
    const-string v9, "ev2lux_map"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_b7

    .line 260
    const/4 v8, 0x0

    .line 262
    .local v8, "tmp":Ljava/lang/String;
    const-string v9, "table_ver"

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 263
    if-eqz v8, :cond_a0

    .line 264
    iput-object v8, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    .line 266
    :cond_a0
    const-string v9, "target_device"

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 267
    if-eqz v8, :cond_ab

    .line 268
    iput-object v8, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    .line 270
    :cond_ab
    const-string v9, "type"

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 271
    if-eqz v8, :cond_b6

    .line 272
    iput-object v8, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    .line 274
    .end local v8    # "tmp":Ljava/lang/String;
    :cond_b6
    goto :goto_116

    :cond_b7
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_cd

    .line 275
    new-instance v8, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;

    invoke-direct {v8, v10}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;-><init>(Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item-IA;)V

    move-object v4, v8

    .line 276
    const v8, 0x49f42400    # 2000000.0f

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->setExposure(F)V

    .line 277
    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->setBrightness(F)V

    goto :goto_116

    .line 278
    :cond_cd
    if-eqz v4, :cond_116

    .line 279
    const-string v8, "exposure"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 280
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->setExposure(F)V

    goto :goto_116

    .line 281
    :cond_e7
    const-string v8, "brightness"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ff

    .line 282
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->setBrightness(F)V

    goto :goto_116

    .line 283
    :cond_ff
    const-string v8, "lux"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_116

    .line 284
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->setLux(F)V

    .line 300
    :cond_116
    :goto_116
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_11a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_11a} :catch_13d
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_11a} :catch_12b
    .catchall {:try_start_42 .. :try_end_11a} :catchall_129

    move v6, v8

    .line 301
    .end local v7    # "name":Ljava/lang/String;
    goto/16 :goto_37

    .line 308
    .end local v6    # "type":I
    :cond_11d
    if-eqz v3, :cond_128

    .line 309
    :try_start_11f
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_123

    goto :goto_128

    .line 311
    :catch_123
    move-exception v6

    .line 312
    .local v6, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v6    # "ioe":Ljava/io/IOException;
    goto :goto_149

    .line 313
    :cond_128
    :goto_128
    goto :goto_149

    .line 307
    .end local v5    # "configParser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_129
    move-exception v5

    goto :goto_14a

    .line 304
    :catch_12b
    move-exception v5

    .line 305
    .local v5, "ioe":Ljava/io/IOException;
    :try_start_12c
    const-string v6, "[EV2L] IOException on reading Config."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catchall {:try_start_12c .. :try_end_131} :catchall_129

    .line 308
    .end local v5    # "ioe":Ljava/io/IOException;
    if-eqz v3, :cond_13c

    .line 309
    :try_start_133
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_137

    goto :goto_13c

    .line 311
    :catch_137
    move-exception v5

    .line 312
    .restart local v5    # "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v5    # "ioe":Ljava/io/IOException;
    goto :goto_149

    .line 313
    :cond_13c
    :goto_13c
    goto :goto_149

    .line 302
    :catch_13d
    move-exception v5

    .line 303
    .local v5, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_13e
    const-string v6, "[EV2L] XmlPullParserException on reading Config."

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catchall {:try_start_13e .. :try_end_143} :catchall_129

    .line 308
    .end local v5    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_13c

    .line 309
    :try_start_145
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_137

    goto :goto_13c

    .line 315
    :goto_149
    return-void

    .line 308
    :goto_14a
    if-eqz v3, :cond_155

    .line 309
    :try_start_14c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150

    goto :goto_155

    .line 311
    :catch_150
    move-exception v6

    .line 312
    .restart local v6    # "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    .line 313
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_155
    :goto_155
    nop

    .line 314
    :goto_156
    throw v5

    nop

    :pswitch_data_158
    .packed-switch 0x2
        :pswitch_86
        :pswitch_42
    .end packed-switch
.end method

.method private setLuxDefault()V
    .registers 3

    .line 710
    const-string v0, "MotionRecognitionService"

    const-string v1, "[CameraLightSensor] There is no Ev-Lux table."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method

.method private setLuxForA105F()V
    .registers 5

    .line 397
    const/high16 v0, 0x41000000    # 8.0f

    .line 398
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41800000    # 16.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_19

    .line 399
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c9a0000    # -230.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_11b

    .line 400
    :cond_15
    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_11b

    .line 401
    :cond_19
    cmpl-float v2, v1, v2

    const/high16 v3, 0x41b80000    # 23.0f

    if-lez v2, :cond_32

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_32

    .line 402
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2e

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_11b

    .line 403
    :cond_2e
    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_11b

    .line 404
    :cond_32
    cmpl-float v2, v1, v3

    const/high16 v3, 0x41f80000    # 31.0f

    if-lez v2, :cond_40

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_40

    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_11b

    .line 405
    :cond_40
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42400000    # 48.0f

    if-lez v2, :cond_4e

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_4e

    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_11b

    .line 406
    :cond_4e
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42b40000    # 90.0f

    if-lez v2, :cond_5c

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_5c

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_11b

    .line 407
    :cond_5c
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42ec0000    # 118.0f

    if-lez v2, :cond_6a

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6a

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_11b

    .line 408
    :cond_6a
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43200000    # 160.0f

    if-lez v2, :cond_78

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_78

    const/high16 v0, 0x43430000    # 195.0f

    goto/16 :goto_11b

    .line 409
    :cond_78
    cmpl-float v2, v1, v3

    const/high16 v3, 0x434b0000    # 203.0f

    if-lez v2, :cond_86

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_86

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_11b

    .line 410
    :cond_86
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43780000    # 248.0f

    if-lez v2, :cond_95

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_95

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_11b

    .line 411
    :cond_95
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43960000    # 300.0f

    if-lez v2, :cond_a4

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a4

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_11b

    .line 412
    :cond_a4
    cmpl-float v2, v1, v3

    const v3, 0x43b18000    # 355.0f

    if-lez v2, :cond_b3

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b3

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_11b

    .line 413
    :cond_b3
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43cd0000    # 410.0f

    if-lez v2, :cond_c1

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c1

    const v0, 0x44108000    # 578.0f

    goto :goto_11b

    .line 414
    :cond_c1
    cmpl-float v2, v1, v3

    const v3, 0x43ee8000    # 477.0f

    if-lez v2, :cond_cf

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_cf

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_11b

    .line 415
    :cond_cf
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44060000    # 536.0f

    if-lez v2, :cond_dd

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_dd

    const v0, 0x44408000    # 770.0f

    goto :goto_11b

    .line 416
    :cond_dd
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44170000    # 604.0f

    if-lez v2, :cond_eb

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_eb

    const v0, 0x44598000    # 870.0f

    goto :goto_11b

    .line 417
    :cond_eb
    cmpl-float v2, v1, v3

    const v3, 0x442d4000    # 693.0f

    if-lez v2, :cond_f9

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f9

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_11b

    .line 418
    :cond_f9
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44430000    # 780.0f

    if-lez v2, :cond_107

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_107

    const v0, 0x448c4000    # 1122.0f

    goto :goto_11b

    .line 419
    :cond_107
    cmpl-float v2, v1, v3

    const/high16 v3, 0x445c0000    # 880.0f

    if-lez v2, :cond_115

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_115

    const v0, 0x449d2000    # 1257.0f

    goto :goto_11b

    .line 420
    :cond_115
    cmpl-float v1, v1, v3

    if-lez v1, :cond_11b

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 422
    :cond_11b
    :goto_11b
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 423
    return-void
.end method

.method private setLuxForA105N()V
    .registers 5

    .line 367
    const/high16 v0, 0x41000000    # 8.0f

    .line 368
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_19

    .line 369
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c9a0000    # -230.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_11b

    .line 370
    :cond_15
    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_11b

    .line 371
    :cond_19
    cmpl-float v2, v1, v2

    const/high16 v3, 0x41c80000    # 25.0f

    if-lez v2, :cond_32

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_32

    .line 372
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2e

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_11b

    .line 373
    :cond_2e
    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_11b

    .line 374
    :cond_32
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42040000    # 33.0f

    if-lez v2, :cond_40

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_40

    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_11b

    .line 375
    :cond_40
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42200000    # 40.0f

    if-lez v2, :cond_4e

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_4e

    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_11b

    .line 376
    :cond_4e
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    if-lez v2, :cond_5c

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_5c

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_11b

    .line 377
    :cond_5c
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42fe0000    # 127.0f

    if-lez v2, :cond_6a

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6a

    const/high16 v0, 0x42dc0000    # 110.0f

    goto/16 :goto_11b

    .line 378
    :cond_6a
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43160000    # 150.0f

    if-lez v2, :cond_78

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_78

    const/high16 v0, 0x43610000    # 225.0f

    goto/16 :goto_11b

    .line 379
    :cond_78
    cmpl-float v2, v1, v3

    const/high16 v3, 0x433e0000    # 190.0f

    if-lez v2, :cond_86

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_86

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_11b

    .line 380
    :cond_86
    cmpl-float v2, v1, v3

    const/high16 v3, 0x436b0000    # 235.0f

    if-lez v2, :cond_95

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_95

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_11b

    .line 381
    :cond_95
    cmpl-float v2, v1, v3

    const v3, 0x438e8000    # 285.0f

    if-lez v2, :cond_a5

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a5

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_11b

    .line 382
    :cond_a5
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43aa0000    # 340.0f

    if-lez v2, :cond_b3

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b3

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_11b

    .line 383
    :cond_b3
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43c30000    # 390.0f

    if-lez v2, :cond_c1

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c1

    const v0, 0x44108000    # 578.0f

    goto :goto_11b

    .line 384
    :cond_c1
    cmpl-float v2, v1, v3

    const v3, 0x43e38000    # 455.0f

    if-lez v2, :cond_cf

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_cf

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_11b

    .line 385
    :cond_cf
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44020000    # 520.0f

    if-lez v2, :cond_dd

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_dd

    const v0, 0x44408000    # 770.0f

    goto :goto_11b

    .line 386
    :cond_dd
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44110000    # 580.0f

    if-lez v2, :cond_eb

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_eb

    const v0, 0x44598000    # 870.0f

    goto :goto_11b

    .line 387
    :cond_eb
    cmpl-float v2, v1, v3

    const v3, 0x44278000    # 670.0f

    if-lez v2, :cond_f9

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f9

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_11b

    .line 388
    :cond_f9
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44390000    # 740.0f

    if-lez v2, :cond_107

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_107

    const v0, 0x448c4000    # 1122.0f

    goto :goto_11b

    .line 389
    :cond_107
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44530000    # 844.0f

    if-lez v2, :cond_115

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_115

    const v0, 0x449d2000    # 1257.0f

    goto :goto_11b

    .line 390
    :cond_115
    cmpl-float v1, v1, v3

    if-lez v1, :cond_11b

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 392
    :cond_11b
    :goto_11b
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 393
    return-void
.end method

.method private setLuxForA10E()V
    .registers 5

    .line 478
    const/high16 v0, 0x41000000    # 8.0f

    .line 479
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41e80000    # 29.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_3a

    .line 480
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b446000    # -1501.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_16

    const/4 v0, 0x0

    goto/16 :goto_138

    .line 481
    :cond_16
    const v2, -0x3bb7c000    # -801.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_21

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_138

    .line 482
    :cond_21
    const v2, -0x3c058000    # -501.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2c

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_138

    .line 483
    :cond_2c
    const/high16 v2, -0x3cb70000    # -201.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_36

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_138

    .line 484
    :cond_36
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_138

    .line 485
    :cond_3a
    cmpl-float v2, v1, v2

    const/high16 v3, 0x42440000    # 49.0f

    if-lez v2, :cond_48

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_48

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_138

    .line 486
    :cond_48
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43050000    # 133.0f

    if-lez v2, :cond_56

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_56

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_138

    .line 487
    :cond_56
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43410000    # 193.0f

    if-lez v2, :cond_64

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_64

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_138

    .line 488
    :cond_64
    cmpl-float v2, v1, v3

    const/high16 v3, 0x437a0000    # 250.0f

    if-lez v2, :cond_72

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_72

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_138

    .line 489
    :cond_72
    cmpl-float v2, v1, v3

    const v3, 0x43958000    # 299.0f

    if-lez v2, :cond_82

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_82

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_138

    .line 490
    :cond_82
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43ac0000    # 344.0f

    if-lez v2, :cond_91

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_91

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_138

    .line 491
    :cond_91
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43ce0000    # 412.0f

    if-lez v2, :cond_a0

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a0

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_138

    .line 492
    :cond_a0
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43f40000    # 488.0f

    if-lez v2, :cond_ae

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_ae

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_138

    .line 493
    :cond_ae
    cmpl-float v2, v1, v3

    const v3, 0x440bc000    # 559.0f

    if-lez v2, :cond_be

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_be

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_138

    .line 494
    :cond_be
    cmpl-float v2, v1, v3

    const v3, 0x44314000    # 709.0f

    if-lez v2, :cond_cd

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_cd

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_138

    .line 495
    :cond_cd
    cmpl-float v2, v1, v3

    const v3, 0x446e8000    # 954.0f

    if-lez v2, :cond_dc

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_dc

    const v0, 0x449f6000    # 1275.0f

    goto :goto_138

    .line 496
    :cond_dc
    cmpl-float v2, v1, v3

    const v3, 0x44922000    # 1169.0f

    if-lez v2, :cond_eb

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_eb

    const v0, 0x44d16000    # 1675.0f

    goto :goto_138

    .line 497
    :cond_eb
    cmpl-float v2, v1, v3

    const v3, 0x44b52000    # 1449.0f

    if-lez v2, :cond_fa

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_fa

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_138

    .line 498
    :cond_fa
    cmpl-float v2, v1, v3

    const v3, 0x44e44000    # 1826.0f

    if-lez v2, :cond_109

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_109

    const v0, 0x451f6000    # 2550.0f

    goto :goto_138

    .line 499
    :cond_109
    cmpl-float v2, v1, v3

    const/high16 v3, 0x45170000    # 2416.0f

    if-lez v2, :cond_117

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_117

    const v0, 0x4541c000    # 3100.0f

    goto :goto_138

    .line 500
    :cond_117
    cmpl-float v2, v1, v3

    const v3, 0x4539e000    # 2974.0f

    if-lez v2, :cond_126

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_126

    const v0, 0x458b3000    # 4454.0f

    goto :goto_138

    .line 501
    :cond_126
    cmpl-float v2, v1, v3

    if-lez v2, :cond_135

    const v2, 0x46485000    # 12820.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_135

    const v0, 0x4598f800    # 4895.0f

    goto :goto_138

    .line 502
    :cond_135
    const v0, 0x469c4000    # 20000.0f

    .line 504
    :goto_138
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 505
    return-void
.end method

.method private setLuxForA20E()V
    .registers 5

    .line 453
    const/high16 v0, 0x41000000    # 8.0f

    .line 454
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_d

    const/4 v0, 0x0

    goto/16 :goto_fc

    .line 455
    :cond_d
    cmpl-float v2, v1, v2

    const/high16 v3, 0x41a00000    # 20.0f

    if-lez v2, :cond_1b

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_1b

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_fc

    .line 456
    :cond_1b
    cmpl-float v2, v1, v3

    const/high16 v3, 0x41f00000    # 30.0f

    if-lez v2, :cond_29

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_29

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_fc

    .line 457
    :cond_29
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42440000    # 49.0f

    if-lez v2, :cond_37

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_37

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_fc

    .line 458
    :cond_37
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42b40000    # 90.0f

    if-lez v2, :cond_45

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_45

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_fc

    .line 459
    :cond_45
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    if-lez v2, :cond_53

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_53

    const/high16 v0, 0x42ce0000    # 103.0f

    goto/16 :goto_fc

    .line 460
    :cond_53
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43160000    # 150.0f

    if-lez v2, :cond_61

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_61

    const/high16 v0, 0x43620000    # 226.0f

    goto/16 :goto_fc

    .line 461
    :cond_61
    cmpl-float v2, v1, v3

    const/high16 v3, 0x433e0000    # 190.0f

    if-lez v2, :cond_6f

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6f

    const/high16 v0, 0x439a0000    # 308.0f

    goto/16 :goto_fc

    .line 462
    :cond_6f
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43660000    # 230.0f

    if-lez v2, :cond_7d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_7d

    const/high16 v0, 0x43c20000    # 388.0f

    goto/16 :goto_fc

    .line 463
    :cond_7d
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43870000    # 270.0f

    if-lez v2, :cond_8b

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_8b

    const/high16 v0, 0x43ec0000    # 472.0f

    goto/16 :goto_fc

    .line 464
    :cond_8b
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43a00000    # 320.0f

    if-lez v2, :cond_9a

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_9a

    const v0, 0x440a4000    # 553.0f

    goto/16 :goto_fc

    .line 465
    :cond_9a
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43be0000    # 380.0f

    if-lez v2, :cond_a8

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a8

    const v0, 0x44238000    # 654.0f

    goto :goto_fc

    .line 466
    :cond_a8
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43dc0000    # 440.0f

    if-lez v2, :cond_b5

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b5

    const/high16 v0, 0x44420000    # 776.0f

    goto :goto_fc

    .line 467
    :cond_b5
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43fa0000    # 500.0f

    if-lez v2, :cond_c3

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c3

    const v0, 0x44608000    # 898.0f

    goto :goto_fc

    .line 468
    :cond_c3
    cmpl-float v2, v1, v3

    const/high16 v3, 0x440c0000    # 560.0f

    if-lez v2, :cond_d0

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_d0

    const/high16 v0, 0x447f0000    # 1020.0f

    goto :goto_fc

    .line 469
    :cond_d0
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44200000    # 640.0f

    if-lez v2, :cond_dd

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_dd

    const/high16 v0, 0x448f0000    # 1144.0f

    goto :goto_fc

    .line 470
    :cond_dd
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44340000    # 720.0f

    if-lez v2, :cond_eb

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_eb

    const v0, 0x44a3a000    # 1309.0f

    goto :goto_fc

    .line 471
    :cond_eb
    cmpl-float v2, v1, v3

    if-lez v2, :cond_f9

    const/high16 v2, 0x44480000    # 800.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_f9

    const v0, 0x44b78000    # 1468.0f

    goto :goto_fc

    .line 472
    :cond_f9
    const v0, 0x44cbc000    # 1630.0f

    .line 474
    :goto_fc
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 475
    return-void
.end method

.method private setLuxForA20F()V
    .registers 5

    .line 776
    const/high16 v0, 0x41000000    # 8.0f

    .line 777
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_19

    .line 778
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3c380000    # -400.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_13d

    .line 779
    :cond_15
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_13d

    .line 780
    :cond_19
    cmpl-float v2, v1, v2

    const/high16 v3, 0x41b80000    # 23.0f

    if-lez v2, :cond_27

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_27

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_13d

    .line 781
    :cond_27
    cmpl-float v2, v1, v3

    const/high16 v3, 0x41f00000    # 30.0f

    if-lez v2, :cond_35

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_35

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_13d

    .line 782
    :cond_35
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42340000    # 45.0f

    if-lez v2, :cond_43

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_43

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_13d

    .line 783
    :cond_43
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42b40000    # 90.0f

    if-lez v2, :cond_51

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_51

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_13d

    .line 784
    :cond_51
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42d20000    # 105.0f

    if-lez v2, :cond_5f

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_5f

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_13d

    .line 785
    :cond_5f
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43160000    # 150.0f

    if-lez v2, :cond_6d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6d

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_13d

    .line 786
    :cond_6d
    cmpl-float v2, v1, v3

    const/high16 v3, 0x433e0000    # 190.0f

    if-lez v2, :cond_7b

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_7b

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_13d

    .line 787
    :cond_7b
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43660000    # 230.0f

    if-lez v2, :cond_8a

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_8a

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_13d

    .line 788
    :cond_8a
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43820000    # 260.0f

    if-lez v2, :cond_99

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_99

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_13d

    .line 789
    :cond_99
    cmpl-float v2, v1, v3

    const/high16 v3, 0x439b0000    # 310.0f

    if-lez v2, :cond_a8

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a8

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_13d

    .line 790
    :cond_a8
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43b90000    # 370.0f

    if-lez v2, :cond_b6

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b6

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_13d

    .line 791
    :cond_b6
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43d70000    # 430.0f

    if-lez v2, :cond_c5

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c5

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_13d

    .line 792
    :cond_c5
    cmpl-float v2, v1, v3

    const v3, 0x44098000    # 550.0f

    if-lez v2, :cond_d4

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_d4

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_13d

    .line 793
    :cond_d4
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44340000    # 720.0f

    if-lez v2, :cond_e2

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_e2

    const v0, 0x449f6000    # 1275.0f

    goto :goto_13d

    .line 794
    :cond_e2
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44610000    # 900.0f

    if-lez v2, :cond_f0

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f0

    const v0, 0x44d16000    # 1675.0f

    goto :goto_13d

    .line 795
    :cond_f0
    cmpl-float v2, v1, v3

    const v3, 0x44898000    # 1100.0f

    if-lez v2, :cond_ff

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_ff

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_13d

    .line 796
    :cond_ff
    cmpl-float v2, v1, v3

    const v3, 0x44988000    # 1220.0f

    if-lez v2, :cond_10e

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_10e

    const v0, 0x451f6000    # 2550.0f

    goto :goto_13d

    .line 797
    :cond_10e
    cmpl-float v2, v1, v3

    const v3, 0x44c58000    # 1580.0f

    if-lez v2, :cond_11d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_11d

    const v0, 0x4541c000    # 3100.0f

    goto :goto_13d

    .line 798
    :cond_11d
    cmpl-float v2, v1, v3

    const v3, 0x44ed8000    # 1900.0f

    if-lez v2, :cond_12c

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_12c

    const v0, 0x458b3000    # 4454.0f

    goto :goto_13d

    .line 799
    :cond_12c
    cmpl-float v2, v1, v3

    if-lez v2, :cond_13a

    const/high16 v2, 0x457a0000    # 4000.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_13a

    const v0, 0x4598f800    # 4895.0f

    goto :goto_13d

    .line 800
    :cond_13a
    const v0, 0x469c4000    # 20000.0f

    .line 801
    :goto_13d
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 802
    return-void
.end method

.method private setLuxForA305()V
    .registers 4

    .line 838
    const/high16 v0, 0x41000000    # 8.0f

    .line 839
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b1f0000    # -1800.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_c

    const/4 v0, 0x0

    goto :goto_32

    .line 840
    :cond_c
    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_15

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_32

    .line 841
    :cond_15
    const/high16 v2, -0x3bd10000    # -700.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1e

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_32

    .line 842
    :cond_1e
    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_27

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_32

    .line 843
    :cond_27
    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_30

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_32

    .line 844
    :cond_30
    const/high16 v0, 0x42c80000    # 100.0f

    .line 845
    :goto_32
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 846
    return-void
.end method

.method private setLuxForA307()V
    .registers 4

    .line 827
    const/high16 v0, 0x41000000    # 8.0f

    .line 828
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b5d8000    # -1300.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_33

    .line 829
    :cond_d
    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_16

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_33

    .line 830
    :cond_16
    const/high16 v2, -0x3bd10000    # -700.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1f

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_33

    .line 831
    :cond_1f
    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_28

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_33

    .line 832
    :cond_28
    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_31

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_33

    .line 833
    :cond_31
    const/high16 v0, 0x42c80000    # 100.0f

    .line 834
    :goto_33
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 835
    return-void
.end method

.method private setLuxForA30C()V
    .registers 5

    .line 426
    const/high16 v0, 0x41000000    # 8.0f

    .line 427
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_d

    const/4 v0, 0x0

    goto/16 :goto_127

    .line 428
    :cond_d
    cmpl-float v2, v1, v2

    const/high16 v3, 0x41f00000    # 30.0f

    if-lez v2, :cond_1b

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_1b

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_127

    .line 429
    :cond_1b
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42200000    # 40.0f

    if-lez v2, :cond_29

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_29

    const/high16 v0, 0x41900000    # 18.0f

    goto/16 :goto_127

    .line 430
    :cond_29
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42a00000    # 80.0f

    if-lez v2, :cond_37

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_37

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_127

    .line 431
    :cond_37
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42f00000    # 120.0f

    if-lez v2, :cond_45

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_45

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_127

    .line 432
    :cond_45
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43200000    # 160.0f

    if-lez v2, :cond_53

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_53

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_127

    .line 433
    :cond_53
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43480000    # 200.0f

    if-lez v2, :cond_61

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_61

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_127

    .line 434
    :cond_61
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43700000    # 240.0f

    if-lez v2, :cond_70

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_70

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_127

    .line 435
    :cond_70
    cmpl-float v2, v1, v3

    const/high16 v3, 0x438c0000    # 280.0f

    if-lez v2, :cond_7f

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_7f

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_127

    .line 436
    :cond_7f
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43a50000    # 330.0f

    if-lez v2, :cond_8e

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_8e

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_127

    .line 437
    :cond_8e
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43c30000    # 390.0f

    if-lez v2, :cond_9c

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_9c

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_127

    .line 438
    :cond_9c
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43e10000    # 450.0f

    if-lez v2, :cond_ab

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_ab

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_127

    .line 439
    :cond_ab
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44110000    # 580.0f

    if-lez v2, :cond_b9

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b9

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_127

    .line 440
    :cond_b9
    cmpl-float v2, v1, v3

    const/high16 v3, 0x443e0000    # 760.0f

    if-lez v2, :cond_c7

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c7

    const v0, 0x449f6000    # 1275.0f

    goto :goto_127

    .line 441
    :cond_c7
    cmpl-float v2, v1, v3

    const v3, 0x44688000    # 930.0f

    if-lez v2, :cond_d6

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_d6

    const v0, 0x44d16000    # 1675.0f

    goto :goto_127

    .line 442
    :cond_d6
    cmpl-float v2, v1, v3

    const v3, 0x448fc000    # 1150.0f

    if-lez v2, :cond_e5

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_e5

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_127

    .line 443
    :cond_e5
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44b40000    # 1440.0f

    if-lez v2, :cond_f3

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f3

    const v0, 0x451f6000    # 2550.0f

    goto :goto_127

    .line 444
    :cond_f3
    cmpl-float v2, v1, v3

    const v3, 0x44ed8000    # 1900.0f

    if-lez v2, :cond_102

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_102

    const v0, 0x4541c000    # 3100.0f

    goto :goto_127

    .line 445
    :cond_102
    cmpl-float v2, v1, v3

    const v3, 0x4511a000    # 2330.0f

    if-lez v2, :cond_111

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_111

    const v0, 0x458b3000    # 4454.0f

    goto :goto_127

    .line 446
    :cond_111
    cmpl-float v2, v1, v3

    const v3, 0x453b8000    # 3000.0f

    if-lez v2, :cond_120

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_120

    const v0, 0x4598f800    # 4895.0f

    goto :goto_127

    .line 447
    :cond_120
    cmpl-float v1, v1, v3

    if-lez v1, :cond_127

    const v0, 0x469c4000    # 20000.0f

    .line 449
    :cond_127
    :goto_127
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 450
    return-void
.end method

.method private setLuxForA31()V
    .registers 4

    .line 970
    const/high16 v0, 0x41000000    # 8.0f

    .line 971
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b308000    # -1660.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_35

    .line 972
    :cond_d
    const/high16 v2, -0x3b6a0000    # -1200.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_16

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_35

    .line 973
    :cond_16
    const v2, -0x3b7cc000    # -1050.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_20

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_35

    .line 974
    :cond_20
    const v2, -0x3bfb8000    # -530.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2a

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_35

    .line 975
    :cond_2a
    const/high16 v2, 0x43af0000    # 350.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_33

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_35

    .line 976
    :cond_33
    const/high16 v0, 0x42c80000    # 100.0f

    .line 977
    :goto_35
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 978
    return-void
.end method

.method private setLuxForA405()V
    .registers 4

    .line 805
    const/high16 v0, 0x41000000    # 8.0f

    .line 806
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b1f0000    # -1800.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_c

    const/4 v0, 0x0

    goto :goto_32

    .line 807
    :cond_c
    const/high16 v2, -0x3b380000    # -1600.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_15

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_32

    .line 808
    :cond_15
    const/high16 v2, -0x3b510000    # -1400.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1e

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_32

    .line 809
    :cond_1e
    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_27

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_32

    .line 810
    :cond_27
    const/high16 v2, -0x3c060000    # -500.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_30

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_32

    .line 811
    :cond_30
    const/high16 v0, 0x42c80000    # 100.0f

    .line 812
    :goto_32
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 813
    return-void
.end method

.method private setLuxForA41()V
    .registers 4

    .line 816
    const/high16 v0, 0x41000000    # 8.0f

    .line 817
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b9f0000    # -900.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_c

    const/4 v0, 0x0

    goto :goto_31

    .line 818
    :cond_c
    const/high16 v2, -0x3c6a0000    # -300.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_15

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_31

    .line 819
    :cond_15
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1d

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_31

    .line 820
    :cond_1d
    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_26

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_31

    .line 821
    :cond_26
    const/high16 v2, 0x44160000    # 600.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2f

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_31

    .line 822
    :cond_2f
    const/high16 v0, 0x42c80000    # 100.0f

    .line 823
    :goto_31
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 824
    return-void
.end method

.method private setLuxForA50()V
    .registers 4

    .line 959
    const/high16 v0, 0x41000000    # 8.0f

    .line 960
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b2b8000    # -1700.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_33

    .line 961
    :cond_d
    const/high16 v2, -0x3b380000    # -1600.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_16

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_33

    .line 962
    :cond_16
    const/high16 v2, -0x3b510000    # -1400.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1f

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_33

    .line 963
    :cond_1f
    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_28

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_33

    .line 964
    :cond_28
    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_31

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_33

    .line 965
    :cond_31
    const/high16 v0, 0x42c80000    # 100.0f

    .line 966
    :goto_33
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 967
    return-void
.end method

.method private setLuxForA507()V
    .registers 4

    .line 849
    const/high16 v0, 0x41000000    # 8.0f

    .line 850
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3af68000    # -2200.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_33

    .line 851
    :cond_d
    const/high16 v2, -0x3b380000    # -1600.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_16

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_33

    .line 852
    :cond_16
    const/high16 v2, -0x3b510000    # -1400.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1f

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_33

    .line 853
    :cond_1f
    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_28

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_33

    .line 854
    :cond_28
    const/high16 v2, -0x3c060000    # -500.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_31

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_33

    .line 855
    :cond_31
    const/high16 v0, 0x42c80000    # 100.0f

    .line 856
    :goto_33
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 857
    return-void
.end method

.method private setLuxForA515()V
    .registers 4

    .line 860
    const/high16 v0, 0x41000000    # 8.0f

    .line 861
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b128000    # -1900.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_35

    .line 862
    :cond_d
    const v2, -0x3b5d8000    # -1300.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_17

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_35

    .line 863
    :cond_17
    const v2, -0x3b768000    # -1100.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_21

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_35

    .line 864
    :cond_21
    const/high16 v2, -0x3bd10000    # -700.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2a

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_35

    .line 865
    :cond_2a
    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_33

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_35

    .line 866
    :cond_33
    const/high16 v0, 0x42c80000    # 100.0f

    .line 867
    :goto_35
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 868
    return-void
.end method

.method private setLuxForA516()V
    .registers 4

    .line 871
    const/high16 v0, 0x41000000    # 8.0f

    .line 872
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3aea0000    # -2400.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_c

    const/4 v0, 0x0

    goto :goto_34

    .line 873
    :cond_c
    const v2, -0x3b448000    # -1500.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_16

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_34

    .line 874
    :cond_16
    const/high16 v2, -0x3b6a0000    # -1200.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1f

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_34

    .line 875
    :cond_1f
    const v2, -0x3bf68000    # -550.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_29

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_34

    .line 876
    :cond_29
    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_32

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_34

    .line 877
    :cond_32
    const/high16 v0, 0x42c80000    # 100.0f

    .line 878
    :goto_34
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 879
    return-void
.end method

.method private setLuxForA60C()V
    .registers 5

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41800000    # 16.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_13b

    .line 511
    :cond_c
    cmpl-float v2, v1, v2

    const/high16 v3, 0x42040000    # 33.0f

    if-lez v2, :cond_39

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_39

    .line 512
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3d380000    # -100.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_22

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_13b

    .line 513
    :cond_22
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2b

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_13b

    .line 514
    :cond_2b
    const/high16 v2, 0x430c0000    # 140.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_35

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_13b

    .line 515
    :cond_35
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_13b

    .line 516
    :cond_39
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42480000    # 50.0f

    if-lez v2, :cond_47

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_47

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_13b

    .line 517
    :cond_47
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43020000    # 130.0f

    if-lez v2, :cond_55

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_55

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_13b

    .line 518
    :cond_55
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43340000    # 180.0f

    if-lez v2, :cond_63

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_63

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_13b

    .line 519
    :cond_63
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43660000    # 230.0f

    if-lez v2, :cond_71

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_71

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_13b

    .line 520
    :cond_71
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43870000    # 270.0f

    if-lez v2, :cond_80

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_80

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_13b

    .line 521
    :cond_80
    cmpl-float v2, v1, v3

    const v3, 0x439d8000    # 315.0f

    if-lez v2, :cond_90

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_90

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_13b

    .line 522
    :cond_90
    cmpl-float v2, v1, v3

    const v3, 0x43c08000    # 385.0f

    if-lez v2, :cond_a0

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a0

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_13b

    .line 523
    :cond_a0
    cmpl-float v2, v1, v3

    const v3, 0x43d98000    # 435.0f

    if-lez v2, :cond_af

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_af

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_13b

    .line 524
    :cond_af
    cmpl-float v2, v1, v3

    const v3, 0x43f78000    # 495.0f

    if-lez v2, :cond_bf

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_bf

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_13b

    .line 525
    :cond_bf
    cmpl-float v2, v1, v3

    const v3, 0x441d8000    # 630.0f

    if-lez v2, :cond_ce

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_ce

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_13b

    .line 526
    :cond_ce
    cmpl-float v2, v1, v3

    const v3, 0x44534000    # 845.0f

    if-lez v2, :cond_dd

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_dd

    const v0, 0x449f6000    # 1275.0f

    goto :goto_13b

    .line 527
    :cond_dd
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44820000    # 1040.0f

    if-lez v2, :cond_eb

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_eb

    const v0, 0x44d16000    # 1675.0f

    goto :goto_13b

    .line 528
    :cond_eb
    cmpl-float v2, v1, v3

    const v3, 0x44a28000    # 1300.0f

    if-lez v2, :cond_fa

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_fa

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_13b

    .line 529
    :cond_fa
    cmpl-float v2, v1, v3

    const v3, 0x44ce4000    # 1650.0f

    if-lez v2, :cond_109

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_109

    const v0, 0x451f6000    # 2550.0f

    goto :goto_13b

    .line 530
    :cond_109
    cmpl-float v2, v1, v3

    const/high16 v3, 0x450c0000    # 2240.0f

    if-lez v2, :cond_117

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_117

    const v0, 0x4541c000    # 3100.0f

    goto :goto_13b

    .line 531
    :cond_117
    cmpl-float v2, v1, v3

    const v3, 0x452be000    # 2750.0f

    if-lez v2, :cond_126

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_126

    const v0, 0x458b3000    # 4454.0f

    goto :goto_13b

    .line 532
    :cond_126
    cmpl-float v2, v1, v3

    const/high16 v3, 0x45480000    # 3200.0f

    if-lez v2, :cond_134

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_134

    const v0, 0x4598f800    # 4895.0f

    goto :goto_13b

    .line 533
    :cond_134
    cmpl-float v1, v1, v3

    if-lez v1, :cond_13b

    const v0, 0x469c4000    # 20000.0f

    .line 535
    :cond_13b
    :goto_13b
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 536
    return-void
.end method

.method private setLuxForA70()V
    .registers 4

    .line 904
    const/high16 v0, 0x41000000    # 8.0f

    .line 905
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b448000    # -1500.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_33

    .line 906
    :cond_d
    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_16

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_33

    .line 907
    :cond_16
    const/high16 v2, -0x3bd10000    # -700.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1f

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_33

    .line 908
    :cond_1f
    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_28

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_33

    .line 909
    :cond_28
    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_31

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_33

    .line 910
    :cond_31
    const/high16 v0, 0x42c80000    # 100.0f

    .line 911
    :goto_33
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 912
    return-void
.end method

.method private setLuxForA71()V
    .registers 4

    .line 882
    const/high16 v0, 0x41000000    # 8.0f

    .line 883
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b128000    # -1900.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_34

    .line 884
    :cond_d
    const v2, -0x3b768000    # -1100.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_17

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_34

    .line 885
    :cond_17
    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_20

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_34

    .line 886
    :cond_20
    const/high16 v2, -0x3bea0000    # -600.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_29

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_34

    .line 887
    :cond_29
    const/high16 v2, -0x3ee00000    # -10.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_32

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_34

    .line 888
    :cond_32
    const/high16 v0, 0x42c80000    # 100.0f

    .line 889
    :goto_34
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 890
    return-void
.end method

.method private setLuxForA71U()V
    .registers 4

    .line 893
    const/high16 v0, 0x41000000    # 8.0f

    .line 894
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3afcc000    # -2100.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_33

    .line 895
    :cond_d
    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_16

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_33

    .line 896
    :cond_16
    const/high16 v2, -0x3bea0000    # -600.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1f

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_33

    .line 897
    :cond_1f
    const/high16 v2, -0x3c380000    # -400.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_28

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_33

    .line 898
    :cond_28
    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_31

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_33

    .line 899
    :cond_31
    const/high16 v0, 0x42c80000    # 100.0f

    .line 900
    :goto_33
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 901
    return-void
.end method

.method private setLuxForA908()V
    .registers 4

    .line 926
    const/high16 v0, 0x41000000    # 8.0f

    .line 927
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b448000    # -1500.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_d

    const/4 v0, 0x0

    goto :goto_33

    .line 928
    :cond_d
    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_16

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_33

    .line 929
    :cond_16
    const/high16 v2, -0x3bd10000    # -700.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1f

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_33

    .line 930
    :cond_1f
    const/high16 v2, -0x3cb80000    # -200.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_28

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_33

    .line 931
    :cond_28
    const/high16 v2, 0x43480000    # 200.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_31

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_33

    .line 932
    :cond_31
    const/high16 v0, 0x42c80000    # 100.0f

    .line 933
    :goto_33
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 934
    return-void
.end method

.method private setLuxForG770()V
    .registers 4

    .line 915
    const/high16 v0, 0x41000000    # 8.0f

    .line 916
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b1a0000    # -1840.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_c

    const/4 v0, 0x0

    goto :goto_32

    .line 917
    :cond_c
    const/high16 v2, -0x3b600000    # -1280.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_15

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_32

    .line 918
    :cond_15
    const/high16 v2, -0x3b860000    # -1000.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1e

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_32

    .line 919
    :cond_1e
    const/high16 v2, -0x3c010000    # -510.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_27

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_32

    .line 920
    :cond_27
    const/high16 v2, -0x3e600000    # -20.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_30

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_32

    .line 921
    :cond_30
    const/high16 v0, 0x42c80000    # 100.0f

    .line 922
    :goto_32
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 923
    return-void
.end method

.method private setLuxForJ600()V
    .registers 5

    .line 745
    const/high16 v0, 0x41000000    # 8.0f

    .line 746
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41e80000    # 29.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_41

    .line 747
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b060000    # -2000.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_143

    .line 748
    :cond_15
    const/high16 v2, -0x3cfd0000    # -131.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1f

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_143

    .line 749
    :cond_1f
    const/high16 v2, 0x421c0000    # 39.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_29

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_143

    .line 750
    :cond_29
    const/high16 v2, 0x430c0000    # 140.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_33

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_143

    .line 751
    :cond_33
    const/high16 v2, 0x435c0000    # 220.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3d

    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_143

    .line 752
    :cond_3d
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_143

    .line 753
    :cond_41
    cmpl-float v2, v1, v2

    const/high16 v3, 0x42960000    # 75.0f

    if-lez v2, :cond_4f

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_4f

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_143

    .line 754
    :cond_4f
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43050000    # 133.0f

    if-lez v2, :cond_5d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_5d

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_143

    .line 755
    :cond_5d
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43410000    # 193.0f

    if-lez v2, :cond_6b

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6b

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_143

    .line 756
    :cond_6b
    cmpl-float v2, v1, v3

    const/high16 v3, 0x437a0000    # 250.0f

    if-lez v2, :cond_79

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_79

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_143

    .line 757
    :cond_79
    cmpl-float v2, v1, v3

    const v3, 0x43958000    # 299.0f

    if-lez v2, :cond_89

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_89

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_143

    .line 758
    :cond_89
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43ac0000    # 344.0f

    if-lez v2, :cond_98

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_98

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_143

    .line 759
    :cond_98
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43ce0000    # 412.0f

    if-lez v2, :cond_a7

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a7

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_143

    .line 760
    :cond_a7
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43f40000    # 488.0f

    if-lez v2, :cond_b5

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b5

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_143

    .line 761
    :cond_b5
    cmpl-float v2, v1, v3

    const v3, 0x4415c000    # 599.0f

    if-lez v2, :cond_c5

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c5

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_143

    .line 762
    :cond_c5
    cmpl-float v2, v1, v3

    const v3, 0x44314000    # 709.0f

    if-lez v2, :cond_d4

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_d4

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_143

    .line 763
    :cond_d4
    cmpl-float v2, v1, v3

    const v3, 0x446e8000    # 954.0f

    if-lez v2, :cond_e3

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_e3

    const v0, 0x449f6000    # 1275.0f

    goto :goto_143

    .line 764
    :cond_e3
    cmpl-float v2, v1, v3

    const v3, 0x44922000    # 1169.0f

    if-lez v2, :cond_f2

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f2

    const v0, 0x44d16000    # 1675.0f

    goto :goto_143

    .line 765
    :cond_f2
    cmpl-float v2, v1, v3

    const v3, 0x44b52000    # 1449.0f

    if-lez v2, :cond_101

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_101

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_143

    .line 766
    :cond_101
    cmpl-float v2, v1, v3

    const v3, 0x44e44000    # 1826.0f

    if-lez v2, :cond_110

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_110

    const v0, 0x451f6000    # 2550.0f

    goto :goto_143

    .line 767
    :cond_110
    cmpl-float v2, v1, v3

    const/high16 v3, 0x45170000    # 2416.0f

    if-lez v2, :cond_11e

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_11e

    const v0, 0x4541c000    # 3100.0f

    goto :goto_143

    .line 768
    :cond_11e
    cmpl-float v2, v1, v3

    const v3, 0x4539e000    # 2974.0f

    if-lez v2, :cond_12d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_12d

    const v0, 0x458b3000    # 4454.0f

    goto :goto_143

    .line 769
    :cond_12d
    cmpl-float v2, v1, v3

    const v3, 0x46485000    # 12820.0f

    if-lez v2, :cond_13c

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_13c

    const v0, 0x4598f800    # 4895.0f

    goto :goto_143

    .line 770
    :cond_13c
    cmpl-float v1, v1, v3

    if-lez v1, :cond_143

    const v0, 0x469c4000    # 20000.0f

    .line 772
    :cond_143
    :goto_143
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 773
    return-void
.end method

.method private setLuxForM10()V
    .registers 5

    .line 599
    const/high16 v0, 0x41000000    # 8.0f

    .line 600
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_2d

    .line 601
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3f700000    # -4.5f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_122

    .line 602
    :cond_15
    const/high16 v2, -0x3fe00000    # -2.5f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1f

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_122

    .line 603
    :cond_1f
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_29

    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_122

    .line 604
    :cond_29
    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_122

    .line 605
    :cond_2d
    cmpl-float v2, v1, v2

    const/high16 v3, 0x41a80000    # 21.0f

    if-lez v2, :cond_3b

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_3b

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_122

    .line 606
    :cond_3b
    cmpl-float v2, v1, v3

    const/high16 v3, 0x41f00000    # 30.0f

    if-lez v2, :cond_49

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_49

    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_122

    .line 607
    :cond_49
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42200000    # 40.0f

    if-lez v2, :cond_57

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_57

    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_122

    .line 608
    :cond_57
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42b40000    # 90.0f

    if-lez v2, :cond_65

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_65

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_122

    .line 609
    :cond_65
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42d20000    # 105.0f

    if-lez v2, :cond_73

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_73

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_122

    .line 610
    :cond_73
    cmpl-float v2, v1, v3

    const/high16 v3, 0x430c0000    # 140.0f

    if-lez v2, :cond_81

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_81

    const/high16 v0, 0x43430000    # 195.0f

    goto/16 :goto_122

    .line 611
    :cond_81
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43340000    # 180.0f

    if-lez v2, :cond_8f

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_8f

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_122

    .line 612
    :cond_8f
    cmpl-float v2, v1, v3

    const/high16 v3, 0x435c0000    # 220.0f

    if-lez v2, :cond_9e

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_9e

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_122

    .line 613
    :cond_9e
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43870000    # 270.0f

    if-lez v2, :cond_ad

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_ad

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_122

    .line 614
    :cond_ad
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43a00000    # 320.0f

    if-lez v2, :cond_bb

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_bb

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_122

    .line 615
    :cond_bb
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43b40000    # 360.0f

    if-lez v2, :cond_c9

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c9

    const v0, 0x44108000    # 578.0f

    goto :goto_122

    .line 616
    :cond_c9
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43cd0000    # 410.0f

    if-lez v2, :cond_d6

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_d6

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_122

    .line 617
    :cond_d6
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43e60000    # 460.0f

    if-lez v2, :cond_e4

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_e4

    const v0, 0x44408000    # 770.0f

    goto :goto_122

    .line 618
    :cond_e4
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44070000    # 540.0f

    if-lez v2, :cond_f2

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f2

    const v0, 0x44598000    # 870.0f

    goto :goto_122

    .line 619
    :cond_f2
    cmpl-float v2, v1, v3

    const v3, 0x44188000    # 610.0f

    if-lez v2, :cond_100

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_100

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_122

    .line 620
    :cond_100
    cmpl-float v2, v1, v3

    const/high16 v3, 0x442f0000    # 700.0f

    if-lez v2, :cond_10e

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_10e

    const v0, 0x448c4000    # 1122.0f

    goto :goto_122

    .line 621
    :cond_10e
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44480000    # 800.0f

    if-lez v2, :cond_11c

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_11c

    const v0, 0x449d2000    # 1257.0f

    goto :goto_122

    .line 622
    :cond_11c
    cmpl-float v1, v1, v3

    if-lez v1, :cond_122

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 624
    :cond_122
    :goto_122
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 625
    return-void
.end method

.method private setLuxForM105M()V
    .registers 5

    .line 628
    const/high16 v0, 0x41000000    # 8.0f

    .line 629
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_22

    .line 630
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3fc00000    # -3.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_119

    .line 631
    :cond_15
    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1e

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_119

    .line 632
    :cond_1e
    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_119

    .line 633
    :cond_22
    cmpl-float v2, v1, v2

    const/high16 v3, 0x41a80000    # 21.0f

    if-lez v2, :cond_30

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_30

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_119

    .line 634
    :cond_30
    cmpl-float v2, v1, v3

    const/high16 v3, 0x41f80000    # 31.0f

    if-lez v2, :cond_3e

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_3e

    const/high16 v0, 0x41100000    # 9.0f

    goto/16 :goto_119

    .line 635
    :cond_3e
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42240000    # 41.0f

    if-lez v2, :cond_4c

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_4c

    const/high16 v0, 0x41500000    # 13.0f

    goto/16 :goto_119

    .line 636
    :cond_4c
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    if-lez v2, :cond_5a

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_5a

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_119

    .line 637
    :cond_5a
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42f20000    # 121.0f

    if-lez v2, :cond_68

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_68

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_119

    .line 638
    :cond_68
    cmpl-float v2, v1, v3

    const/high16 v3, 0x430c0000    # 140.0f

    if-lez v2, :cond_76

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_76

    const/high16 v0, 0x43430000    # 195.0f

    goto/16 :goto_119

    .line 639
    :cond_76
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43340000    # 180.0f

    if-lez v2, :cond_84

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_84

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_119

    .line 640
    :cond_84
    cmpl-float v2, v1, v3

    const/high16 v3, 0x435c0000    # 220.0f

    if-lez v2, :cond_93

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_93

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_119

    .line 641
    :cond_93
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43870000    # 270.0f

    if-lez v2, :cond_a2

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a2

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_119

    .line 642
    :cond_a2
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43a00000    # 320.0f

    if-lez v2, :cond_b0

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b0

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_119

    .line 643
    :cond_b0
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43b90000    # 370.0f

    if-lez v2, :cond_be

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_be

    const v0, 0x44108000    # 578.0f

    goto :goto_119

    .line 644
    :cond_be
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43d70000    # 430.0f

    if-lez v2, :cond_cb

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_cb

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_119

    .line 645
    :cond_cb
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43f00000    # 480.0f

    if-lez v2, :cond_d9

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_d9

    const v0, 0x44408000    # 770.0f

    goto :goto_119

    .line 646
    :cond_d9
    cmpl-float v2, v1, v3

    const v3, 0x44048000    # 530.0f

    if-lez v2, :cond_e8

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_e8

    const v0, 0x44598000    # 870.0f

    goto :goto_119

    .line 647
    :cond_e8
    cmpl-float v2, v1, v3

    const v3, 0x441d8000    # 630.0f

    if-lez v2, :cond_f6

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f6

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_119

    .line 648
    :cond_f6
    cmpl-float v2, v1, v3

    const/high16 v3, 0x442f0000    # 700.0f

    if-lez v2, :cond_104

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_104

    const v0, 0x448c4000    # 1122.0f

    goto :goto_119

    .line 649
    :cond_104
    cmpl-float v2, v1, v3

    const v3, 0x4445c000    # 791.0f

    if-lez v2, :cond_113

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_113

    const v0, 0x449d2000    # 1257.0f

    goto :goto_119

    .line 650
    :cond_113
    cmpl-float v1, v1, v3

    if-lez v1, :cond_119

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 652
    :cond_119
    :goto_119
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 653
    return-void
.end method

.method private setLuxForM205F()V
    .registers 5

    .line 656
    const/high16 v0, 0x41000000    # 8.0f

    .line 657
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_19

    .line 658
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3f200000    # -7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_10d

    .line 659
    :cond_15
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_10d

    .line 660
    :cond_19
    cmpl-float v2, v1, v2

    const/high16 v3, 0x41a00000    # 20.0f

    if-lez v2, :cond_27

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_27

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_10d

    .line 661
    :cond_27
    cmpl-float v2, v1, v3

    const/high16 v3, 0x41f00000    # 30.0f

    if-lez v2, :cond_35

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_35

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_10d

    .line 662
    :cond_35
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42440000    # 49.0f

    if-lez v2, :cond_43

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_43

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_10d

    .line 663
    :cond_43
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42b40000    # 90.0f

    if-lez v2, :cond_51

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_51

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_10d

    .line 664
    :cond_51
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    if-lez v2, :cond_5f

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_5f

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_10d

    .line 665
    :cond_5f
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43160000    # 150.0f

    if-lez v2, :cond_6d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6d

    const/high16 v0, 0x43430000    # 195.0f

    goto/16 :goto_10d

    .line 666
    :cond_6d
    cmpl-float v2, v1, v3

    const/high16 v3, 0x433e0000    # 190.0f

    if-lez v2, :cond_7b

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_7b

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_10d

    .line 667
    :cond_7b
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43660000    # 230.0f

    if-lez v2, :cond_8a

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_8a

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_10d

    .line 668
    :cond_8a
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43870000    # 270.0f

    if-lez v2, :cond_99

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_99

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_10d

    .line 669
    :cond_99
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43a00000    # 320.0f

    if-lez v2, :cond_a7

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a7

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_10d

    .line 670
    :cond_a7
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43be0000    # 380.0f

    if-lez v2, :cond_b5

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b5

    const v0, 0x44108000    # 578.0f

    goto :goto_10d

    .line 671
    :cond_b5
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43dc0000    # 440.0f

    if-lez v2, :cond_c2

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c2

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_10d

    .line 672
    :cond_c2
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43fa0000    # 500.0f

    if-lez v2, :cond_d0

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_d0

    const v0, 0x44408000    # 770.0f

    goto :goto_10d

    .line 673
    :cond_d0
    cmpl-float v2, v1, v3

    const/high16 v3, 0x440c0000    # 560.0f

    if-lez v2, :cond_de

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_de

    const v0, 0x44598000    # 870.0f

    goto :goto_10d

    .line 674
    :cond_de
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44200000    # 640.0f

    if-lez v2, :cond_eb

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_eb

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_10d

    .line 675
    :cond_eb
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44340000    # 720.0f

    if-lez v2, :cond_f9

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f9

    const v0, 0x448c4000    # 1122.0f

    goto :goto_10d

    .line 676
    :cond_f9
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44480000    # 800.0f

    if-lez v2, :cond_107

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_107

    const v0, 0x449d2000    # 1257.0f

    goto :goto_10d

    .line 677
    :cond_107
    cmpl-float v1, v1, v3

    if-lez v1, :cond_10d

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 679
    :cond_10d
    :goto_10d
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 680
    return-void
.end method

.method private setLuxForM205M()V
    .registers 5

    .line 683
    const/high16 v0, 0x41000000    # 8.0f

    .line 684
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_19

    .line 685
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3f200000    # -7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_113

    .line 686
    :cond_15
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_113

    .line 687
    :cond_19
    cmpl-float v2, v1, v2

    const/high16 v3, 0x41a00000    # 20.0f

    if-lez v2, :cond_27

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_27

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_113

    .line 688
    :cond_27
    cmpl-float v2, v1, v3

    const/high16 v3, 0x41e80000    # 29.0f

    if-lez v2, :cond_35

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_35

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_113

    .line 689
    :cond_35
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42440000    # 49.0f

    if-lez v2, :cond_43

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_43

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_113

    .line 690
    :cond_43
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    if-lez v2, :cond_51

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_51

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_113

    .line 691
    :cond_51
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42f00000    # 120.0f

    if-lez v2, :cond_5f

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_5f

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_113

    .line 692
    :cond_5f
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43120000    # 146.0f

    if-lez v2, :cond_6d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6d

    const/high16 v0, 0x43430000    # 195.0f

    goto/16 :goto_113

    .line 693
    :cond_6d
    cmpl-float v2, v1, v3

    const/high16 v3, 0x433a0000    # 186.0f

    if-lez v2, :cond_7b

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_7b

    const/high16 v0, 0x43830000    # 262.0f

    goto/16 :goto_113

    .line 694
    :cond_7b
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43620000    # 226.0f

    if-lez v2, :cond_8a

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_8a

    const v0, 0x43a68000    # 333.0f

    goto/16 :goto_113

    .line 695
    :cond_8a
    cmpl-float v2, v1, v3

    const v3, 0x43898000    # 275.0f

    if-lez v2, :cond_9a

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_9a

    const v0, 0x43c98000    # 403.0f

    goto/16 :goto_113

    .line 696
    :cond_9a
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43a20000    # 324.0f

    if-lez v2, :cond_a8

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a8

    const/high16 v0, 0x43f50000    # 490.0f

    goto/16 :goto_113

    .line 697
    :cond_a8
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43bb0000    # 374.0f

    if-lez v2, :cond_b6

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b6

    const v0, 0x44108000    # 578.0f

    goto :goto_113

    .line 698
    :cond_b6
    cmpl-float v2, v1, v3

    const v3, 0x43d78000    # 431.0f

    if-lez v2, :cond_c4

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c4

    const/high16 v0, 0x44260000    # 664.0f

    goto :goto_113

    .line 699
    :cond_c4
    cmpl-float v2, v1, v3

    const v3, 0x43f48000    # 489.0f

    if-lez v2, :cond_d3

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_d3

    const v0, 0x44408000    # 770.0f

    goto :goto_113

    .line 700
    :cond_d3
    cmpl-float v2, v1, v3

    const v3, 0x44098000    # 550.0f

    if-lez v2, :cond_e2

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_e2

    const v0, 0x44598000    # 870.0f

    goto :goto_113

    .line 701
    :cond_e2
    cmpl-float v2, v1, v3

    const v3, 0x441d4000    # 629.0f

    if-lez v2, :cond_f0

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f0

    const/high16 v0, 0x44740000    # 976.0f

    goto :goto_113

    .line 702
    :cond_f0
    cmpl-float v2, v1, v3

    const v3, 0x442f8000    # 702.0f

    if-lez v2, :cond_ff

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_ff

    const v0, 0x448c4000    # 1122.0f

    goto :goto_113

    .line 703
    :cond_ff
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44450000    # 788.0f

    if-lez v2, :cond_10d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_10d

    const v0, 0x449d2000    # 1257.0f

    goto :goto_113

    .line 704
    :cond_10d
    cmpl-float v1, v1, v3

    if-lez v1, :cond_113

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 706
    :cond_113
    :goto_113
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 707
    return-void
.end method

.method private setLuxForM30()V
    .registers 6

    .line 539
    const/high16 v0, 0x41000000    # 8.0f

    .line 540
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_19

    .line 541
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3f200000    # -7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_14a

    .line 542
    :cond_15
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_14a

    .line 543
    :cond_19
    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v4, v1, v3

    if-nez v4, :cond_32

    .line 544
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2a

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_14a

    .line 545
    :cond_2a
    cmpl-float v1, v1, v2

    if-ltz v1, :cond_14a

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_14a

    .line 546
    :cond_32
    cmpl-float v2, v1, v2

    if-lez v2, :cond_3e

    cmpg-float v2, v1, v3

    if-gez v2, :cond_3e

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_14a

    .line 547
    :cond_3e
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42200000    # 40.0f

    if-lez v2, :cond_4c

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_4c

    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_14a

    .line 548
    :cond_4c
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42480000    # 50.0f

    if-lez v2, :cond_5a

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_5a

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_14a

    .line 549
    :cond_5a
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    if-lez v2, :cond_68

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_68

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_14a

    .line 550
    :cond_68
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43870000    # 270.0f

    if-lez v2, :cond_76

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_76

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_14a

    .line 551
    :cond_76
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43aa0000    # 340.0f

    if-lez v2, :cond_84

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_84

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_14a

    .line 552
    :cond_84
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43cd0000    # 410.0f

    if-lez v2, :cond_93

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_93

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_14a

    .line 553
    :cond_93
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43f00000    # 480.0f

    if-lez v2, :cond_a2

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a2

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_14a

    .line 554
    :cond_a2
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44110000    # 580.0f

    if-lez v2, :cond_b1

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b1

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_14a

    .line 555
    :cond_b1
    cmpl-float v2, v1, v3

    const/high16 v3, 0x442a0000    # 680.0f

    if-lez v2, :cond_bf

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_bf

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_14a

    .line 556
    :cond_bf
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44430000    # 780.0f

    if-lez v2, :cond_ce

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_ce

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_14a

    .line 557
    :cond_ce
    cmpl-float v2, v1, v3

    const/high16 v3, 0x445c0000    # 880.0f

    if-lez v2, :cond_dc

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_dc

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_14a

    .line 558
    :cond_dc
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44af0000    # 1400.0f

    if-lez v2, :cond_ea

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_ea

    const v0, 0x449f6000    # 1275.0f

    goto :goto_14a

    .line 559
    :cond_ea
    cmpl-float v2, v1, v3

    const v3, 0x44d48000    # 1700.0f

    if-lez v2, :cond_f9

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f9

    const v0, 0x44d16000    # 1675.0f

    goto :goto_14a

    .line 560
    :cond_f9
    cmpl-float v2, v1, v3

    const v3, 0x45098000    # 2200.0f

    if-lez v2, :cond_108

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_108

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_14a

    .line 561
    :cond_108
    cmpl-float v2, v1, v3

    const v3, 0x45228000    # 2600.0f

    if-lez v2, :cond_117

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_117

    const v0, 0x451f6000    # 2550.0f

    goto :goto_14a

    .line 562
    :cond_117
    cmpl-float v2, v1, v3

    const v3, 0x45548000    # 3400.0f

    if-lez v2, :cond_126

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_126

    const v0, 0x4541c000    # 3100.0f

    goto :goto_14a

    .line 563
    :cond_126
    cmpl-float v2, v1, v3

    const v3, 0x456d8000    # 3800.0f

    if-lez v2, :cond_135

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_135

    const v0, 0x458b3000    # 4454.0f

    goto :goto_14a

    .line 564
    :cond_135
    cmpl-float v2, v1, v3

    const/high16 v3, 0x457a0000    # 4000.0f

    if-lez v2, :cond_143

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_143

    const v0, 0x4598f800    # 4895.0f

    goto :goto_14a

    .line 565
    :cond_143
    cmpl-float v1, v1, v3

    if-lez v1, :cond_14a

    const v0, 0x469c4000    # 20000.0f

    .line 567
    :cond_14a
    :goto_14a
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 568
    return-void
.end method

.method private setLuxForM305M()V
    .registers 6

    .line 571
    const/high16 v0, 0x41000000    # 8.0f

    .line 572
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_19

    .line 573
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3f800000    # -4.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_11b

    .line 574
    :cond_15
    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_11b

    .line 575
    :cond_19
    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v4, v1, v3

    if-nez v4, :cond_32

    .line 576
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2a

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_11b

    .line 577
    :cond_2a
    cmpl-float v1, v1, v2

    if-ltz v1, :cond_11b

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_11b

    .line 578
    :cond_32
    cmpl-float v2, v1, v2

    if-lez v2, :cond_3e

    cmpg-float v2, v1, v3

    if-gez v2, :cond_3e

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_11b

    .line 579
    :cond_3e
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42200000    # 40.0f

    if-lez v2, :cond_4c

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_4c

    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_11b

    .line 580
    :cond_4c
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42700000    # 60.0f

    if-lez v2, :cond_5a

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_5a

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_11b

    .line 581
    :cond_5a
    cmpl-float v2, v1, v3

    if-lez v2, :cond_68

    const/high16 v2, 0x42f00000    # 120.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_68

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_11b

    .line 582
    :cond_68
    const/high16 v2, 0x42dc0000    # 110.0f

    cmpl-float v2, v1, v2

    const/high16 v3, 0x43480000    # 200.0f

    if-lez v2, :cond_78

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_78

    const/high16 v0, 0x43070000    # 135.0f

    goto/16 :goto_11b

    .line 583
    :cond_78
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43910000    # 290.0f

    if-lez v2, :cond_86

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_86

    const/high16 v0, 0x43750000    # 245.0f

    goto/16 :goto_11b

    .line 584
    :cond_86
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43be0000    # 380.0f

    if-lez v2, :cond_95

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_95

    const v0, 0x43b18000    # 355.0f

    goto/16 :goto_11b

    .line 585
    :cond_95
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43eb0000    # 470.0f

    if-lez v2, :cond_a4

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a4

    const v0, 0x43e88000    # 465.0f

    goto/16 :goto_11b

    .line 586
    :cond_a4
    cmpl-float v2, v1, v3

    const/high16 v3, 0x440c0000    # 560.0f

    if-lez v2, :cond_b3

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b3

    const v0, 0x440ec000    # 571.0f

    goto/16 :goto_11b

    .line 587
    :cond_b3
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44200000    # 640.0f

    if-lez v2, :cond_c1

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c1

    const v0, 0x442ac000    # 683.0f

    goto :goto_11b

    .line 588
    :cond_c1
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44340000    # 720.0f

    if-lez v2, :cond_cf

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_cf

    const v0, 0x44424000    # 777.0f

    goto :goto_11b

    .line 589
    :cond_cf
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44480000    # 800.0f

    if-lez v2, :cond_dc

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_dc

    const/high16 v0, 0x445b0000    # 876.0f

    goto :goto_11b

    .line 590
    :cond_dc
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44610000    # 900.0f

    if-lez v2, :cond_ea

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_ea

    const v0, 0x44748000    # 978.0f

    goto :goto_11b

    .line 591
    :cond_ea
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44750000    # 980.0f

    if-lez v2, :cond_f8

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f8

    const v0, 0x44858000    # 1068.0f

    goto :goto_11b

    .line 592
    :cond_f8
    cmpl-float v2, v1, v3

    const v3, 0x44848000    # 1060.0f

    if-lez v2, :cond_107

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_107

    const v0, 0x44924000    # 1170.0f

    goto :goto_11b

    .line 593
    :cond_107
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44910000    # 1160.0f

    if-lez v2, :cond_115

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_115

    const v0, 0x449f6000    # 1275.0f

    goto :goto_11b

    .line 594
    :cond_115
    cmpl-float v1, v1, v3

    if-lez v1, :cond_11b

    const/high16 v0, 0x44af0000    # 1400.0f

    .line 595
    :cond_11b
    :goto_11b
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 596
    return-void
.end method

.method private setLuxForM307()V
    .registers 5

    .line 714
    const/high16 v0, 0x41000000    # 8.0f

    .line 715
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41e80000    # 29.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_41

    .line 716
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b060000    # -2000.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_143

    .line 717
    :cond_15
    const/high16 v2, -0x3cfd0000    # -131.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1f

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_143

    .line 718
    :cond_1f
    const/high16 v2, 0x421c0000    # 39.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_29

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_143

    .line 719
    :cond_29
    const/high16 v2, 0x430c0000    # 140.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_33

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_143

    .line 720
    :cond_33
    const/high16 v2, 0x435c0000    # 220.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3d

    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_143

    .line 721
    :cond_3d
    const/high16 v0, 0x41200000    # 10.0f

    goto/16 :goto_143

    .line 722
    :cond_41
    cmpl-float v2, v1, v2

    const/high16 v3, 0x42960000    # 75.0f

    if-lez v2, :cond_4f

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_4f

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_143

    .line 723
    :cond_4f
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43050000    # 133.0f

    if-lez v2, :cond_5d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_5d

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_143

    .line 724
    :cond_5d
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43410000    # 193.0f

    if-lez v2, :cond_6b

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6b

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_143

    .line 725
    :cond_6b
    cmpl-float v2, v1, v3

    const/high16 v3, 0x437a0000    # 250.0f

    if-lez v2, :cond_79

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_79

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_143

    .line 726
    :cond_79
    cmpl-float v2, v1, v3

    const v3, 0x43958000    # 299.0f

    if-lez v2, :cond_89

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_89

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_143

    .line 727
    :cond_89
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43ac0000    # 344.0f

    if-lez v2, :cond_98

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_98

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_143

    .line 728
    :cond_98
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43ce0000    # 412.0f

    if-lez v2, :cond_a7

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a7

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_143

    .line 729
    :cond_a7
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43f40000    # 488.0f

    if-lez v2, :cond_b5

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b5

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_143

    .line 730
    :cond_b5
    cmpl-float v2, v1, v3

    const v3, 0x4415c000    # 599.0f

    if-lez v2, :cond_c5

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c5

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_143

    .line 731
    :cond_c5
    cmpl-float v2, v1, v3

    const v3, 0x44314000    # 709.0f

    if-lez v2, :cond_d4

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_d4

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_143

    .line 732
    :cond_d4
    cmpl-float v2, v1, v3

    const v3, 0x446e8000    # 954.0f

    if-lez v2, :cond_e3

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_e3

    const v0, 0x449f6000    # 1275.0f

    goto :goto_143

    .line 733
    :cond_e3
    cmpl-float v2, v1, v3

    const v3, 0x44922000    # 1169.0f

    if-lez v2, :cond_f2

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f2

    const v0, 0x44d16000    # 1675.0f

    goto :goto_143

    .line 734
    :cond_f2
    cmpl-float v2, v1, v3

    const v3, 0x44b52000    # 1449.0f

    if-lez v2, :cond_101

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_101

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_143

    .line 735
    :cond_101
    cmpl-float v2, v1, v3

    const v3, 0x44e44000    # 1826.0f

    if-lez v2, :cond_110

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_110

    const v0, 0x451f6000    # 2550.0f

    goto :goto_143

    .line 736
    :cond_110
    cmpl-float v2, v1, v3

    const/high16 v3, 0x45170000    # 2416.0f

    if-lez v2, :cond_11e

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_11e

    const v0, 0x4541c000    # 3100.0f

    goto :goto_143

    .line 737
    :cond_11e
    cmpl-float v2, v1, v3

    const v3, 0x4539e000    # 2974.0f

    if-lez v2, :cond_12d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_12d

    const v0, 0x458b3000    # 4454.0f

    goto :goto_143

    .line 738
    :cond_12d
    cmpl-float v2, v1, v3

    const v3, 0x46485000    # 12820.0f

    if-lez v2, :cond_13c

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_13c

    const v0, 0x4598f800    # 4895.0f

    goto :goto_143

    .line 739
    :cond_13c
    cmpl-float v1, v1, v3

    if-lez v1, :cond_143

    const v0, 0x469c4000    # 20000.0f

    .line 741
    :cond_143
    :goto_143
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 742
    return-void
.end method

.method private setLuxForM31()V
    .registers 4

    .line 948
    const/high16 v0, 0x41000000    # 8.0f

    .line 949
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3af18000    # -2280.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_d

    const/4 v0, 0x0

    goto :goto_35

    .line 950
    :cond_d
    const v2, -0x3b09c000    # -1970.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_17

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_35

    .line 951
    :cond_17
    const v2, -0x3b5d8000    # -1300.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_21

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_35

    .line 952
    :cond_21
    const/high16 v2, -0x3c1f0000    # -450.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2a

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_35

    .line 953
    :cond_2a
    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_33

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_35

    .line 954
    :cond_33
    const/high16 v0, 0x42c80000    # 100.0f

    .line 955
    :goto_35
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 956
    return-void
.end method

.method private setLuxForN770()V
    .registers 4

    .line 937
    const/high16 v0, 0x41000000    # 8.0f

    .line 938
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const/high16 v2, -0x3b1f0000    # -1800.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_c

    const/4 v0, 0x0

    goto :goto_33

    .line 939
    :cond_c
    const v2, -0x3b768000    # -1100.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_16

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_33

    .line 940
    :cond_16
    const/high16 v2, -0x3b9f0000    # -900.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1f

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_33

    .line 941
    :cond_1f
    const/high16 v2, -0x3c060000    # -500.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_28

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_33

    .line 942
    :cond_28
    const/high16 v2, -0x3d380000    # -100.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_31

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_33

    .line 943
    :cond_31
    const/high16 v0, 0x42c80000    # 100.0f

    .line 944
    :goto_33
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 945
    return-void
.end method

.method private setLuxForP61()V
    .registers 4

    .line 981
    const/high16 v0, 0x41000000    # 8.0f

    .line 982
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    const v2, -0x3b0c4000    # -1950.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_d

    const/4 v0, 0x0

    goto :goto_4f

    .line 983
    :cond_d
    const/high16 v2, -0x3b1f0000    # -1800.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_16

    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_4f

    .line 984
    :cond_16
    const v2, -0x3b768000    # -1100.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_20

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_4f

    .line 985
    :cond_20
    const/high16 v2, -0x3c290000    # -430.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_29

    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_4f

    .line 986
    :cond_29
    const/high16 v2, 0x42700000    # 60.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_32

    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_4f

    .line 987
    :cond_32
    const/high16 v2, 0x43c80000    # 400.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_3b

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_4f

    .line 988
    :cond_3b
    const/high16 v2, 0x44960000    # 1200.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_44

    const/high16 v0, 0x43960000    # 300.0f

    goto :goto_4f

    .line 989
    :cond_44
    const/high16 v2, 0x44e10000    # 1800.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4d

    const/high16 v0, 0x43fa0000    # 500.0f

    goto :goto_4f

    .line 990
    :cond_4d
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 991
    :goto_4f
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 992
    return-void
.end method

.method private setbrightnessMediumResolution()V
    .registers 5

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "lux":F
    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    const/high16 v2, 0x41880000    # 17.0f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_134

    .line 340
    :cond_c
    cmpl-float v2, v1, v2

    const/high16 v3, 0x41a00000    # 20.0f

    if-lez v2, :cond_1a

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_1a

    const/high16 v0, 0x40400000    # 3.0f

    goto/16 :goto_134

    .line 341
    :cond_1a
    cmpl-float v2, v1, v3

    const/high16 v3, 0x41f00000    # 30.0f

    if-lez v2, :cond_28

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_28

    const/high16 v0, 0x40a00000    # 5.0f

    goto/16 :goto_134

    .line 342
    :cond_28
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42440000    # 49.0f

    if-lez v2, :cond_36

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_36

    const/high16 v0, 0x40e00000    # 7.0f

    goto/16 :goto_134

    .line 343
    :cond_36
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42b40000    # 90.0f

    if-lez v2, :cond_44

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_44

    const/high16 v0, 0x42480000    # 50.0f

    goto/16 :goto_134

    .line 344
    :cond_44
    cmpl-float v2, v1, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    if-lez v2, :cond_52

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_52

    const/high16 v0, 0x42c80000    # 100.0f

    goto/16 :goto_134

    .line 345
    :cond_52
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43160000    # 150.0f

    if-lez v2, :cond_60

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_60

    const/high16 v0, 0x43810000    # 258.0f

    goto/16 :goto_134

    .line 346
    :cond_60
    cmpl-float v2, v1, v3

    const/high16 v3, 0x433e0000    # 190.0f

    if-lez v2, :cond_6e

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_6e

    const/high16 v0, 0x43a90000    # 338.0f

    goto/16 :goto_134

    .line 347
    :cond_6e
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43660000    # 230.0f

    if-lez v2, :cond_7d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_7d

    const v0, 0x43d88000    # 433.0f

    goto/16 :goto_134

    .line 348
    :cond_7d
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43870000    # 270.0f

    if-lez v2, :cond_8c

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_8c

    const v0, 0x43f38000    # 487.0f

    goto/16 :goto_134

    .line 349
    :cond_8c
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43a00000    # 320.0f

    if-lez v2, :cond_9b

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_9b

    const v0, 0x440fc000    # 575.0f

    goto/16 :goto_134

    .line 350
    :cond_9b
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43be0000    # 380.0f

    if-lez v2, :cond_a9

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_a9

    const/high16 v0, 0x442f0000    # 700.0f

    goto/16 :goto_134

    .line 351
    :cond_a9
    cmpl-float v2, v1, v3

    const/high16 v3, 0x43dc0000    # 440.0f

    if-lez v2, :cond_b8

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_b8

    const v0, 0x444a8000    # 810.0f

    goto/16 :goto_134

    .line 352
    :cond_b8
    cmpl-float v2, v1, v3

    const v3, 0x44098000    # 550.0f

    if-lez v2, :cond_c7

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_c7

    const/high16 v0, 0x44660000    # 920.0f

    goto/16 :goto_134

    .line 353
    :cond_c7
    cmpl-float v2, v1, v3

    const v3, 0x44318000    # 710.0f

    if-lez v2, :cond_d6

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_d6

    const v0, 0x449f6000    # 1275.0f

    goto :goto_134

    .line 354
    :cond_d6
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44610000    # 900.0f

    if-lez v2, :cond_e4

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_e4

    const v0, 0x44d16000    # 1675.0f

    goto :goto_134

    .line 355
    :cond_e4
    cmpl-float v2, v1, v3

    const v3, 0x44834000    # 1050.0f

    if-lez v2, :cond_f3

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_f3

    const v0, 0x44f3c000    # 1950.0f

    goto :goto_134

    .line 356
    :cond_f3
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44af0000    # 1400.0f

    if-lez v2, :cond_101

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_101

    const v0, 0x451f6000    # 2550.0f

    goto :goto_134

    .line 357
    :cond_101
    cmpl-float v2, v1, v3

    const/high16 v3, 0x44e10000    # 1800.0f

    if-lez v2, :cond_10f

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_10f

    const v0, 0x4541c000    # 3100.0f

    goto :goto_134

    .line 358
    :cond_10f
    cmpl-float v2, v1, v3

    const v3, 0x450fc000    # 2300.0f

    if-lez v2, :cond_11e

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_11e

    const v0, 0x458b3000    # 4454.0f

    goto :goto_134

    .line 359
    :cond_11e
    cmpl-float v2, v1, v3

    const v3, 0x453b8000    # 3000.0f

    if-lez v2, :cond_12d

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_12d

    const v0, 0x4598f800    # 4895.0f

    goto :goto_134

    .line 360
    :cond_12d
    cmpl-float v1, v1, v3

    if-lez v1, :cond_134

    const v0, 0x469c4000    # 20000.0f

    .line 362
    :cond_134
    :goto_134
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 363
    return-void
.end method


# virtual methods
.method public declared-synchronized addConversionHistory(FFF)V
    .registers 7
    .param p1, "e"    # F
    .param p2, "b"    # F
    .param p3, "l"    # F

    monitor-enter p0

    .line 1002
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 1003
    new-instance v0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;-><init>(Lcom/samsung/android/gesture/ExposureToLuxMapping;Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History-IA;)V

    .line 1004
    .local v0, "t":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setExposure(F)V

    .line 1005
    invoke-virtual {v0, p2}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setBrightness(F)V

    .line 1006
    invoke-virtual {v0, p3}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setLux(F)V

    .line 1007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setTime(J)V

    .line 1008
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->addLast(Ljava/lang/Object;)V

    goto :goto_5a

    .line 1010
    .end local v0    # "t":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    .end local p0    # "this":Lcom/samsung/android/gesture/ExposureToLuxMapping;
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;

    .line 1011
    .restart local v0    # "t":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    iget v2, v0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_exposure:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_3f

    iget v2, v0, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_brightness:F

    cmpl-float v2, v2, p2

    if-eqz v2, :cond_5a

    .line 1012
    :cond_3f
    new-instance v2, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;-><init>(Lcom/samsung/android/gesture/ExposureToLuxMapping;Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History-IA;)V

    move-object v0, v2

    .line 1013
    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setExposure(F)V

    .line 1014
    invoke-virtual {v0, p2}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setBrightness(F)V

    .line 1015
    invoke-virtual {v0, p3}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setLux(F)V

    .line 1016
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->setTime(J)V

    .line 1017
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->addLast(Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5c

    .line 1020
    :cond_5a
    :goto_5a
    monitor-exit p0

    return-void

    .line 1001
    .end local v0    # "t":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    .end local p1    # "e":F
    .end local p2    # "b":F
    .end local p3    # "l":F
    :catchall_5c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 1028
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->flag_config_file:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_a4

    .line 1029
    const-string v0, " ------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    const-string v0, " : EV2L Conversion Table"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " : Version : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    .end local p0    # "this":Lcom/samsung/android/gesture/ExposureToLuxMapping;
    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " : Device  : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    :cond_4b
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " : Type    : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    :cond_67
    const-string v0, "    Exposure (<)      Brightness (<)      Lux"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    const-string v0, " ------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->ev2l_items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;

    .line 1040
    .local v5, "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
    const-string v6, "   %12.1f && %12.1f  ==> %8.1f%n"

    new-array v7, v3, [Ljava/lang/Object;

    iget v8, v5, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_exposure:F

    .line 1041
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v2

    iget v8, v5, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_brightness:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    iget v8, v5, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;->m_lux:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v1

    .line 1040
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1042
    nop

    .end local v5    # "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_Item;
    goto :goto_77

    .line 1044
    :cond_a4
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    if-eqz v0, :cond_10c

    .line 1045
    const-string v0, " ---------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " : EV2L Conversion History : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    const-string v0, "    Exposure (<)      Brightness (<)      Lux         When"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    const-string v0, " ---------------------------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d4
    iget-object v5, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v5}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_10c

    .line 1050
    iget-object v5, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->mConversionHistory:Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;

    invoke-virtual {v5, v0}, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;

    .line 1051
    .local v5, "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    const-string v6, "       %8.1f        %8.1f  ==> %8.1f @ %s%n"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v5, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_exposure:F

    .line 1052
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v2

    iget v8, v5, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_brightness:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    iget v8, v5, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_lux:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, v5, Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;->m_timeStr:Ljava/lang/String;

    aput-object v8, v7, v3

    .line 1051
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_108
    .catchall {:try_start_1 .. :try_end_108} :catchall_10e

    .line 1049
    nop

    .end local v5    # "tmp":Lcom/samsung/android/gesture/ExposureToLuxMapping$EV2L_History;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d4

    .line 1055
    .end local v0    # "i":I
    :cond_10c
    monitor-exit p0

    return-void

    .line 1027
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_10e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getEvLuxTableInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "info"    # Ljava/lang/String;

    .line 193
    const-string v0, "wrong"

    .line 195
    .local v0, "retInfo":Ljava/lang/String;
    const-string v1, "table_ver"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MotionRecognitionService"

    if-eqz v1, :cond_17

    .line 196
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    const-string v3, "00000000"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_VER:Ljava/lang/String;

    goto :goto_53

    .line 198
    :cond_17
    const-string v1, "target_device"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 199
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    const-string v3, "none"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_DEVICE:Ljava/lang/String;

    goto :goto_53

    .line 201
    :cond_2a
    const-string v1, "type"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 202
    iget-object v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    const-string v3, "normal"

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->EV2L_TABLE_TYPE:Ljava/lang/String;

    goto :goto_53

    .line 205
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EV2L] sABC info is wrong "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EV2L] sABC "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-object v0
.end method

.method public getLux([F)[F
    .registers 7
    .param p1, "values"    # [F

    .line 99
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 100
    aget v1, p1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 101
    aget v1, p1, v3

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 103
    iget v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    float-to-int v0, v0

    aget v1, p1, v2

    float-to-int v1, v1

    const-string v4, "MotionRecognitionService"

    if-eq v0, v1, :cond_3e

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ev-lux map, exposure= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " brightness= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_3e
    aget v0, p1, v2

    iput v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    .line 107
    aget v0, p1, v3

    iput v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    .line 109
    iget-boolean v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->flag_config_file:Z

    if-eqz v0, :cond_54

    .line 110
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->getLuxFromTable()F

    move-result v1

    aput v1, v0, v2

    goto/16 :goto_2e7

    .line 112
    :cond_54
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A606"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e4

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto/16 :goto_2e4

    .line 114
    :cond_6a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A3050"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA30C()V

    goto/16 :goto_2e7

    .line 116
    :cond_79
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A305"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCV43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    goto/16 :goto_2e0

    .line 118
    :cond_8f
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A202"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA20E()V

    goto/16 :goto_2e7

    .line 120
    :cond_9e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A102"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2dc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "N778"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2dc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "02M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2dc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCV46"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c8

    goto/16 :goto_2dc

    .line 122
    :cond_c8
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A105F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A105G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A105FN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e8

    goto/16 :goto_2d8

    .line 124
    :cond_e8
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A105N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d4

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A105M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fe

    goto/16 :goto_2d4

    .line 126
    :cond_fe
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M205"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 127
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M205M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM205M()V

    goto/16 :goto_2e7

    .line 130
    :cond_117
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM205F()V

    goto/16 :goto_2e7

    .line 132
    :cond_11c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M305"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM305M()V

    goto/16 :goto_2e7

    .line 134
    :cond_12b
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 135
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M105M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M105Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14a

    goto :goto_14f

    .line 138
    :cond_14a
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM10()V

    goto/16 :goto_2e7

    .line 136
    :cond_14f
    :goto_14f
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM105M()V

    goto/16 :goto_2e7

    .line 140
    :cond_154
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A405"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA405()V

    goto/16 :goto_2e7

    .line 142
    :cond_163
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "N582"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "41A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCV48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18d

    goto/16 :goto_2d0

    .line 144
    :cond_18d
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A307"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA307()V

    goto/16 :goto_2e7

    .line 146
    :cond_19c
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A507"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA507()V

    goto/16 :goto_2e7

    .line 148
    :cond_1ab
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A908"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA908()V

    goto/16 :goto_2e7

    .line 150
    :cond_1ba
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A515"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2cc

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S515"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    goto/16 :goto_2cc

    .line 152
    :cond_1d0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A516"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA516()V

    goto/16 :goto_2e7

    .line 154
    :cond_1df
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "G770"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForG770()V

    goto/16 :goto_2e7

    .line 156
    :cond_1ee
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2af

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A716"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_204

    goto/16 :goto_2af

    .line 161
    :cond_204
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "N770"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_213

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForN770()V

    goto/16 :goto_2e7

    .line 163
    :cond_213
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A70"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_222

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA70()V

    goto/16 :goto_2e7

    .line 165
    :cond_222
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_231

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForM31()V

    goto/16 :goto_2e7

    .line 167
    :cond_231
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A505"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2ab

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S506"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_246

    goto :goto_2ab

    .line 169
    :cond_246
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_255

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA31()V

    goto/16 :goto_2e7

    .line 171
    :cond_255
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "P61"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_264

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForP61()V

    goto/16 :goto_2e7

    .line 173
    :cond_264
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "J600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_273

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForJ600()V

    goto/16 :goto_2e7

    .line 175
    :cond_273
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A205"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M107"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_288

    goto :goto_2a7

    .line 178
    :cond_288
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    const/high16 v1, -0x40800000    # -1.0f

    aput v1, v0, v2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CameraLightSensor] There is no Ev-Lux table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e7

    .line 176
    :cond_2a7
    :goto_2a7
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA20F()V

    goto :goto_2e7

    .line 168
    :cond_2ab
    :goto_2ab
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA50()V

    goto :goto_2e7

    .line 157
    :cond_2af
    :goto_2af
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A716V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A716U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c4

    goto :goto_2c8

    .line 160
    :cond_2c4
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA71()V

    goto :goto_2e7

    .line 158
    :cond_2c8
    :goto_2c8
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA71U()V

    goto :goto_2e7

    .line 151
    :cond_2cc
    :goto_2cc
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA515()V

    goto :goto_2e7

    .line 143
    :cond_2d0
    :goto_2d0
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA41()V

    goto :goto_2e7

    .line 125
    :cond_2d4
    :goto_2d4
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA105N()V

    goto :goto_2e7

    .line 123
    :cond_2d8
    :goto_2d8
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA105F()V

    goto :goto_2e7

    .line 121
    :cond_2dc
    :goto_2dc
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA10E()V

    goto :goto_2e7

    .line 117
    :cond_2e0
    :goto_2e0
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA305()V

    goto :goto_2e7

    .line 113
    :cond_2e4
    :goto_2e4
    invoke-direct {p0}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->setLuxForA60C()V

    .line 183
    :goto_2e7
    iget v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->exposure:F

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->brightness:F

    iget-object v3, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    aget v2, v3, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/gesture/ExposureToLuxMapping;->addConversionHistory(FFF)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping;->luxEvent:[F

    return-object v0
.end method
