.class public final Lcom/android/server/inputmethod/AdditionalSubtypeUtils;
.super Ljava/lang/Object;
.source "AdditionalSubtypeUtils.java"


# static fields
.field public static final ADDITIONAL_SUBTYPES_FILE_NAME:Ljava/lang/String; = "subtypes.xml"

.field public static final ATTR_ICON:Ljava/lang/String; = "icon"

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_IME_SUBTYPE_EXTRA_VALUE:Ljava/lang/String; = "imeSubtypeExtraValue"

.field public static final ATTR_IME_SUBTYPE_ID:Ljava/lang/String; = "subtypeId"

.field public static final ATTR_IME_SUBTYPE_LANGUAGE_TAG:Ljava/lang/String; = "languageTag"

.field public static final ATTR_IME_SUBTYPE_LOCALE:Ljava/lang/String; = "imeSubtypeLocale"

.field public static final ATTR_IME_SUBTYPE_MODE:Ljava/lang/String; = "imeSubtypeMode"

.field public static final ATTR_IS_ASCII_CAPABLE:Ljava/lang/String; = "isAsciiCapable"

.field public static final ATTR_IS_AUXILIARY:Ljava/lang/String; = "isAuxiliary"

.field public static final ATTR_LABEL:Ljava/lang/String; = "label"

.field public static final INPUT_METHOD_PATH:Ljava/lang/String; = "inputmethod"

.field public static final NODE_IMI:Ljava/lang/String; = "imi"

.field public static final NODE_SUBTYPE:Ljava/lang/String; = "subtype"

.field public static final NODE_SUBTYPES:Ljava/lang/String; = "subtypes"

.field public static final SYSTEM_PATH:Ljava/lang/String; = "system"

.field public static final TAG:Ljava/lang/String; = "AdditionalSubtypeUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;
    .registers 3

    .line 92
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "subtypes.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    new-instance p0, Landroid/util/AtomicFile;

    const-string/jumbo v1, "input-subtypes"

    invoke-direct {p0, v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInputMethodDir(I)Ljava/io/File;
    .registers 3

    if-nez p0, :cond_f

    .line 79
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_13

    .line 80
    :cond_f
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    .line 81
    :goto_13
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "inputmethod"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static load(Landroid/util/ArrayMap;I)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;I)V"
        }
    .end annotation

    const-string v0, "1"

    const-string v1, "AdditionalSubtypeUtils"

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/util/ArrayMap;->clear()V

    .line 198
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getInputMethodDir(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v3

    if-nez v3, :cond_16

    return-void

    .line 203
    :cond_16
    :try_start_16
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_1a} :catch_153
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_153
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1a} :catch_153

    .line 204
    :try_start_1a
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 205
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getEventType()I

    .line 208
    :cond_21
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2b

    if-ne v4, v5, :cond_21

    .line 213
    :cond_2b
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "subtypes"

    .line 214
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13d

    .line 217
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    .line 220
    :goto_3f
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_4c

    .line 221
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v4, :cond_137

    :cond_4c
    if-eq v10, v5, :cond_137

    if-eq v10, v6, :cond_56

    move-object/from16 v11, p0

    :cond_52
    :goto_52
    move/from16 v16, v4

    goto/16 :goto_131

    .line 225
    :cond_56
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "imi"

    .line 226
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    const-string/jumbo v8, "id"

    .line 227
    invoke-interface {v3, v7, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 228
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_76

    const-string v10, "Invalid imi id found in subtypes.xml"

    .line 229
    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 232
    :cond_76
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v11, p0

    .line 233
    invoke-virtual {v11, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    :cond_81
    move-object/from16 v11, p0

    const-string/jumbo v12, "subtype"

    .line 234
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 235
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11b

    if-nez v9, :cond_96

    goto/16 :goto_11b

    :cond_96
    const-string/jumbo v10, "icon"

    .line 239
    invoke-interface {v3, v7, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v12, "label"

    .line 240
    invoke-interface {v3, v7, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "imeSubtypeLocale"

    .line 242
    invoke-interface {v3, v7, v13}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "languageTag"

    .line 244
    invoke-interface {v3, v7, v14}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "imeSubtypeMode"

    .line 246
    invoke-interface {v3, v7, v15}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v5, "imeSubtypeExtraValue"

    .line 248
    invoke-interface {v3, v7, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "isAuxiliary"

    .line 250
    invoke-interface {v3, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 249
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move/from16 v16, v4

    const-string/jumbo v4, "isAsciiCapable"

    .line 252
    invoke-interface {v3, v7, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 254
    new-instance v7, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct {v7}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    .line 255
    invoke-virtual {v7, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 256
    invoke-virtual {v7, v10}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 257
    invoke-virtual {v7, v13}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 258
    invoke-virtual {v7, v14}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setLanguageTag(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 259
    invoke-virtual {v7, v15}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v7

    .line 260
    invoke-virtual {v7, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v5

    .line 261
    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v5

    .line 262
    invoke-virtual {v5, v4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v4

    const-string/jumbo v5, "subtypeId"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 263
    invoke-interface {v3, v7, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_113

    .line 266
    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    .line 268
    :cond_113
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_131

    :cond_11b
    :goto_11b
    move/from16 v16, v4

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IME uninstalled or not valid.: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catchall {:try_start_1a .. :try_end_131} :catchall_145

    :goto_131
    move/from16 v4, v16

    const/4 v5, 0x1

    const/4 v6, 0x2

    goto/16 :goto_3f

    :cond_137
    if-eqz v2, :cond_159

    .line 271
    :try_start_139
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_13c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_139 .. :try_end_13c} :catch_153
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_13c} :catch_153
    .catch Ljava/lang/NumberFormatException; {:try_start_139 .. :try_end_13c} :catch_153

    goto :goto_159

    .line 215
    :cond_13d
    :try_start_13d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Xml doesn\'t start with subtypes"

    invoke-direct {v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_145
    .catchall {:try_start_13d .. :try_end_145} :catchall_145

    :catchall_145
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_152

    .line 203
    :try_start_149
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_14c
    .catchall {:try_start_149 .. :try_end_14c} :catchall_14d

    goto :goto_152

    :catchall_14d
    move-exception v0

    move-object v2, v0

    :try_start_14f
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_152
    :goto_152
    throw v3
    :try_end_153
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14f .. :try_end_153} :catch_153
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_153} :catch_153
    .catch Ljava/lang/NumberFormatException; {:try_start_14f .. :try_end_153} :catch_153

    :catch_153
    move-exception v0

    const-string v2, "Error reading subtypes"

    .line 272
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_159
    :goto_159
    return-void
.end method

.method public static save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string/jumbo v1, "subtype"

    const-string/jumbo v2, "imi"

    const-string/jumbo v3, "subtypes"

    .line 110
    invoke-static/range {p2 .. p2}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getInputMethodDir(I)Ljava/io/File;

    move-result-object v4

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    const-string v6, "AdditionalSubtypeUtils"

    if-eqz v5, :cond_4d

    .line 113
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    .line 117
    :cond_1e
    invoke-static {v4}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 119
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 121
    :cond_2b
    invoke-static {v4}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_4c

    .line 122
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete the empty parent directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return-void

    .line 129
    :cond_4d
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6e

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_6e

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create a parent directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6e
    const/4 v7, 0x1

    if-eqz v0, :cond_79

    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-lez v8, :cond_79

    move v8, v7

    goto :goto_7a

    :cond_79
    const/4 v8, 0x0

    .line 137
    :goto_7a
    invoke-static {v4}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->getAdditionalSubtypeFile(Ljava/io/File;)Landroid/util/AtomicFile;

    move-result-object v4

    const/4 v9, 0x0

    .line 139
    :try_start_7f
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v10
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_83} :catch_17f

    .line 140
    :try_start_83
    invoke-static {v10}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v11

    .line 141
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v11, v9, v12}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 142
    invoke-interface {v11, v12, v7}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 143
    invoke-interface {v11, v9, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_171

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v8, :cond_c6

    .line 145
    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c6

    .line 146
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IME uninstalled or not valid.: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 149
    :cond_c6
    invoke-interface {v11, v9, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v14, "id"

    .line 150
    invoke-interface {v11, v9, v14, v13}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v14, p0

    .line 151
    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 152
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    const/4 v5, 0x0

    :goto_dc
    if-ge v5, v15, :cond_165

    .line 154
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    .line 155
    invoke-interface {v11, v9, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->hasSubtypeId()Z

    move-result v17

    if-eqz v17, :cond_fb

    const-string/jumbo v7, "subtypeId"

    .line 157
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getSubtypeId()I

    move-result v9

    move/from16 v18, v8

    const/4 v8, 0x0

    invoke-interface {v11, v8, v7, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_fd

    :cond_fb
    move/from16 v18, v8

    :goto_fd
    const-string/jumbo v7, "icon"

    .line 159
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v11, v9, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "label"

    .line 160
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v8

    invoke-interface {v11, v9, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "imeSubtypeLocale"

    .line 161
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v9, v7, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "languageTag"

    .line 163
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-interface {v11, v9, v7, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "imeSubtypeMode"

    .line 164
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v9, v7, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "imeSubtypeExtraValue"

    .line 165
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v9, v7, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "isAuxiliary"

    .line 166
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v8

    if-eqz v8, :cond_145

    const/4 v8, 0x1

    goto :goto_146

    :cond_145
    const/4 v8, 0x0

    :goto_146
    const/4 v9, 0x0

    invoke-interface {v11, v9, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "isAsciiCapable"

    .line 167
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v8

    if-eqz v8, :cond_155

    const/4 v8, 0x1

    goto :goto_156

    :cond_155
    const/4 v8, 0x0

    :goto_156
    const/4 v9, 0x0

    invoke-interface {v11, v9, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    invoke-interface {v11, v9, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    move/from16 v8, v18

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_dc

    :cond_165
    move/from16 v18, v8

    move-object v5, v9

    .line 170
    invoke-interface {v11, v5, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move/from16 v8, v18

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_9d

    :cond_171
    move-object v1, v9

    .line 172
    invoke-interface {v11, v1, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    invoke-interface {v11}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 174
    invoke-virtual {v4, v10}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_17b} :catch_17c

    goto :goto_18b

    :catch_17c
    move-exception v0

    move-object v9, v10

    goto :goto_181

    :catch_17f
    move-exception v0

    move-object v1, v9

    :goto_181
    const-string v1, "Error writing subtypes"

    .line 176
    invoke-static {v6, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v9, :cond_18b

    .line 178
    invoke-virtual {v4, v9}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_18b
    :goto_18b
    return-void
.end method
