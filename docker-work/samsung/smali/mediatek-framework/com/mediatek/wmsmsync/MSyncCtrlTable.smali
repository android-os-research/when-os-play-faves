.class public Lcom/mediatek/wmsmsync/MSyncCtrlTable;
.super Ljava/lang/Object;
.source "MSyncCtrlTable.java"


# static fields
.field private static final blacklist APP_LIST_PATH:Ljava/lang/String; = "system/etc/msync_ctrl_table.xml"

.field private static final blacklist ARRAY_ACTIVITY:Ljava/lang/String; = "activities"

.field private static final blacklist LOCK:Ljava/lang/Object;

.field private static final blacklist NODE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final blacklist NODE_ACTIVITY_FPS:Ljava/lang/String; = "fps"

.field private static final blacklist NODE_ACTIVITY_NAME:Ljava/lang/String; = "name"

.field private static final blacklist NODE_DEFAULT_FPS:Ljava/lang/String; = "defaultfps"

.field private static final blacklist NODE_GLOBAL_FPS:Ljava/lang/String; = "globalfps"

.field private static final blacklist NODE_IME_DEFAULT_FPS:Ljava/lang/String; = "defaultimefps"

.field private static final blacklist NODE_IME_FPS:Ljava/lang/String; = "imefps"

.field private static final blacklist NODE_IME_GLOBAL_CONTROL:Ljava/lang/String; = "enableimeglobalcontrol"

.field private static final blacklist NODE_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final blacklist NODE_SLIDE_RESPONSE:Ljava/lang/String; = "slideresponse"

.field private static final blacklist NODE_VOICE_DEFAULT_FPS:Ljava/lang/String; = "defaultvoicefps"

.field private static final blacklist NODE_VOICE_FPS:Ljava/lang/String; = "voicefps"

.field private static final blacklist NODE_VOICE_GLOBAL_CONTROL:Ljava/lang/String; = "enablevoiceglobalcontrol"

.field private static final blacklist TAG:Ljava/lang/String; = "MSyncCtrlTable"

.field private static final blacklist TAG_APP:Ljava/lang/String; = "app"

.field private static volatile blacklist sInstance:Lcom/mediatek/wmsmsync/MSyncCtrlTable;


# instance fields
.field private blacklist mDefaultImeFps:F

.field private blacklist mDefaultVoiceFps:F

.field private blacklist mEnableImeGlobalFpsControl:Z

.field private blacklist mEnableVoiceGlobalFpsControl:Z

.field private blacklist mGlobalFPS:F

.field private blacklist mIsRead:Z

.field private blacklist mMSyncAppCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wmsmsync/MSyncCtrlBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mEnableImeGlobalFpsControl:Z

    .line 87
    iput-boolean v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mEnableVoiceGlobalFpsControl:Z

    .line 94
    iput-boolean v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mIsRead:Z

    .line 113
    return-void
.end method

.method public static blacklist getInstance()Lcom/mediatek/wmsmsync/MSyncCtrlTable;
    .registers 2

    .line 102
    sget-object v0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->sInstance:Lcom/mediatek/wmsmsync/MSyncCtrlTable;

    if-nez v0, :cond_17

    .line 103
    sget-object v0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_7
    sget-object v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->sInstance:Lcom/mediatek/wmsmsync/MSyncCtrlTable;

    if-nez v1, :cond_12

    .line 105
    new-instance v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;

    invoke-direct {v1}, Lcom/mediatek/wmsmsync/MSyncCtrlTable;-><init>()V

    sput-object v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->sInstance:Lcom/mediatek/wmsmsync/MSyncCtrlTable;

    .line 107
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 109
    :cond_17
    :goto_17
    sget-object v0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->sInstance:Lcom/mediatek/wmsmsync/MSyncCtrlTable;

    return-object v0
.end method

.method private blacklist parseAppListFile(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .registers 27
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wmsmsync/MSyncCtrlBean;",
            ">;"
        }
    .end annotation

    .line 168
    move-object/from16 v1, p0

    const-string v2, "MSyncCtrlTable"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 169
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/wmsmsync/MSyncCtrlBean;>;"
    const/4 v4, 0x0

    .line 171
    .local v4, "document":Lorg/w3c/dom/Document;
    :try_start_b
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 172
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 173
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7
    :try_end_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_19} :catch_306
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_19} :catch_2ff
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_2f8

    move-object v4, v7

    .line 183
    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    nop

    .line 186
    :try_start_1b
    const-string v0, "enableimeglobalcontrol"

    .line 187
    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mEnableImeGlobalFpsControl:Z

    .line 188
    const-string v0, "enablevoiceglobalcontrol"

    .line 189
    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mEnableVoiceGlobalFpsControl:Z

    .line 190
    iget-boolean v0, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mEnableImeGlobalFpsControl:Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_46} :catch_2ec

    if-eqz v0, :cond_62

    .line 191
    :try_start_48
    const-string v0, "defaultimefps"

    .line 192
    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mDefaultImeFps:F
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5c} :catch_5d

    goto :goto_62

    .line 286
    :catch_5d
    move-exception v0

    move-object/from16 v19, v4

    goto/16 :goto_2ef

    .line 194
    :cond_62
    :goto_62
    :try_start_62
    iget-boolean v0, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mEnableVoiceGlobalFpsControl:Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_64} :catch_2ec

    if-eqz v0, :cond_7a

    .line 195
    :try_start_66
    const-string v0, "defaultvoicefps"

    .line 196
    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 197
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mDefaultVoiceFps:F
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7a} :catch_5d

    .line 199
    :cond_7a
    :try_start_7a
    const-string v0, "globalfps"

    .line 200
    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mGlobalFPS:F

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEnableIMEGlobalFPSControl = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mEnableImeGlobalFpsControl:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " | mDefaultIMEFPS = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mDefaultImeFps:F

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\nmEnableVoiceGlobalFPSControl = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mEnableVoiceGlobalFpsControl:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " | mDefaultVoiceFPS = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mDefaultVoiceFps:F

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\nmGlobalFPS = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mGlobalFPS:F

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v0, "app"

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 209
    .local v0, "appList":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_dd
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_2e6

    .line 210
    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 211
    .local v8, "nodeApps":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 212
    .local v9, "childNodes":Lorg/w3c/dom/NodeList;
    new-instance v10, Lcom/mediatek/wmsmsync/MSyncCtrlBean;

    invoke-direct {v10}, Lcom/mediatek/wmsmsync/MSyncCtrlBean;-><init>()V

    .line 213
    .local v10, "MSyncCtrlBean":Lcom/mediatek/wmsmsync/MSyncCtrlBean;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_f1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v11, v12, :cond_2b5

    .line 214
    invoke-interface {v9, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 215
    .local v12, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_103} :catch_2ec

    const/16 v16, 0x3

    const-string v5, "imefps"

    const-string v15, "voicefps"

    const/16 v17, -0x1

    const/16 v18, 0x1

    sparse-switch v14, :sswitch_data_30e

    :cond_110
    goto :goto_14b

    :sswitch_111
    :try_start_111
    const-string v14, "activities"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_110

    const/4 v13, 0x5

    goto :goto_14d

    :sswitch_11b
    const-string v14, "slideresponse"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_110

    move/from16 v13, v18

    goto :goto_14d

    :sswitch_126
    const-string v14, "packagename"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_110

    const/4 v13, 0x0

    goto :goto_14d

    :sswitch_130
    const-string v14, "defaultfps"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_110

    const/4 v13, 0x2

    goto :goto_14d

    :sswitch_13a
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_110

    move/from16 v13, v16

    goto :goto_14d

    :sswitch_143
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_147} :catch_5d

    if-eqz v13, :cond_110

    const/4 v13, 0x4

    goto :goto_14d

    :goto_14b
    move/from16 v13, v17

    :goto_14d
    packed-switch v13, :pswitch_data_328

    move-object/from16 v20, v0

    move-object/from16 v19, v4

    move-object/from16 v21, v8

    move-object/from16 v24, v9

    .end local v0    # "appList":Lorg/w3c/dom/NodeList;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .local v19, "document":Lorg/w3c/dom/Document;
    .local v20, "appList":Lorg/w3c/dom/NodeList;
    .local v21, "nodeApps":Lorg/w3c/dom/Node;
    .local v24, "childNodes":Lorg/w3c/dom/NodeList;
    goto/16 :goto_2a4

    .line 238
    .end local v19    # "document":Lorg/w3c/dom/Document;
    .end local v20    # "appList":Lorg/w3c/dom/NodeList;
    .end local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v0    # "appList":Lorg/w3c/dom/NodeList;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :pswitch_15a
    :try_start_15a
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 239
    .local v13, "grandSunNodes":Lorg/w3c/dom/NodeList;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v14, "activityBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;>;"
    const/16 v19, 0x0

    move-object/from16 v20, v0

    move/from16 v0, v19

    .local v0, "k":I
    .restart local v20    # "appList":Lorg/w3c/dom/NodeList;
    :goto_169
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_238

    .line 242
    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_173} :catch_2ec

    .line 243
    .local v1, "grandSunNode":Lorg/w3c/dom/Node;
    move-object/from16 v19, v4

    .end local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    :try_start_175
    const-string v4, "activity"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_224

    .line 244
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 245
    .local v4, "grandGrandSunNodes":Lorg/w3c/dom/NodeList;
    new-instance v6, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;

    invoke-direct {v6}, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;-><init>()V

    .line 247
    .local v6, "activityBean":Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;
    const/16 v21, 0x0

    move-object/from16 v22, v1

    move/from16 v1, v21

    .local v1, "l":I
    .local v22, "grandSunNode":Lorg/w3c/dom/Node;
    :goto_190
    move-object/from16 v21, v8

    .end local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v21    # "nodeApps":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v1, v8, :cond_21c

    .line 248
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 249
    .local v8, "grandGrandSunNode":Lorg/w3c/dom/Node;
    move-object/from16 v23, v4

    .end local v4    # "grandGrandSunNodes":Lorg/w3c/dom/NodeList;
    .local v23, "grandGrandSunNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_338

    move-object/from16 v24, v9

    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    goto :goto_1da

    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :sswitch_1ac
    move-object/from16 v24, v9

    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    const-string v9, "name"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1da

    const/4 v4, 0x0

    goto :goto_1dc

    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :sswitch_1b8
    move-object/from16 v24, v9

    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    const-string v9, "fps"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1da

    move/from16 v4, v18

    goto :goto_1dc

    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :sswitch_1c5
    move-object/from16 v24, v9

    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1da

    const/4 v4, 0x2

    goto :goto_1dc

    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :sswitch_1cf
    move-object/from16 v24, v9

    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1da

    move/from16 v4, v16

    goto :goto_1dc

    :cond_1da
    :goto_1da
    move/from16 v4, v17

    :goto_1dc
    packed-switch v4, :pswitch_data_34a

    goto :goto_212

    .line 267
    :pswitch_1e0
    nop

    .line 268
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "atyVoiceFps":Ljava/lang/String;
    nop

    .line 270
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 269
    invoke-virtual {v6, v9}, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->setVoiceFps(F)V

    goto :goto_212

    .line 261
    .end local v4    # "atyVoiceFps":Ljava/lang/String;
    :pswitch_1ee
    nop

    .line 262
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "atyImeFps":Ljava/lang/String;
    nop

    .line 264
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->setImeFps(F)V

    .line 265
    goto :goto_212

    .line 256
    .end local v4    # "atyImeFps":Ljava/lang/String;
    :pswitch_1fc
    nop

    .line 257
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "activityFps":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->setFps(F)V

    .line 259
    goto :goto_212

    .line 251
    .end local v4    # "activityFps":Ljava/lang/String;
    :pswitch_209
    nop

    .line 252
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "activityName":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;->setName(Ljava/lang/String;)V

    .line 254
    nop

    .line 247
    .end local v4    # "activityName":Ljava/lang/String;
    .end local v8    # "grandGrandSunNode":Lorg/w3c/dom/Node;
    :goto_212
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v8, v21

    move-object/from16 v4, v23

    move-object/from16 v9, v24

    goto/16 :goto_190

    .end local v23    # "grandGrandSunNodes":Lorg/w3c/dom/NodeList;
    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .local v4, "grandGrandSunNodes":Lorg/w3c/dom/NodeList;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :cond_21c
    move-object/from16 v23, v4

    move-object/from16 v24, v9

    .line 274
    .end local v1    # "l":I
    .end local v4    # "grandGrandSunNodes":Lorg/w3c/dom/NodeList;
    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v23    # "grandGrandSunNodes":Lorg/w3c/dom/NodeList;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22a

    .line 243
    .end local v6    # "activityBean":Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;
    .end local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v22    # "grandSunNode":Lorg/w3c/dom/Node;
    .end local v23    # "grandGrandSunNodes":Lorg/w3c/dom/NodeList;
    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .local v1, "grandSunNode":Lorg/w3c/dom/Node;
    .local v8, "nodeApps":Lorg/w3c/dom/Node;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :cond_224
    move-object/from16 v22, v1

    move-object/from16 v21, v8

    move-object/from16 v24, v9

    .line 241
    .end local v1    # "grandSunNode":Lorg/w3c/dom/Node;
    .end local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    :goto_22a
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v4, v19

    move-object/from16 v8, v21

    move-object/from16 v9, v24

    goto/16 :goto_169

    .end local v19    # "document":Lorg/w3c/dom/Document;
    .end local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .local v4, "document":Lorg/w3c/dom/Document;
    .restart local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :cond_238
    move-object/from16 v19, v4

    move-object/from16 v21, v8

    move-object/from16 v24, v9

    .line 277
    .end local v0    # "k":I
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    invoke-virtual {v10, v14}, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->setActivityBeans(Ljava/util/List;)V

    .line 278
    goto/16 :goto_2a4

    .line 234
    .end local v13    # "grandSunNodes":Lorg/w3c/dom/NodeList;
    .end local v14    # "activityBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/wmsmsync/MSyncCtrlBean$ActivityBean;>;"
    .end local v19    # "document":Lorg/w3c/dom/Document;
    .end local v20    # "appList":Lorg/w3c/dom/NodeList;
    .end local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .local v0, "appList":Lorg/w3c/dom/NodeList;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :pswitch_243
    move-object/from16 v20, v0

    move-object/from16 v19, v4

    move-object/from16 v21, v8

    move-object/from16 v24, v9

    .end local v0    # "appList":Lorg/w3c/dom/NodeList;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v20    # "appList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "voiceFps":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v10, v1}, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->setVoiceFps(F)V

    .line 236
    goto :goto_2a4

    .line 230
    .end local v19    # "document":Lorg/w3c/dom/Document;
    .end local v20    # "appList":Lorg/w3c/dom/NodeList;
    .end local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .local v0, "appList":Lorg/w3c/dom/NodeList;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :pswitch_257
    move-object/from16 v20, v0

    move-object/from16 v19, v4

    move-object/from16 v21, v8

    move-object/from16 v24, v9

    .end local v0    # "appList":Lorg/w3c/dom/NodeList;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v20    # "appList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "imeFps":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v10, v1}, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->setImeFps(F)V

    .line 232
    goto :goto_2a4

    .line 226
    .end local v19    # "document":Lorg/w3c/dom/Document;
    .end local v20    # "appList":Lorg/w3c/dom/NodeList;
    .end local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .local v0, "appList":Lorg/w3c/dom/NodeList;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :pswitch_26b
    move-object/from16 v20, v0

    move-object/from16 v19, v4

    move-object/from16 v21, v8

    move-object/from16 v24, v9

    .end local v0    # "appList":Lorg/w3c/dom/NodeList;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v20    # "appList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "defaultFps":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v10, v1}, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->setFps(F)V

    .line 228
    goto :goto_2a4

    .line 221
    .end local v19    # "document":Lorg/w3c/dom/Document;
    .end local v20    # "appList":Lorg/w3c/dom/NodeList;
    .end local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .local v0, "appList":Lorg/w3c/dom/NodeList;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :pswitch_27f
    move-object/from16 v20, v0

    move-object/from16 v19, v4

    move-object/from16 v21, v8

    move-object/from16 v24, v9

    .end local v0    # "appList":Lorg/w3c/dom/NodeList;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v20    # "appList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "slideResponse":Ljava/lang/String;
    nop

    .line 223
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v10, v1}, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->setSlideResponse(Z)V

    .line 224
    goto :goto_2a4

    .line 217
    .end local v19    # "document":Lorg/w3c/dom/Document;
    .end local v20    # "appList":Lorg/w3c/dom/NodeList;
    .end local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .local v0, "appList":Lorg/w3c/dom/NodeList;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :pswitch_294
    move-object/from16 v20, v0

    move-object/from16 v19, v4

    move-object/from16 v21, v8

    move-object/from16 v24, v9

    .end local v0    # "appList":Lorg/w3c/dom/NodeList;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v20    # "appList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v0}, Lcom/mediatek/wmsmsync/MSyncCtrlBean;->setPackageName(Ljava/lang/String;)V

    .line 219
    nop

    .line 213
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v12    # "childNode":Lorg/w3c/dom/Node;
    :goto_2a4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v4, v19

    move-object/from16 v0, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v24

    const/4 v5, 0x0

    goto/16 :goto_f1

    .end local v19    # "document":Lorg/w3c/dom/Document;
    .end local v20    # "appList":Lorg/w3c/dom/NodeList;
    .end local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    .local v0, "appList":Lorg/w3c/dom/NodeList;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    :cond_2b5
    move-object/from16 v20, v0

    move-object/from16 v19, v4

    move-object/from16 v21, v8

    move-object/from16 v24, v9

    .line 283
    .end local v0    # "appList":Lorg/w3c/dom/NodeList;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v9    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v11    # "j":I
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v20    # "appList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .restart local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSyncCtrlTableBean dom2xml: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d6
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_2d6} :catch_2e4

    .line 209
    nop

    .end local v10    # "MSyncCtrlBean":Lcom/mediatek/wmsmsync/MSyncCtrlBean;
    .end local v21    # "nodeApps":Lorg/w3c/dom/Node;
    .end local v24    # "childNodes":Lorg/w3c/dom/NodeList;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v4, v19

    move-object/from16 v0, v20

    const/4 v5, 0x0

    goto/16 :goto_dd

    .line 286
    .end local v7    # "i":I
    .end local v20    # "appList":Lorg/w3c/dom/NodeList;
    :catch_2e4
    move-exception v0

    goto :goto_2ef

    .line 209
    .end local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v0    # "appList":Lorg/w3c/dom/NodeList;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v7    # "i":I
    :cond_2e6
    move-object/from16 v20, v0

    move-object/from16 v19, v4

    .line 289
    .end local v0    # "appList":Lorg/w3c/dom/NodeList;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v7    # "i":I
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    nop

    .line 290
    return-object v3

    .line 286
    .end local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    :catch_2ec
    move-exception v0

    move-object/from16 v19, v4

    .line 287
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "document":Lorg/w3c/dom/Document;
    :goto_2ef
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v19    # "document":Lorg/w3c/dom/Document;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    :catch_2f8
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "IOException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    return-object v3

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2ff
    move-exception v0

    .line 178
    .local v0, "e":Lorg/xml/sax/SAXException;
    const-string v1, "dom2xml SAXException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    return-object v3

    .line 174
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_306
    move-exception v0

    .line 175
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v1, "dom2xml ParserConfigurationException"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    return-object v3

    nop

    :sswitch_data_30e
    .sparse-switch
        -0x75923989 -> :sswitch_143
        -0x46a3ae78 -> :sswitch_13a
        0x28738308 -> :sswitch_130
        0x36391bd1 -> :sswitch_126
        0x4d0210f2 -> :sswitch_11b
        0x7a1b3bed -> :sswitch_111
    .end sparse-switch

    :pswitch_data_328
    .packed-switch 0x0
        :pswitch_294
        :pswitch_27f
        :pswitch_26b
        :pswitch_257
        :pswitch_243
        :pswitch_15a
    .end packed-switch

    :sswitch_data_338
    .sparse-switch
        -0x75923989 -> :sswitch_1cf
        -0x46a3ae78 -> :sswitch_1c5
        0x18ce9 -> :sswitch_1b8
        0x337a8b -> :sswitch_1ac
    .end sparse-switch

    :pswitch_data_34a
    .packed-switch 0x0
        :pswitch_209
        :pswitch_1fc
        :pswitch_1ee
        :pswitch_1e0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getDefaultImeFps()F
    .registers 2

    .line 128
    iget v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mDefaultImeFps:F

    return v0
.end method

.method public blacklist getDefaultVoiceFps()F
    .registers 2

    .line 132
    iget v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mDefaultVoiceFps:F

    return v0
.end method

.method public blacklist getGlobalFPS()F
    .registers 2

    .line 136
    iget v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mGlobalFPS:F

    return v0
.end method

.method public blacklist getMSyncAppCache()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/wmsmsync/MSyncCtrlBean;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mMSyncAppCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist isEnableImeGlobalFpsControl()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mEnableImeGlobalFpsControl:Z

    return v0
.end method

.method public blacklist isEnableVoiceGlobalFpsControl()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mEnableVoiceGlobalFpsControl:Z

    return v0
.end method

.method public blacklist isRead()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mIsRead:Z

    return v0
.end method

.method public blacklist loadMSyncCtrlTable()V
    .registers 7

    .line 143
    const-string v0, "close failed.."

    const-string v1, "MSyncCtrlTable"

    const-string v2, "loadMSyncCtrlTable + "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, "target":Ljava/io/File;
    const/4 v3, 0x0

    .line 147
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_b
    new-instance v4, Ljava/io/File;

    const-string v5, "system/etc/msync_ctrl_table.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 149
    const-string v4, "Target file doesn\'t exist: system/etc/msync_ctrl_table.xml"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1e} :catch_45
    .catchall {:try_start_b .. :try_end_1e} :catchall_43

    .line 159
    if-eqz v3, :cond_29

    :try_start_20
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_29

    .line 160
    :catch_24
    move-exception v4

    .line 161
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    .line 162
    .end local v4    # "e":Ljava/io/IOException;
    :cond_29
    :goto_29
    nop

    .line 150
    :goto_2a
    return-void

    .line 152
    :cond_2b
    :try_start_2b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v4

    .line 153
    invoke-direct {p0, v3}, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->parseAppListFile(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mMSyncAppCache:Ljava/util/ArrayList;

    .line 154
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mediatek/wmsmsync/MSyncCtrlTable;->mIsRead:Z
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3a} :catch_45
    .catchall {:try_start_2b .. :try_end_3a} :catchall_43

    .line 159
    :try_start_3a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 162
    :cond_3d
    :goto_3d
    goto :goto_51

    .line 160
    :catch_3e
    move-exception v4

    .line 161
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_51

    .line 158
    :catchall_43
    move-exception v4

    goto :goto_57

    .line 155
    :catch_45
    move-exception v4

    .line 156
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_46
    const-string v5, "IOException"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_43

    .line 159
    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_3d

    :try_start_4d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_3e

    goto :goto_3d

    .line 164
    :goto_51
    const-string v0, "loadMSyncCtrlTable - "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 159
    :goto_57
    if-eqz v3, :cond_62

    :try_start_59
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_62

    .line 160
    :catch_5d
    move-exception v5

    .line 161
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 162
    .end local v5    # "e":Ljava/io/IOException;
    :cond_62
    :goto_62
    nop

    .line 163
    :goto_63
    throw v4
.end method
