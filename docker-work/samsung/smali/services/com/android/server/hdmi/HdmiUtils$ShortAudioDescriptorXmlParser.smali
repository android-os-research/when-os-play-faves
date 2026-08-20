.class public Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortAudioDescriptorXmlParser"
.end annotation


# static fields
.field public static final NS:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatNameToNum(Ljava/lang/String;)I
    .registers 19

    move-object/from16 v0, p0

    .line 690
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xe

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    const/16 v6, 0xa

    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, -0x1

    sparse-switch v1, :sswitch_data_fe

    goto/16 :goto_e9

    :sswitch_27
    const-string v1, "AUDIO_FORMAT_TRUEHD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_e9

    :cond_31
    move/from16 v17, v2

    goto/16 :goto_e9

    :sswitch_35
    const-string v1, "AUDIO_FORMAT_DD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_e9

    :cond_3f
    move/from16 v17, v3

    goto/16 :goto_e9

    :sswitch_43
    const-string v1, "AUDIO_FORMAT_LPCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_e9

    :cond_4d
    move/from16 v17, v4

    goto/16 :goto_e9

    :sswitch_51
    const-string v1, "AUDIO_FORMAT_MP3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_e9

    :cond_5b
    move/from16 v17, v5

    goto/16 :goto_e9

    :sswitch_5f
    const-string v1, "AUDIO_FORMAT_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_e9

    :cond_69
    move/from16 v17, v6

    goto/16 :goto_e9

    :sswitch_6d
    const-string v1, "AUDIO_FORMAT_DTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_e9

    :cond_77
    move/from16 v17, v7

    goto/16 :goto_e9

    :sswitch_7b
    const-string v1, "AUDIO_FORMAT_DST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_e9

    :cond_85
    move/from16 v17, v8

    goto/16 :goto_e9

    :sswitch_89
    const-string v1, "AUDIO_FORMAT_DDP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_e9

    :cond_93
    move/from16 v17, v9

    goto :goto_e9

    :sswitch_96
    const-string v1, "AUDIO_FORMAT_AAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_e9

    :cond_9f
    move/from16 v17, v10

    goto :goto_e9

    :sswitch_a2
    const-string v1, "AUDIO_FORMAT_ONEBITAUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto :goto_e9

    :cond_ab
    move/from16 v17, v11

    goto :goto_e9

    :sswitch_ae
    const-string v1, "AUDIO_FORMAT_MPEG2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto :goto_e9

    :cond_b7
    move/from16 v17, v12

    goto :goto_e9

    :sswitch_ba
    const-string v1, "AUDIO_FORMAT_MPEG1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    goto :goto_e9

    :cond_c3
    move/from16 v17, v13

    goto :goto_e9

    :sswitch_c6
    const-string v1, "AUDIO_FORMAT_DTSHD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    goto :goto_e9

    :cond_cf
    move/from16 v17, v14

    goto :goto_e9

    :sswitch_d2
    const-string v1, "AUDIO_FORMAT_ATRAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_db

    goto :goto_e9

    :cond_db
    move/from16 v17, v15

    goto :goto_e9

    :sswitch_de
    const-string v1, "AUDIO_FORMAT_WMAPRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    goto :goto_e9

    :cond_e7
    move/from16 v17, v16

    :goto_e9
    packed-switch v17, :pswitch_data_13c

    return v16

    :pswitch_ed
    return v4

    :pswitch_ee
    return v14

    :pswitch_ef
    return v15

    :pswitch_f0
    return v12

    :pswitch_f1
    const/16 v0, 0xf

    return v0

    :pswitch_f4
    return v9

    :pswitch_f5
    return v3

    :pswitch_f6
    return v6

    :pswitch_f7
    return v10

    :pswitch_f8
    return v7

    :pswitch_f9
    return v11

    :pswitch_fa
    return v13

    :pswitch_fb
    return v5

    :pswitch_fc
    return v8

    :pswitch_fd
    return v2

    :sswitch_data_fe
    .sparse-switch
        -0x7f0fd0ff -> :sswitch_de
        -0x475c657e -> :sswitch_d2
        -0x47321a60 -> :sswitch_c6
        -0x46b54d13 -> :sswitch_ba
        -0x46b54d12 -> :sswitch_ae
        -0x156509f0 -> :sswitch_a2
        -0x10db57fc -> :sswitch_96
        -0x10db4c4f -> :sswitch_89
        -0x10db4a7a -> :sswitch_7b
        -0x10db4a5c -> :sswitch_6d
        -0x10db2adb -> :sswitch_5f
        -0x10db292f -> :sswitch_51
        -0xa8a6ed3 -> :sswitch_43
        0x7b6dc7f -> :sswitch_35
        0x7c210789 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p0

    .line 588
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 589
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->readDevices(Landroid/util/TypedXmlPullParser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readDeviceConfig(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    sget-object v1, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->NS:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "device"

    invoke-interface {p0, v2, v1, v3}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 646
    :goto_d
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_5a

    .line 647
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_1c

    goto :goto_d

    .line 650
    :cond_1c
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "supportedFormat"

    .line 653
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string v1, "format"

    .line 654
    invoke-interface {p0, v4, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "descriptor"

    .line 655
    invoke-interface {p0, v4, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_39

    const/4 v1, 0x0

    goto :goto_3d

    .line 657
    :cond_39
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->formatNameToNum(Ljava/lang/String;)I

    move-result v1

    .line 658
    :goto_3d
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->readSad(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v1, :cond_4d

    if-eqz v4, :cond_4d

    .line 660
    new-instance v6, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    invoke-direct {v6, v1, v4}, Lcom/android/server/hdmi/HdmiUtils$CodecSad;-><init>(I[B)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_4d
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 663
    sget-object v1, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->NS:Ljava/lang/String;

    invoke-interface {p0, v3, v1, v5}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 665
    :cond_56
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Landroid/util/TypedXmlPullParser;)V

    goto :goto_d

    .line 668
    :cond_5a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_61

    return-object v4

    .line 671
    :cond_61
    new-instance p0, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public static readDevices(Landroid/util/TypedXmlPullParser;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    sget-object v1, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->NS:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "config"

    invoke-interface {p0, v2, v1, v3}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_d
    :goto_d
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3f

    .line 616
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_1b

    goto :goto_d

    .line 619
    :cond_1b
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "device"

    .line 621
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    const-string/jumbo v3, "type"

    .line 622
    invoke-interface {p0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 625
    invoke-static {p0, v3}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->readDeviceConfig(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    move-result-object v1

    :cond_35
    if-eqz v1, :cond_d

    .line 628
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 631
    :cond_3b
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Landroid/util/TypedXmlPullParser;)V

    goto :goto_d

    :cond_3f
    return-object v0
.end method

.method public static readSad(Ljava/lang/String;)[B
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    .line 677
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2b

    .line 680
    :cond_a
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 681
    array-length v1, p0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2a

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAD byte array length is not 3. Length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HdmiUtils"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2a
    return-object p0

    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public static skip(Landroid/util/TypedXmlPullParser;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 594
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_1a

    .line 599
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

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

    .line 595
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
