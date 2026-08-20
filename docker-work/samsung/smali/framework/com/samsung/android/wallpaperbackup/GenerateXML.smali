.class public Lcom/samsung/android/wallpaperbackup/GenerateXML;
.super Ljava/lang/Object;
.source "GenerateXML.java"


# static fields
.field public static final blacklist BOTTOM:Ljava/lang/String; = "bottom"

.field public static final blacklist COMPONENT:Ljava/lang/String; = "component"

.field public static final blacklist DEVICETYPE:Ljava/lang/String; = "devicetype"

.field public static final blacklist EXTERNAL_PARAMS:Ljava/lang/String; = "externalParams"

.field public static final blacklist HEIGHT:Ljava/lang/String; = "height"

.field public static final blacklist LEFT:Ljava/lang/String; = "left"

.field public static final blacklist OBJECT_LIST_TAG:Ljava/lang/String; = "User"

.field public static final blacklist ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final blacklist PATH:Ljava/lang/String; = "path"

.field public static final blacklist RIGHT:Ljava/lang/String; = "right"

.field public static final blacklist ROTATION:Ljava/lang/String; = "rotation"

.field private static final blacklist TAG:Ljava/lang/String; = "GenerateXML"

.field public static final blacklist TILTSETTING:Ljava/lang/String; = "tiltSetting"

.field public static final blacklist TOP:Ljava/lang/String; = "top"

.field private static final blacklist TOP_TAG:Ljava/lang/String; = "Wallpapers"

.field private static final blacklist TOP_TAG_LOCK:Ljava/lang/String; = "lockscreen"

.field public static final blacklist TRANSPARENCY:Ljava/lang/String; = "transparency"

.field public static final blacklist URI:Ljava/lang/String; = "uri"

.field public static final blacklist WIDTH:Ljava/lang/String; = "width"

.field public static final blacklist WPTYPE:Ljava/lang/String; = "wpType"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist generate(Ljava/io/File;Lcom/samsung/android/wallpaperbackup/WallpaperUser;)V
    .registers 25
    .param p0, "file"    # Ljava/io/File;
    .param p1, "wallpaperUser"    # Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    .line 87
    move-object/from16 v1, p0

    const-string/jumbo v0, "rotation"

    const-string v2, "bottom"

    const-string/jumbo v3, "right"

    const-string/jumbo v4, "top"

    const-string v5, "orientation"

    const-string v6, "left"

    const-string v7, "externalParams"

    const-string/jumbo v8, "uri"

    const-string/jumbo v9, "wpType"

    const-string v10, "component"

    const-string/jumbo v11, "tiltSetting"

    const-string v12, "path"

    const-string v13, "devicetype"

    const-string/jumbo v14, "transparency"

    const-string v15, "height"

    move-object/from16 v16, v0

    const-string/jumbo v0, "width"

    move-object/from16 v17, v2

    const-string v2, "User"

    move-object/from16 v18, v3

    const-string v3, ""

    move-object/from16 v19, v4

    const-string v4, "GenerateXML"

    move-object/from16 v20, v6

    const-string v6, "generate()"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-nez v1, :cond_47

    .line 90
    const-string v0, "File shouldn\'t not be null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 94
    :cond_47
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 95
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v6, 0x0

    .line 98
    .local v6, "writer":Ljava/io/FileWriter;
    move-object/from16 v21, v6

    .end local v6    # "writer":Ljava/io/FileWriter;
    .local v21, "writer":Ljava/io/FileWriter;
    :try_start_4e
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_53} :catch_1f0
    .catchall {:try_start_4e .. :try_end_53} :catchall_1eb

    .line 99
    .end local v21    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :try_start_53
    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 100
    const-string v1, "UTF-8"
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_58} :catch_1e7
    .catchall {:try_start_53 .. :try_end_58} :catchall_1e2

    const/16 v21, 0x1

    move-object/from16 v22, v6

    .end local v6    # "writer":Ljava/io/FileWriter;
    .local v22, "writer":Ljava/io/FileWriter;
    :try_start_5c
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 102
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    const-string v1, "ID"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    invoke-interface {v4, v3, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    invoke-interface {v4, v3, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    invoke-interface {v4, v3, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getTransparency()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    invoke-interface {v4, v3, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ba

    .line 118
    invoke-interface {v4, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    invoke-interface {v4, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 123
    :cond_ba
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 124
    invoke-interface {v4, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    invoke-interface {v4, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    :cond_d1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getComponent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 130
    invoke-interface {v4, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getComponent()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    invoke-interface {v4, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    :cond_e8
    invoke-interface {v4, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getTiltSettingValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    invoke-interface {v4, v3, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    invoke-interface {v4, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getWpType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    invoke-interface {v4, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_121

    .line 146
    invoke-interface {v4, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    invoke-interface {v4, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    :cond_121
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getExternalParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_138

    .line 152
    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getExternalParams()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    invoke-interface {v4, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    :cond_138
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_164

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "folder"

    if-eq v0, v1, :cond_153

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    if-ne v0, v1, :cond_164

    .line 160
    :cond_153
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    :cond_164
    move-object/from16 v0, v20

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getLeftValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    move-object/from16 v0, v19

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getTopValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    move-object/from16 v0, v18

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getRightValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    move-object/from16 v0, v17

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getBottomValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    move-object/from16 v0, v16

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wallpaperbackup/WallpaperUser;->getRotationValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1c9
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_1c9} :catch_1de
    .catchall {:try_start_5c .. :try_end_1c9} :catchall_1d9

    .line 193
    nop

    .line 194
    :try_start_1ca
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileWriter;->flush()V

    .line 195
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileWriter;->close()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1d0} :catch_1d1

    .line 199
    goto :goto_1d6

    .line 197
    :catch_1d1
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 201
    :goto_1d6
    move-object/from16 v6, v22

    goto :goto_205

    .line 192
    :catchall_1d9
    move-exception v0

    move-object v1, v0

    move-object/from16 v6, v22

    goto :goto_208

    .line 189
    :catch_1de
    move-exception v0

    move-object/from16 v6, v22

    goto :goto_1f3

    .line 192
    .end local v22    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :catchall_1e2
    move-exception v0

    move-object/from16 v22, v6

    move-object v1, v0

    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v22    # "writer":Ljava/io/FileWriter;
    goto :goto_208

    .line 189
    .end local v22    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :catch_1e7
    move-exception v0

    move-object/from16 v22, v6

    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v22    # "writer":Ljava/io/FileWriter;
    goto :goto_1f3

    .line 192
    .end local v22    # "writer":Ljava/io/FileWriter;
    .restart local v21    # "writer":Ljava/io/FileWriter;
    :catchall_1eb
    move-exception v0

    move-object v1, v0

    move-object/from16 v6, v21

    goto :goto_208

    .line 189
    :catch_1f0
    move-exception v0

    move-object/from16 v6, v21

    .line 190
    .end local v21    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :goto_1f3
    :try_start_1f3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f6
    .catchall {:try_start_1f3 .. :try_end_1f6} :catchall_206

    .line 193
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_204

    .line 194
    :try_start_1f8
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V

    .line 195
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_1fe
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_1fe} :catch_1ff

    goto :goto_204

    .line 197
    :catch_1ff
    move-exception v0

    .line 198
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_205

    .line 199
    :cond_204
    :goto_204
    nop

    .line 201
    :goto_205
    return-void

    .line 192
    :catchall_206
    move-exception v0

    move-object v1, v0

    .line 193
    :goto_208
    if-eqz v6, :cond_216

    .line 194
    :try_start_20a
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V

    .line 195
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_210
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_210} :catch_211

    goto :goto_216

    .line 197
    :catch_211
    move-exception v0

    .line 198
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_217

    .line 199
    .end local v0    # "e":Ljava/io/IOException;
    :cond_216
    :goto_216
    nop

    .line 200
    :goto_217
    throw v1
.end method

.method public static blacklist generateXML(Ljava/io/File;ILcom/samsung/android/wallpaperbackup/WallpaperUser;)V
    .registers 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "which"    # I
    .param p2, "wallpaperUser"    # Lcom/samsung/android/wallpaperbackup/WallpaperUser;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateXML: file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenerateXML"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-nez p0, :cond_2a

    .line 59
    const-string v0, "generateXML: File shouldn\'t not be null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 63
    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 64
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    .line 66
    .local v2, "created":Z
    if-nez v2, :cond_5d

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateXML: parent directory("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") isn\'t created."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 72
    .end local v2    # "created":Z
    :cond_5d
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 77
    :cond_66
    :try_start_66
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 80
    goto :goto_6e

    .line 78
    :catch_6a
    move-exception v2

    .line 79
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    .end local v2    # "e":Ljava/io/IOException;
    :goto_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateXML: filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {p0, p2}, Lcom/samsung/android/wallpaperbackup/GenerateXML;->generate(Ljava/io/File;Lcom/samsung/android/wallpaperbackup/WallpaperUser;)V

    .line 84
    return-void
.end method
