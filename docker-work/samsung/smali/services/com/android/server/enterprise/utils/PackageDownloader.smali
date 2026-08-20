.class public Lcom/android/server/enterprise/utils/PackageDownloader;
.super Ljava/lang/Object;
.source "PackageDownloader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageDownloader"

.field public static UNSPECIFIED:I = -0x1

.field public static mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;


# instance fields
.field public final DEBUG:Z

.field public mContext:Landroid/content/Context;

.field public mDownloadManager:Landroid/app/DownloadManager;

.field public mDownloadQueueIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDownloadQueueIdMap(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleDownloadComplete(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadComplete()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleDownloadProcess(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNetworkState(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->handleNetworkState()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->DEBUG:Z

    .line 70
    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/PackageDownloader$1;-><init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    .line 54
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "edm.intent.action.sec.CHECK_REENROLLMENT"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;
    .registers 2

    .line 63
    sget-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/PackageDownloader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    .line 67
    :cond_b
    sget-object p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    return-object p0
.end method


# virtual methods
.method public final cancelAllDownload()V
    .registers 9

    .line 344
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 345
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_58

    .line 347
    new-array v1, v0, [Ljava/lang/String;

    .line 348
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 351
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 352
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_31
    :goto_31
    if-ge v3, v0, :cond_53

    .line 360
    aget-object v2, v1, v3

    .line 361
    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 363
    sget v6, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4b

    .line 364
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    .line 365
    :cond_4b
    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 367
    :cond_53
    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_58
    return-void
.end method

.method public final checkPackage(Ljava/lang/String;)Z
    .registers 14

    .line 233
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 234
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [J

    const/4 v6, 0x0

    aput-wide v0, v5, v6

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_60

    .line 236
    :try_start_24
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_60

    const-string/jumbo v5, "status"

    .line 237
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v7, "local_uri"

    .line 239
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_58

    .line 241
    new-instance v8, Ljava/io/File;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7
    :try_end_57
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_57} :catch_5d
    .catchall {:try_start_24 .. :try_end_57} :catchall_5a

    goto :goto_62

    :cond_58
    move-object v7, v3

    goto :goto_62

    :catchall_5a
    move-exception p0

    goto/16 :goto_ff

    :catch_5d
    move-exception v0

    goto/16 :goto_ed

    :cond_60
    move-object v7, v3

    move v5, v4

    :goto_62
    if-nez v7, :cond_6a

    if-eqz v2, :cond_69

    .line 302
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_69
    return v6

    .line 252
    :cond_6a
    :try_start_6a
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    iget-object v9, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_80

    .line 255
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    goto :goto_81

    :cond_80
    move-object v9, v3

    :goto_81
    if-eqz v9, :cond_88

    .line 256
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_88

    move-object v3, v9

    :cond_88
    if-nez v3, :cond_9a

    .line 262
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_98

    const v1, 0x1040bb4

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    :cond_98
    :goto_98
    move v4, v6

    goto :goto_e6

    .line 265
    :cond_9a
    iget-object v9, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/server/enterprise/utils/ConstrainedState;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;

    move-result-object v9

    .line 266
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, p1, v10}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v4, :cond_cb

    .line 268
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c0

    .line 269
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v8, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c0
    .catch Ljava/lang/SecurityException; {:try_start_6a .. :try_end_c0} :catch_5d
    .catchall {:try_start_6a .. :try_end_c0} :catchall_5a

    :cond_c0
    if-ne v5, v11, :cond_98

    .line 275
    :try_start_c2
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_c6
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_5a

    goto :goto_e6

    :catch_c6
    move-exception v0

    .line 278
    :try_start_c7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_98

    .line 282
    :cond_cb
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v9, p1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    if-ne v0, v4, :cond_98

    .line 283
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d9
    .catch Ljava/lang/SecurityException; {:try_start_c7 .. :try_end_d9} :catch_5d
    .catchall {:try_start_c7 .. :try_end_d9} :catchall_5a

    if-eqz v0, :cond_98

    if-ne v5, v11, :cond_98

    .line 286
    :try_start_dd
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e0} :catch_e1
    .catchall {:try_start_dd .. :try_end_e0} :catchall_5a

    goto :goto_e6

    :catch_e1
    move-exception v0

    .line 289
    :try_start_e2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e5
    .catch Ljava/lang/SecurityException; {:try_start_e2 .. :try_end_e5} :catch_5d
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_5a

    goto :goto_98

    :goto_e6
    if-eqz v2, :cond_eb

    .line 302
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_eb
    move v6, v4

    goto :goto_f9

    :goto_ed
    :try_start_ed
    const-string v1, "PackageDownloader"

    const-string v3, "failed to checkPackage"

    .line 299
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f4
    .catchall {:try_start_ed .. :try_end_f4} :catchall_5a

    if-eqz v2, :cond_f9

    .line 302
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f9
    :goto_f9
    if-nez v6, :cond_fe

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V

    :cond_fe
    return v6

    :goto_ff
    if-eqz v2, :cond_104

    .line 302
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_104
    throw p0
.end method

.method public final download(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_4b

    if-eqz p2, :cond_4b

    .line 205
    :try_start_4
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 206
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    if-eqz v0, :cond_4b

    if-eqz p2, :cond_4b

    .line 208
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 209
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget v2, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4b

    .line 210
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-direct {v0, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 211
    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->setDestinationToSystemCache()Landroid/app/DownloadManager$Request;

    .line 212
    iget-object p2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {p2, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    .line 213
    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_46} :catch_47

    goto :goto_4b

    :catch_47
    move-exception p0

    .line 218
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;
    .registers 2

    const-string p0, "download"

    .line 224
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/DownloadManager;

    return-object p0
.end method

.method public final handleDownloadComplete()V
    .registers 9

    .line 129
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4e

    .line 133
    new-array v1, v0, [Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 137
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_31
    :goto_31
    if-ge v3, v0, :cond_4e

    .line 146
    aget-object v2, v1, v3

    .line 147
    iget-object v4, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 148
    sget v6, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4b

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->checkPackage(Ljava/lang/String;)Z

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_4e
    return-void
.end method

.method public final handleDownloadProcess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_29

    .line 104
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->isNetworkConnectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_29

    .line 105
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 106
    :cond_1a
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    sget v1, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/utils/PackageDownloader;->download(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public final handleNetworkState()V
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->isNetworkConnectionAvailable()Z

    move-result v0

    if-nez v0, :cond_17

    .line 122
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    const v1, 0x1040bb3

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 124
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/PackageDownloader;->cancelAllDownload()V

    :cond_17
    return-void
.end method

.method public final installPackage(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final isApplicationInstalled(Ljava/lang/String;)Z
    .registers 6

    .line 192
    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 193
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 194
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 195
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    return v0

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_25
    return v1
.end method

.method public final isConnectionAvailable(I)Z
    .registers 4

    .line 177
    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_d

    const-string v0, "connectivity"

    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    const/4 v0, 0x0

    if-nez p0, :cond_12

    return v0

    .line 181
    :cond_12
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 182
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 183
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, p1, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    return v0
.end method

.method public final isNetworkConnectionAvailable()Z
    .registers 5

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->isConnectionAvailable(I)Z

    move-result v1

    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->isConnectionAvailable(I)Z

    move-result v3

    if-nez v1, :cond_10

    if-eqz v3, :cond_f

    goto :goto_10

    :cond_f
    move v0, v2

    :cond_10
    :goto_10
    if-nez v0, :cond_21

    .line 162
    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_21

    const v0, 0x1040bb5

    .line 163
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    goto :goto_22

    :cond_21
    move v2, v0

    :goto_22
    return v2
.end method

.method public final postDownload(Ljava/lang/String;)V
    .registers 7

    .line 402
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 403
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 404
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-eqz p1, :cond_38

    .line 406
    sget v2, Lcom/android/server/enterprise/utils/PackageDownloader;->UNSPECIFIED:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_38

    .line 407
    iget-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/utils/PackageDownloader;->getDownloadManager(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    .line 408
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    .line 412
    :cond_38
    iget-object p0, p0, Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    :cond_3e
    const-string p0, "PackageDownloader"

    const-string/jumbo p1, "something\'s wrong...size is 0"

    .line 414
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    return-void
.end method
