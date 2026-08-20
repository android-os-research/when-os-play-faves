.class Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;
.super Ljava/lang/Object;
.source "WallpaperExtraBundleHelper.java"


# static fields
.field private static final blacklist CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final blacklist JSON_INDENT:Ljava/lang/String; = "  "

.field private static final blacklist JSON_VALUE_TYPE_DELIMITER:Ljava/lang/String; = "|"

.field private static final blacklist JSON_VALUE_TYPE_PREFIX_BOOLEAN:Ljava/lang/String; = "B"

.field private static final blacklist JSON_VALUE_TYPE_PREFIX_DOUBLE:Ljava/lang/String; = "D"

.field private static final blacklist JSON_VALUE_TYPE_PREFIX_FLOAT:Ljava/lang/String; = "F"

.field private static final blacklist JSON_VALUE_TYPE_PREFIX_INTEGER:Ljava/lang/String; = "I"

.field private static final blacklist JSON_VALUE_TYPE_PREFIX_LONG:Ljava/lang/String; = "L"

.field private static final blacklist JSON_VALUE_TYPE_PREFIX_STRING:Ljava/lang/String; = "S"

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-class v0, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist determineDataTypePrefix(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 182
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 183
    const-string v0, "S"

    return-object v0

    .line 184
    :cond_7
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    .line 185
    const-string v0, "B"

    return-object v0

    .line 186
    :cond_e
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 187
    const-string v0, "I"

    return-object v0

    .line 188
    :cond_15
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1c

    .line 189
    const-string v0, "L"

    return-object v0

    .line 190
    :cond_1c
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_23

    .line 191
    const-string v0, "F"

    return-object v0

    .line 192
    :cond_23
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2a

    .line 193
    const-string v0, "D"

    return-object v0

    .line 195
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist putJsonObjectFieldsToBundle(Landroid/util/JsonReader;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "resultBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 125
    :goto_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 126
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "jsonValue":Ljava/lang/String;
    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->putValueToBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 129
    .local v2, "valueObject":Ljava/lang/Object;
    if-nez v2, :cond_35

    .line 130
    sget-object v3, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putJsonObjectFieldsToBundle: failed to decode value. key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    goto :goto_3

    .line 133
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "jsonValue":Ljava/lang/String;
    .end local v2    # "valueObject":Ljava/lang/Object;
    :cond_35
    goto :goto_3

    .line 134
    :cond_36
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 135
    return-void
.end method

.method private blacklist putValueToBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "jsonValue"    # Ljava/lang/String;

    .line 138
    const/4 v0, 0x0

    if-eqz p1, :cond_dc

    if-eqz p2, :cond_dc

    if-nez p3, :cond_9

    goto/16 :goto_dc

    .line 142
    :cond_9
    const-string/jumbo v1, "|"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 143
    .local v1, "delimiterIndex":I
    if-gez v1, :cond_2c

    .line 144
    sget-object v2, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putValueToBundle : type delimiter is absent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v0

    .line 148
    :cond_2c
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "typePrefix":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "strTypeValue":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_de

    :cond_43
    goto :goto_7f

    :sswitch_44
    const-string v5, "S"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    move v4, v0

    goto :goto_7f

    :sswitch_4e
    const-string v5, "L"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    const/4 v4, 0x3

    goto :goto_7f

    :sswitch_58
    const-string v5, "I"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    const/4 v4, 0x2

    goto :goto_7f

    :sswitch_62
    const-string v5, "F"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    const/4 v4, 0x4

    goto :goto_7f

    :sswitch_6c
    const-string v5, "D"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    const/4 v4, 0x5

    goto :goto_7f

    :sswitch_76
    const-string v5, "B"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    move v4, v6

    :goto_7f
    packed-switch v4, :pswitch_data_f8

    .line 176
    sget-object v4, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "putValueToBundle: unexpected data type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v0

    .line 172
    :pswitch_9c
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 173
    return v6

    .line 168
    :pswitch_a8
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 169
    return v6

    .line 164
    :pswitch_b4
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 165
    return v6

    .line 160
    :pswitch_c0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    return v6

    .line 156
    :pswitch_cc
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    return v6

    .line 152
    :pswitch_d8
    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return v6

    .line 139
    .end local v1    # "delimiterIndex":I
    .end local v2    # "typePrefix":Ljava/lang/String;
    .end local v3    # "strTypeValue":Ljava/lang/String;
    :cond_dc
    :goto_dc
    return v0

    nop

    :sswitch_data_de
    .sparse-switch
        0x42 -> :sswitch_76
        0x44 -> :sswitch_6c
        0x46 -> :sswitch_62
        0x49 -> :sswitch_58
        0x4c -> :sswitch_4e
        0x53 -> :sswitch_44
    .end sparse-switch

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_cc
        :pswitch_c0
        :pswitch_b4
        :pswitch_a8
        :pswitch_9c
    .end packed-switch
.end method

.method private blacklist writeBundleToJson(Landroid/os/Bundle;Landroid/util/JsonWriter;)V
    .registers 11
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "writer"    # Landroid/util/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 104
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 105
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 107
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_3d

    .line 108
    sget-object v4, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBundleToJson: the value of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null. skipping.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    goto :goto_b

    .line 112
    :cond_3d
    invoke-direct {p0, v3}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->determineDataTypePrefix(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "typePrefix":Ljava/lang/String;
    if-nez v4, :cond_75

    .line 114
    sget-object v5, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeBundleToJson: unsupported value type : key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    goto :goto_b

    .line 117
    :cond_75
    invoke-virtual {p2, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 119
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "typePrefix":Ljava/lang/String;
    goto/16 :goto_b

    .line 120
    :cond_99
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 121
    return-void
.end method


# virtual methods
.method public blacklist convertBundleToJson(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 82
    const-string v0, "UTF-8"

    const-string v1, "convertBundleToJson : e="

    if-nez p1, :cond_8

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_8
    :try_start_8
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Landroid/util/JsonWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 88
    .local v3, "writer":Landroid/util/JsonWriter;
    const-string v4, "  "

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->writeBundleToJson(Landroid/os/Bundle;Landroid/util/JsonWriter;)V

    .line 90
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V

    .line 91
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 93
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_2e} :catch_47
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2e} :catch_2f

    return-object v4

    .line 96
    .end local v2    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "writer":Landroid/util/JsonWriter;
    :catch_2f
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :catch_47
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v2, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    nop

    .line 99
    :goto_5f
    const-string v0, ""

    return-object v0
.end method

.method public blacklist convertJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 63
    const-string v0, "convertJsonToBundle : e="

    const-string v1, "UTF-8"

    if-nez p1, :cond_8

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v2, "resultBundle":Landroid/os/Bundle;
    :try_start_d
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 69
    .local v3, "inputStream":Ljava/io/ByteArrayInputStream;
    new-instance v4, Landroid/util/JsonReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 70
    .local v1, "reader":Landroid/util/JsonReader;
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->putJsonObjectFieldsToBundle(Landroid/util/JsonReader;Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {v1}, Landroid/util/JsonReader;->close()V

    .line 72
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_2a} :catch_43
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2a} :catch_2b

    .end local v1    # "reader":Landroid/util/JsonReader;
    .end local v3    # "inputStream":Ljava/io/ByteArrayInputStream;
    goto :goto_5a

    .line 75
    :catch_2b
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 73
    .end local v1    # "e":Ljava/io/IOException;
    :catch_43
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lcom/samsung/android/wallpaper/utils/BundleAndJsonConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_5a
    nop

    .line 78
    :goto_5b
    return-object v2
.end method
