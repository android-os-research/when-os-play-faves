.class public Lcom/sec/android/iaft/IAFDDBManager;
.super Ljava/lang/Object;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;,
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;,
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;,
        Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHolder;
    }
.end annotation


# static fields
.field static final blacklist CONTROLINFOTB_code:I = 0x1

.field static final blacklist DB_IAFD_TB:Ljava/lang/String; = "IAFD_TB"

.field static final blacklist DB_IAFD_TB_URI:Landroid/net/Uri;

.field static blacklist DBversion:I = 0x0

.field static final blacklist EXP_32BITAPP:I = 0x1e

.field static final blacklist EXP_AllFilesAccess:I = 0x1b

.field static final blacklist EXP_FeatureControl:I = 0x26

.field static final blacklist EXP_NoEnoughSpace:I = 0x22

.field static final blacklist EXP_NoSettingsProvidersForDual:I = 0x23

.field static final blacklist EXP_OOM:I = 0x19

.field static final blacklist EXP_REMOVABLEAPP:I = 0x1f

.field static final blacklist EXP_RepairLinks:I = 0x25

.field static final blacklist EXP_RepairOnlyShowList:I = 0x27

.field static final blacklist EXP_SUPPORT_AppWhiteLIST:I = 0x24

.field static final blacklist EXP_SUPPORT_CSC:I = 0x21

.field static final blacklist EXP_WEBVIEWREMOVABLEAPP:I = 0x20

.field static final blacklist EXP_WebView:I = 0x13

.field static final blacklist HandleARDB_HotfixDB_Update:I = 0xfb

.field static final blacklist HandleDB_SMDCDB_TryInit:I = 0xfe

.field static final blacklist HandleDB_SMDCDB_Update:I = 0xfd

.field static final blacklist HandleDB_allDB_init:I = 0xff

.field static final blacklist HandleIAFDDB_HotfixDB_Update:I = 0xfc

.field private static final blacklist IAFDDBTYPE_HC:I = 0x0

.field private static final blacklist IAFDDBTYPE_HOTFIX:I = 0x2

.field private static final blacklist IAFDDBTYPE_SMDC:I = 0x1

.field static final blacklist IAFD_AUTOHORITY:Ljava/lang/String; = "com.samsung.android.sm"

.field static final blacklist IAFD_FW_Version:I = 0x5

.field static final blacklist JE_CALLSTACKTB_code:I = 0x4

.field static final blacklist JE_CLASSNAMETB_code:I = 0x2

.field static final blacklist JE_DETAILMSGTB_code:I = 0x3

.field private static final blacklist MAX_DBINIT_RETRY_CNT:I = 0x19

.field static final blacklist NE_CALLSTACKTB_code:I = 0x5

.field static final blacklist NE_HEADERINFOTB_code:I = 0x6

.field private static final blacklist TAG:Ljava/lang/String; = "IAFDDBManager"

.field static final blacklist columnsSMTB:[Ljava/lang/String;

.field static blacklist isDBIniting:Z = false

.field static blacklist mCurDBIndex:I = 0x0

.field static blacklist mDBInitReTryCnt:I = 0x0

.field private static final blacklist mReTryInterval:J = 0x1388L


# instance fields
.field private blacklist isCHNModel:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

.field private blacklist mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

.field private blacklist mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

.field private blacklist mRegisteredSmartManagerIAFDObserver:Z

.field private blacklist mSalesCode:Ljava/lang/String;

.field private blacklist mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDDBManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIfadDBData(Lcom/sec/android/iaft/IAFDDBManager;)[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRegisteredSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmartManagerIAFDObserver(Lcom/sec/android/iaft/IAFDDBManager;Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitARDBHotfix(Lcom/sec/android/iaft/IAFDDBManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->initARDBHotfix()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitDBByURIOrFile(Lcom/sec/android/iaft/IAFDDBManager;ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/iaft/IAFDDBManager;->initDBByURIOrFile(ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitIAFDDBHotfix(Lcom/sec/android/iaft/IAFDDBManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->initIAFDDBHotfix()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitTBs(Lcom/sec/android/iaft/IAFDDBManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->initTBs()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msyncDBType(Lcom/sec/android/iaft/IAFDDBManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->syncDBType()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 7

    .line 71
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mDBInitReTryCnt:I

    .line 72
    sput-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 73
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    .line 76
    const-string/jumbo v1, "tbID"

    const-string v2, "expID"

    const-string v3, "enable"

    const-string v4, "keyWord"

    const-string/jumbo v5, "rule"

    const-string/jumbo v6, "suggestion"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iaft/IAFDDBManager;->columnsSMTB:[Ljava/lang/String;

    .line 81
    const-string v0, "content://com.samsung.android.sm/IAFD_TB"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI:Landroid/net/Uri;

    .line 83
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 5

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v3, 0x2

    aput-object v2, v0, v3

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    .line 90
    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    .line 92
    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    .line 96
    iput-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    .line 97
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDBManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/sec/android/iaft/IAFDDBManager;
    .registers 1

    .line 105
    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist initARDBHotfix()V
    .registers 1

    .line 384
    return-void
.end method

.method private blacklist initDBByURIOrFile(ZLandroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .registers 29
    .param p1, "isURI"    # Z
    .param p2, "db_uri"    # Landroid/net/Uri;
    .param p3, "dbPath"    # Ljava/lang/String;

    .line 184
    move-object/from16 v1, p0

    const-string v0, "1"

    const/4 v2, 0x0

    .line 185
    .local v2, "iafd_data":Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    const/4 v3, 0x0

    .line 186
    .local v3, "mdb":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 189
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_25

    .line 190
    :try_start_b
    iget-object v7, v1, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/iaft/IAFDDBManager;->DB_IAFD_TB_URI:Landroid/net/Uri;

    sget-object v10, Lcom/sec/android/iaft/IAFDDBManager;->columnsSMTB:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_20

    move-object v4, v7

    move-object/from16 v7, p3

    goto :goto_3a

    .line 327
    :catch_20
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_2a9

    .line 192
    :cond_25
    move-object/from16 v7, p3

    :try_start_27
    invoke-static {v7, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_2a8

    .line 193
    .end local v3    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    .local v8, "mdb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2b
    const-string v9, "IAFD_TB"

    sget-object v10, Lcom/sec/android/iaft/IAFDDBManager;->columnsSMTB:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_38} :catch_2a5

    move-object v4, v3

    move-object v3, v8

    .line 196
    .end local v8    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    :goto_3a
    if-eqz v4, :cond_2a4

    .line 197
    :try_start_3c
    new-instance v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-direct {v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;-><init>()V

    move-object v2, v8

    .line 199
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x0

    if-eqz v8, :cond_ef

    .line 200
    new-instance v8, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-direct {v8}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;-><init>()V

    iput-object v8, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    .line 201
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "tmpStr":Ljava/lang/String;
    const-string v9, ">,<"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "strArray":[Ljava/lang/String;
    iget-object v10, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v5, v9, v15

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v10, v5}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setEnable(Z)V

    .line 205
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v10, v9, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setJE_cstack_maxSize(I)V

    .line 206
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v10, v9, v11

    invoke-virtual {v5, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setJE_cstack_start(Ljava/lang/String;)V

    .line 207
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v10, v9, v12

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cstack_maxSize(I)V

    .line 208
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v10, v9, v14

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cHeader_maxSize(I)V

    .line 209
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    aget-object v10, v9, v13

    invoke-virtual {v5, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setNE_cstack_start(Ljava/lang/String;)V

    .line 212
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/16 v10, 0x100

    invoke-virtual {v5, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setReason_maxSize(I)V

    .line 213
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/16 v10, 0x200

    invoke-virtual {v5, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCallstack_maxSize(I)V

    .line 214
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v13}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 216
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sput v5, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    .line 217
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    sget v10, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    invoke-virtual {v5, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setDBVersion(I)V

    .line 218
    sget v5, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    if-le v5, v6, :cond_d9

    .line 219
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x6

    aget-object v13, v9, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setReason_maxSize(I)V

    .line 220
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x7

    aget-object v13, v9, v10

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCallstack_maxSize(I)V

    .line 222
    :cond_d9
    sget v5, Lcom/sec/android/iaft/IAFDDBManager;->DBversion:I

    if-ge v5, v12, :cond_e3

    .line 223
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v10, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_e3
    iget-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const-string v10, "android.app.stubs>,<com.android.cts>,<com.android.test>,<com.android.app1>,<com.android.app2>,<com.android.app3"

    invoke-virtual {v5, v0, v10}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setWhiteList(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v0, v15}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setSupportRepair(Z)V

    .line 233
    .end local v8    # "tmpStr":Ljava/lang/String;
    .end local v9    # "strArray":[Ljava/lang/String;
    :cond_ef
    const/16 v0, 0x9

    new-array v0, v0, [I

    aput v15, v0, v15

    aput v15, v0, v6

    aput v15, v0, v11

    aput v15, v0, v12

    aput v15, v0, v14

    const/4 v5, 0x5

    aput v15, v0, v5

    const/4 v5, 0x6

    aput v15, v0, v5

    const/4 v5, 0x7

    aput v15, v0, v5

    const/16 v5, 0x8

    aput v15, v0, v5

    .line 234
    .local v0, "arrayCnt":[I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v5, "hashMapCN":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    sub-int/2addr v8, v6

    new-array v8, v8, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 237
    .local v8, "tmpTB":[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    const/4 v9, 0x0

    .line 238
    .local v9, "i":I
    :goto_117
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_224

    .line 239
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 240
    .local v10, "iTB":I
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 241
    .local v13, "curDBVersion":I
    const/4 v15, 0x5

    if-gt v13, v15, :cond_12a

    move v15, v6

    goto :goto_12b

    :cond_12a
    const/4 v15, 0x0

    .line 242
    .local v15, "enable":Z
    :goto_12b
    if-nez v13, :cond_12e

    .line 243
    const/4 v15, 0x0

    .line 246
    :cond_12e
    if-ne v10, v11, :cond_1f2

    .line 248
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    packed-switch v16, :pswitch_data_2b4

    .line 281
    :pswitch_137
    new-instance v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    goto/16 :goto_1be

    .line 273
    :pswitch_13b
    if-eqz v15, :cond_1b7

    .line 274
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->sethashMapOfLinkForVocAppOnlyShow(Ljava/lang/String;)V

    goto/16 :goto_1b7

    .line 277
    :pswitch_148
    if-eqz v15, :cond_1b7

    .line 278
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-boolean v6, v1, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    invoke-virtual {v11, v12, v14, v6}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setIAFDDBControlFeature(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1b7

    .line 269
    :pswitch_15b
    if-eqz v15, :cond_1b7

    .line 270
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->sethashMapOfLinkForVocApp(Ljava/lang/String;)V

    goto :goto_1b7

    .line 265
    :pswitch_168
    if-eqz v15, :cond_1b7

    .line 266
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x5

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v12, v14}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setWhiteList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b7

    .line 261
    :pswitch_17a
    if-eqz v15, :cond_1b7

    .line 262
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x5

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iget-object v11, v1, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v12, v14, v11}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setCSCFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b7

    .line 257
    :pswitch_18e
    if-eqz v15, :cond_1b7

    .line 258
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setwebView_pkgName(Ljava/lang/String;)V

    goto :goto_1b7

    .line 253
    :pswitch_19b
    if-eqz v15, :cond_1b7

    .line 254
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setreMovableAppPaths(Ljava/lang/String;)V

    goto :goto_1b7

    .line 250
    :pswitch_1a8
    iget-object v6, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v11, v14}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->setenableDetectAll32bitApp(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 251
    nop

    .line 238
    .end local v10    # "iTB":I
    .end local v13    # "curDBVersion":I
    .end local v15    # "enable":Z
    :cond_1b7
    :goto_1b7
    const/4 v6, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x0

    goto/16 :goto_117

    .line 281
    .restart local v10    # "iTB":I
    .restart local v13    # "curDBVersion":I
    .restart local v15    # "enable":Z
    :goto_1be
    const/4 v11, 0x1

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/4 v11, 0x3

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v11, 0x5

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v6

    move/from16 v17, v10

    move/from16 v23, v9

    move-object/from16 v24, v5

    invoke-direct/range {v16 .. v24}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V

    aput-object v6, v8, v9

    .line 282
    aget v6, v0, v10

    const/4 v11, 0x1

    add-int/2addr v6, v11

    aput v6, v0, v10

    add-int/lit8 v9, v9, 0x1

    .line 283
    const/4 v6, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x0

    goto/16 :goto_117

    .line 287
    :cond_1f2
    new-instance v6, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    const/4 v11, 0x1

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const/4 v11, 0x3

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v11, 0x4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v11, 0x5

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v6

    move/from16 v17, v10

    invoke-direct/range {v16 .. v22}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;-><init>(IILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v8, v9

    .line 288
    aget v6, v0, v10

    const/4 v11, 0x1

    add-int/2addr v6, v11

    aput v6, v0, v10

    add-int/lit8 v9, v9, 0x1

    move v6, v11

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x0

    goto/16 :goto_117

    .line 291
    .end local v10    # "iTB":I
    .end local v13    # "curDBVersion":I
    .end local v15    # "enable":Z
    :cond_224
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 292
    const/4 v4, 0x0

    .line 294
    const/4 v6, 0x0

    .local v6, "iStart":I
    const/4 v10, 0x0

    .line 296
    .local v10, "iEnd":I
    iput-object v5, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->hashMapJE_ClassNameTB:Ljava/util/HashMap;

    .line 297
    const/4 v11, 0x2

    aget v12, v0, v11

    new-array v12, v12, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v12, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 298
    aget v11, v0, v11

    add-int/2addr v10, v11

    .line 299
    const/4 v9, 0x0

    :goto_237
    if-ge v6, v10, :cond_244

    .line 300
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_ClassNameTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9

    .line 299
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_237

    .line 303
    :cond_244
    const/4 v11, 0x3

    aget v12, v0, v11

    new-array v12, v12, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v12, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 304
    aget v11, v0, v11

    add-int/2addr v10, v11

    .line 305
    const/4 v9, 0x0

    :goto_24f
    if-ge v6, v10, :cond_25c

    .line 306
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_DetailMsgTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9

    .line 305
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_24f

    .line 309
    :cond_25c
    const/4 v11, 0x4

    aget v12, v0, v11

    new-array v12, v12, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v12, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 310
    aget v11, v0, v11

    add-int/2addr v10, v11

    .line 311
    const/4 v9, 0x0

    :goto_267
    if-ge v6, v10, :cond_274

    .line 312
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->JE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9

    .line 311
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_267

    .line 315
    :cond_274
    const/4 v11, 0x5

    aget v12, v0, v11

    new-array v12, v12, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v12, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 316
    aget v11, v0, v11

    add-int/2addr v10, v11

    .line 317
    const/4 v9, 0x0

    :goto_27f
    if-ge v6, v10, :cond_28c

    .line 318
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_CallStackTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9

    .line 317
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_27f

    .line 321
    :cond_28c
    const/4 v11, 0x6

    aget v12, v0, v11

    new-array v12, v12, [Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    iput-object v12, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    .line 322
    aget v11, v0, v11

    add-int/2addr v10, v11

    .line 323
    const/4 v9, 0x0

    :goto_297
    if-ge v6, v10, :cond_2a4

    .line 324
    iget-object v11, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->NE_HeaderInfoTB:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;

    aget-object v12, v8, v6

    aput-object v12, v11, v9
    :try_end_29f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_29f} :catch_2a8

    .line 323
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_297

    .line 326
    .end local v0    # "arrayCnt":[I
    .end local v5    # "hashMapCN":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "iStart":I
    .end local v8    # "tmpTB":[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_ENTITY;
    .end local v9    # "i":I
    .end local v10    # "iEnd":I
    :cond_2a4
    return-object v2

    .line 327
    .end local v3    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    .local v8, "mdb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2a5
    move-exception v0

    move-object v3, v8

    goto :goto_2a9

    .end local v8    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "mdb":Landroid/database/sqlite/SQLiteDatabase;
    :catch_2a8
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    :goto_2a9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_2b1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 332
    :cond_2b1
    const/4 v5, 0x0

    return-object v5

    nop

    :pswitch_data_2b4
    .packed-switch 0x1e
        :pswitch_1a8
        :pswitch_19b
        :pswitch_18e
        :pswitch_17a
        :pswitch_137
        :pswitch_137
        :pswitch_168
        :pswitch_15b
        :pswitch_148
        :pswitch_13b
    .end packed-switch
.end method

.method private blacklist initIAFDDBHotfix()V
    .registers 1

    .line 366
    return-void
.end method

.method private blacklist initTBs()V
    .registers 7

    .line 386
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 387
    return-void

    .line 389
    :cond_5
    sget-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    if-eqz v0, :cond_a

    .line 391
    return-void

    .line 393
    :cond_a
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 396
    const/4 v1, 0x0

    :try_start_e
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v2, v2, v1

    if-nez v2, :cond_2d

    .line 397
    invoke-static {}, Lcom/sec/android/iaft/IAFDHCDatabase;->getInstance()Lcom/sec/android/iaft/IAFDHCDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/iaft/IAFDHCDatabase;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 398
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-static {}, Lcom/sec/android/iaft/IAFDDBManager;->getInstance()Lcom/sec/android/iaft/IAFDDBManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/iaft/IAFDDBManager;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v3

    aput-object v3, v2, v1

    .line 401
    :cond_2d
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v0, v2, v0

    if-nez v0, :cond_3e

    .line 402
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v2, 0xfe

    invoke-virtual {v0, v2}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3e} :catch_3f

    .line 415
    :cond_3e
    goto :goto_47

    .line 412
    :catch_3f
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IAFDDBManager"

    const-string v3, "happened Exception : get TB fail!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_47
    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->syncDBType()V

    .line 418
    sput-boolean v1, Lcom/sec/android/iaft/IAFDDBManager;->isDBIniting:Z

    .line 419
    return-void
.end method

.method private blacklist syncDBType()V
    .registers 4

    .line 336
    const/4 v0, -0x1

    .line 337
    .local v0, "curDBVer":I
    const/4 v1, -0x1

    sput v1, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    .line 338
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_25

    .line 339
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v2, v2, v1

    if-eqz v2, :cond_22

    .line 340
    iget-object v2, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->getDBVersion()I

    move-result v2

    if-lt v2, v0, :cond_22

    .line 341
    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;->controlInfo:Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_CONTROLINFO;->getDBVersion()I

    move-result v0

    .line 342
    sput v1, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    .line 338
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 346
    .end local v1    # "i":I
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncDBType(): mCurDBIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curDBVer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IAFDDBManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method


# virtual methods
.method public blacklist deInit()V
    .registers 4

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z

    if-eqz v0, :cond_12

    .line 144
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSmartManagerIAFDObserver:Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mRegisteredSmartManagerIAFDObserver:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 149
    :cond_12
    goto :goto_1b

    .line 147
    :catch_13
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IAFDDBManager"

    const-string v2, "exception occurred in unregisterContentObserver()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method

.method public blacklist getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;
    .registers 3

    .line 113
    sget v0, Lcom/sec/android/iaft/IAFDDBManager;->mCurDBIndex:I

    if-gez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_6
    iget-object v1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "salesCode"    # Ljava/lang/String;
    .param p3, "isCHN"    # Z

    .line 123
    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDDBManager;->setContext(Landroid/content/Context;)V

    .line 124
    iput-object p2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    .line 125
    iput-boolean p3, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    .line 127
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_2a

    .line 128
    invoke-static {}, Lcom/sec/android/iaft/IAFDHCDatabase;->getInstance()Lcom/sec/android/iaft/IAFDHCDatabase;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/iaft/IAFDDBManager;->mSalesCode:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sec/android/iaft/IAFDDBManager;->isCHNModel:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/iaft/IAFDHCDatabase;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIfadDBData:[Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    invoke-static {}, Lcom/sec/android/iaft/IAFDHCDatabase;->getInstance()Lcom/sec/android/iaft/IAFDHCDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/iaft/IAFDHCDatabase;->getData()Lcom/sec/android/iaft/IAFDDiagnosis$IAFD_DATA;

    move-result-object v2

    aput-object v2, v0, v1

    .line 130
    invoke-direct {p0}, Lcom/sec/android/iaft/IAFDDBManager;->syncDBType()V

    .line 133
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    if-nez v0, :cond_3b

    .line 134
    new-instance v0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    const-string v2, "IAFDDBManagerThread"

    invoke-direct {v0, p0, v2, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;-><init>(Lcom/sec/android/iaft/IAFDDBManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerThread:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;

    .line 135
    invoke-virtual {v0}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerThread;->start()V

    goto :goto_46

    .line 137
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager;->mIAFDDBManagerHandler:Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    :goto_46
    return-void
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method public blacklist updateHotfixDB_ARDB()V
    .registers 1

    .line 121
    return-void
.end method

.method public blacklist updateHotfixDB_IAFDDB()V
    .registers 1

    .line 118
    return-void
.end method
