.class public Lcom/android/server/semclipboard/SemClipboardService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "SemClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;,
        Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;
    }
.end annotation


# static fields
.field public static final MAX_SECOND_USER_ID:I = 0xc8

.field public static final MIN_SECOND_USER_ID:I = 0xa

.field public static final TAG:Ljava/lang/String; = "SemClipboardService"

.field public static sService:Landroid/content/IClipboard; = null

.field public static final semUriListClipData:Ljava/lang/String; = "SemUriListClipData"


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field public final mClipboardEventListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mEnableFormatId:I

.field public final mPermissionOwner:Landroid/os/IBinder;

.field public final mUgm:Landroid/app/IUriGrantsManager;

.field public final mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$mmigrationClipboardToKeyboard(Lcom/android/server/semclipboard/SemClipboardService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/semclipboard/SemClipboardService;->migrationClipboardToKeyboard()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 110
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 89
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    const-string v0, "SemClipboardService"

    const-string v1, "SemClipboardService start"

    .line 111
    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {}, Landroid/sec/clipboard/util/CompatabilityHelper;->migrationClipboard()V

    .line 115
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    .line 116
    const-class v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const-string v1, "clipboard"

    .line 117
    invoke-interface {v0, v1}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const-string v0, "appops"

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 121
    iget-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 122
    iget-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 123
    iget-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->RCP_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    iget-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_DENYLIST_APP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 125
    iget-object p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_ALLOWLIST_APP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 127
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.knox.clipboard.sync"

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/semclipboard/SemClipboardService$KNOXReceiver;-><init>(Lcom/android/server/semclipboard/SemClipboardService;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static getService()Landroid/content/IClipboard;
    .registers 2

    .line 186
    sget-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "clipboard"

    .line 189
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v0

    sput-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    if-nez v0, :cond_1a

    const-string v0, "SemClipboardService"

    const-string v1, "Original clipboard service is null!"

    .line 193
    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1a
    sget-object v0, Lcom/android/server/semclipboard/SemClipboardService;->sService:Landroid/content/IClipboard;

    return-object v0
.end method


# virtual methods
.method public addClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;Ljava/lang/String;)V
    .registers 6

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_16

    .line 149
    :try_start_3
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2, p2}, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 150
    monitor-exit v0

    goto :goto_1a

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    :try_start_15
    throw p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_16} :catch_16

    :catch_16
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method public final convertClipToSemClip(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_b7

    .line 403
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_b

    goto/16 :goto_b7

    .line 407
    :cond_b
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "SemUriListClipData"

    .line 411
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_93

    const-string/jumbo v2, "startDoPDrag"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_93

    .line 424
    :cond_26
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    const-string/jumbo v2, "text/html"

    .line 427
    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 428
    new-instance p0, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;-><init>()V

    .line 429
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setHtml(Ljava/lang/CharSequence;)Z

    .line 430
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setClipData(Landroid/content/ClipData;)V

    return-object p0

    .line 436
    :cond_43
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 437
    new-instance p0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    .line 438
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setText(Ljava/lang/CharSequence;)Z

    .line 439
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setClipData(Landroid/content/ClipData;)V

    return-object p0

    :cond_59
    const-string/jumbo v2, "text/vnd.android.intent"

    .line 444
    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 445
    new-instance p0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>()V

    .line 446
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setIntent(Landroid/content/Intent;)Z

    .line 447
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setClipData(Landroid/content/ClipData;)V

    return-object p0

    :cond_72
    const-string/jumbo v2, "text/uri-list"

    .line 452
    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 453
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_82

    goto :goto_83

    :cond_82
    return-object p0

    .line 454
    :cond_83
    :goto_83
    new-instance p0, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;-><init>()V

    .line 455
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setUri(Landroid/net/Uri;)Z

    .line 456
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setClipData(Landroid/content/ClipData;)V

    return-object p0

    .line 412
    :cond_93
    :goto_93
    new-instance p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;-><init>()V

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 415
    :goto_9d
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v3, v1, :cond_b1

    .line 416
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    .line 419
    :cond_b1
    invoke-virtual {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setUriList(Ljava/util/ArrayList;)Z

    .line 420
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setClipData(Landroid/content/ClipData;)V

    :cond_b7
    :goto_b7
    return-object p0
.end method

.method public final convertSemClipToClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/content/ClipData;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 354
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e8

    const/4 v3, 0x2

    if-eq v1, v3, :cond_8d

    const/4 v3, 0x4

    if-eq v1, v3, :cond_7a

    const/16 v3, 0x8

    if-eq v1, v3, :cond_6b

    const/16 v3, 0x10

    if-eq v1, v3, :cond_56

    const/16 p0, 0x20

    if-eq v1, p0, :cond_1e

    return-object v0

    .line 390
    :cond_1e
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    .line 391
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    move-result-object p0

    .line 392
    new-instance p1, Landroid/content/ClipData;

    const-string/jumbo v0, "text/uri-list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ClipData$Item;

    const/4 v3, 0x0

    .line 393
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {v1, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    const-string v3, "SemUriListClipData"

    invoke-direct {p1, v3, v0, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 394
    :goto_3e
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_55

    .line 395
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_55
    return-object p1

    .line 364
    :cond_56
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .line 365
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    .line 368
    :cond_6b
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    .line 369
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    .line 360
    :cond_7a
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 361
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    .line 372
    :cond_8d
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    .line 373
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    .line 375
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/semclipboard"

    const-string/jumbo v4, "temp"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_ad

    .line 377
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_bc

    :cond_ad
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2}, Landroid/sec/clipboard/util/FileHelper;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 378
    :cond_bc
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    .line 379
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 382
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->insertContentUri(Landroid/content/Context;Ljava/lang/String;)V

    .line 384
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "SemImageClipData"

    invoke-static {p0, v0, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    :cond_e7
    return-object v0

    .line 356
    :cond_e8
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    .line 357
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public getFilter()I
    .registers 1

    .line 172
    iget p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    return p0
.end method

.method public getPrimarySemClip(Ljava/lang/String;I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .registers 4

    .line 338
    :try_start_0
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 340
    invoke-interface {v0, p1, p2}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;

    move-result-object p1

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->convertClipToSemClip(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPrimarySemClip, Exception : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemClipboardService"

    invoke-static {p1, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 15

    if-eqz p1, :cond_33

    .line 539
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_33

    .line 541
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 543
    :try_start_13
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mUgm:Landroid/app/IUriGrantsManager;

    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 544
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 546
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    move v4, p2

    move-object v5, p3

    move v9, p4

    .line 543
    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2a} :catch_30
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2b

    goto :goto_30

    :catchall_2b
    move-exception p0

    .line 551
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    throw p0

    .line 551
    :catch_30
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_33
    :goto_33
    return-void
.end method

.method public hasPrimaryClip(Ljava/lang/String;I)Z
    .registers 3

    .line 465
    :try_start_0
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 467
    invoke-interface {p0, p1, p2}, Landroid/content/IClipboard;->hasPrimaryClip(Ljava/lang/String;I)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "hasPrimaryClip, Exception : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemClipboardService"

    invoke-static {p1, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public final insertToClipboard(Landroid/content/ClipData;I)Landroid/net/Uri;
    .registers 16

    const-string v0, "direct_clip"

    const-string v1, "com.microsoft.appmanager"

    const-string v2, "android.content.extra.IS_SENSITIVE"

    .line 245
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x0

    if-gtz v3, :cond_e

    return-object v4

    .line 251
    :cond_e
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    .line 252
    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    .line 253
    invoke-virtual {v5}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v7

    .line 255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 257
    :try_start_1e
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "caller_app_uid"

    .line 259
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "clip_label"

    if-eqz v6, :cond_35

    .line 263
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_36

    :cond_35
    move-object v12, v4

    :goto_36
    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_5c

    .line 267
    invoke-virtual {v7, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 268
    invoke-virtual {v7, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 269
    invoke-virtual {v7, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 273
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 274
    :goto_63
    invoke-virtual {v5}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v7
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_67} :catch_10b
    .catchall {:try_start_1e .. :try_end_67} :catchall_109

    const-string v11, ","

    if-ge v2, v7, :cond_7a

    if-eqz v2, :cond_70

    .line 275
    :try_start_6d
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_70
    invoke-virtual {v5, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_7a
    const-string v2, "clip_mimetypes"

    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    const-string v2, "clip_text"

    .line 283
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_98

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_99

    :cond_98
    move-object v5, v4

    :goto_99
    invoke-virtual {v10, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "clip_html"

    .line 286
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_b4

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b5

    :cond_b4
    move-object v0, v4

    :goto_b5
    if-eqz v0, :cond_c0

    .line 291
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v5, "com.samsung.android.honeyboard"

    invoke-virtual {p0, v2, p2, v5, v1}, Lcom/android/server/semclipboard/SemClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    :cond_c0
    const-string p2, "clip_uri"

    .line 293
    invoke-virtual {v10, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "startDoPDrag"

    .line 296
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f5

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_d3
    if-ge v1, v3, :cond_ec

    if-eqz v1, :cond_da

    .line 300
    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_da
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    :cond_ec
    const-string p1, "clip_uri_list"

    .line 304
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v10, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_f5
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.samsung.android.honeyboard.provider.RichcontentProvider/clipboard"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_105} :catch_10b
    .catchall {:try_start_6d .. :try_end_105} :catchall_109

    .line 311
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_109
    move-exception p0

    goto :goto_12a

    :catch_10b
    move-exception p0

    :try_start_10c
    const-string p1, "SemClipboardService"

    .line 309
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception occurs in insertContentUri because "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catchall {:try_start_10c .. :try_end_126} :catchall_109

    .line 311
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :goto_12a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    throw p0
.end method

.method public final insertToClipboardForMigration(Lcom/samsung/android/content/clipboard/data/SemClipData;I)V
    .registers 11

    if-eqz p1, :cond_106

    .line 628
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "caller_app_uid"

    .line 629
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "type"

    .line 630
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "time_stamp"

    .line 631
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "is_migration"

    .line 632
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "user_id"

    .line 633
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "locked"

    .line 634
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 636
    instance-of p2, p1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_53} :catch_eb

    const-string v1, "clip_text"

    const-string v2, "clip_mimetypes"

    if-eqz p2, :cond_6d

    :try_start_59
    const-string/jumbo p2, "text/plain"

    .line 637
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_db

    .line 639
    :cond_6d
    instance-of p2, p1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    if-eqz p2, :cond_8d

    const-string/jumbo p2, "text/html"

    .line 640
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    move-object p2, p1

    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getPlainText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "clip_html"

    .line 642
    check-cast p1, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_db

    .line 643
    :cond_8d
    instance-of p2, p1, Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_8f} :catch_eb

    const-string v1, "clip_uri"

    const/4 v3, 0x0

    const-string v4, "com.samsung.android.honeyboard"

    if-eqz p2, :cond_b7

    .line 644
    :try_start_96
    move-object p2, p1

    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 645
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v6

    long-to-int p1, v6

    invoke-virtual {p0, v5, p1, v4, v3}, Lcom/android/server/semclipboard/SemClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    const-string/jumbo p1, "text/uri-list"

    .line 646
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_db

    .line 648
    :cond_b7
    instance-of p2, p1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    if-eqz p2, :cond_db

    .line 649
    move-object p2, p1

    check-cast p2, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-virtual {p2}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 650
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getCallerUid()J

    move-result-wide v6

    long-to-int p1, v6

    invoke-virtual {p0, v5, p1, v4, v3}, Lcom/android/server/semclipboard/SemClipboardService;->grantUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    const-string/jumbo p1, "image/jpeg"

    .line 651
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_db
    :goto_db
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.samsung.android.honeyboard.provider.RichcontentProvider/clipboard"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_ea} :catch_eb

    goto :goto_106

    :catch_eb
    move-exception p0

    .line 657
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception occurs in insertContentUri because "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemClipboardService"

    invoke-static {p1, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    :goto_106
    return-void
.end method

.method public isEnabled(I)Z
    .registers 2

    .line 504
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isClipboardAllowed(I)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public load(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 599
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v0, "SemClipboardService"

    const-string/jumbo v1, "migration load ...info file"

    .line 600
    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :try_start_19
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_25

    move-object v0, p1

    goto :goto_2c

    :catch_25
    const-string p0, "failed to load clips.info file"

    .line 604
    invoke-static {v0, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 608
    :cond_2c
    :goto_2c
    invoke-virtual {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->loadDataList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final loadDataList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .line 612
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 615
    :try_start_17
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->load()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 616
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_b

    :catch_21
    const-string v0, "SemClipboardService"

    const-string v1, "failed to load WrapFileClipData."

    .line 619
    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_29
    return-object p0
.end method

.method public final migrationClipboardToKeyboard()V
    .registers 7

    const-string v0, "SemClipboardService"

    .line 557
    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/semclipboard"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 559
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 560
    array-length v2, v2

    if-lez v2, :cond_56

    const/4 v2, 0x0

    .line 562
    invoke-virtual {p0, v1, v2}, Lcom/android/server/semclipboard/SemClipboardService;->migrationSemClipboardAsUser(Ljava/io/File;I)V

    const/16 v2, 0xa

    :goto_1e
    const/16 v3, 0xc8

    if-ge v2, v3, :cond_4d

    .line 566
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/semclipboard/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 568
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4a

    if-eqz v4, :cond_4a

    array-length v4, v4

    if-lez v4, :cond_4a

    .line 569
    invoke-virtual {p0, v3, v2}, Lcom/android/server/semclipboard/SemClipboardService;->migrationSemClipboardAsUser(Ljava/io/File;I)V

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 572
    :cond_4d
    invoke-static {v1}, Landroid/sec/clipboard/util/CompatabilityHelper;->recursiveDelete(Ljava/io/File;)V

    const-string p0, "clipboard to keyboard migration is success."

    .line 573
    invoke-static {v0, p0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_56
    const-string/jumbo p0, "semclipboard folder is empty."

    .line 575
    invoke-static {v0, p0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :cond_5d
    const-string/jumbo p0, "semclipboard folder is not exist."

    .line 578
    invoke-static {v0, p0}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_63} :catch_64

    goto :goto_79

    :catch_64
    move-exception p0

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurs in migrationClipboardToKeyboard."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    return-void
.end method

.method public final migrationSemClipboardAsUser(Ljava/io/File;I)V
    .registers 5

    .line 586
    new-instance v0, Ljava/io/File;

    const-string v1, "clips.info"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->load(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2a

    const/4 v0, 0x0

    .line 590
    :goto_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 591
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->insertToClipboardForMigration(Lcom/samsung/android/content/clipboard/data/SemClipData;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2a
    return-void
.end method

.method public final notifyClipboardEventListeners(I)V
    .registers 11

    .line 511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 513
    :try_start_4
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_4d

    .line 514
    :try_start_7
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_4a

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_40

    .line 518
    :try_start_10
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    .line 519
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1d

    iget v8, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    iget-object v5, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3d

    .line 520
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v6}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onClipboardEvent(ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_32} :catch_3d
    .catchall {:try_start_10 .. :try_end_32} :catchall_33

    goto :goto_3d

    :catchall_33
    move-exception p1

    .line 528
    :try_start_34
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 529
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 530
    throw p1

    :catch_3d
    :cond_3d
    :goto_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 528
    :cond_40
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 529
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 531
    monitor-exit v2

    goto :goto_51

    :catchall_4a
    move-exception p0

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw p0
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception p0

    .line 533
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_51
    return-void
.end method

.method public final notifyFilterUpdated(I)V
    .registers 11

    .line 200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 202
    :try_start_4
    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_4c

    .line 203
    :try_start_7
    iget-object v3, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_49

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_3f

    .line 207
    :try_start_10
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;

    .line 208
    iget-object v6, p0, Lcom/android/server/semclipboard/SemClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1d

    iget v8, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mUid:I

    iget-object v5, v5, Lcom/android/server/semclipboard/SemClipboardService$ClipboardEventListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3c

    .line 209
    iget-object v5, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;->onUpdateFilter(I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_31} :catch_3c
    .catchall {:try_start_10 .. :try_end_31} :catchall_32

    goto :goto_3c

    :catchall_32
    move-exception p1

    .line 217
    :try_start_33
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 218
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 219
    throw p1

    :catch_3c
    :cond_3c
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 217
    :cond_3f
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 218
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    monitor-exit v2

    goto :goto_50

    :catchall_49
    move-exception p0

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_49

    :try_start_4b
    throw p0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception p0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_50
    return-void
.end method

.method public pasteClipData(Landroid/content/ClipData;Ljava/lang/String;I)Z
    .registers 6

    .line 477
    iget-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    const-string p3, "SemClipboardService"

    const/4 v0, 0x0

    if-nez p2, :cond_d

    const-string p0, "ClipboardDataPasteEvent is null."

    .line 478
    invoke-static {p3, p0}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 483
    :cond_d
    :try_start_d
    invoke-virtual {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->convertClipToSemClip(Landroid/content/ClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 485
    iget-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {p2, p1}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_1a

    const/4 p0, 0x1

    return p0

    :catch_1a
    move-exception p1

    .line 489
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pasteClipData, Exception : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 490
    invoke-virtual {p0, v0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :cond_38
    return v0
.end method

.method public removeClipboardEventListener(Lcom/samsung/android/content/clipboard/IOnClipboardEventListener;)V
    .registers 3

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_d

    .line 160
    :try_start_3
    iget-object p0, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClipboardEventListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 161
    monitor-exit v0

    goto :goto_11

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    :try_start_c
    throw p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_d} :catch_d

    :catch_d
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method

.method public setPrimaryClip(Landroid/content/ClipData;I)V
    .registers 5

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copied from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemClipboardService"

    invoke-static {v1, v0}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_49

    .line 234
    invoke-static {p2}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/android/server/semclipboard/SemClipboardService;->insertToClipboard(Landroid/content/ClipData;I)Landroid/net/Uri;

    .line 237
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_42

    .line 238
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    const-string p2, "direct_clip"

    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    move p1, v0

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    :goto_43
    if-eqz p1, :cond_46

    const/4 v0, 0x7

    .line 239
    :cond_46
    invoke-virtual {p0, v0}, Lcom/android/server/semclipboard/SemClipboardService;->notifyClipboardEventListeners(I)V

    :cond_49
    return-void
.end method

.method public setPrimarySemClip(Lcom/samsung/android/content/clipboard/data/SemClipData;Ljava/lang/String;I)V
    .registers 7

    const-string v0, "SemClipboardService"

    .line 320
    :try_start_2
    invoke-static {}, Landroid/sec/clipboard/util/SemClipboardPolicy;->getInstance()Landroid/sec/clipboard/util/SemClipboardPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2}, Landroid/sec/clipboard/util/SemClipboardPolicy;->canAccessSemClipboard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string/jumbo p0, "setPrimarySemClip failed : isNotSemApp"

    .line 321
    invoke-static {v0, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 325
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->convertSemClipToClip(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/content/ClipData;

    move-result-object p0

    .line 326
    invoke-static {}, Lcom/android/server/semclipboard/SemClipboardService;->getService()Landroid/content/IClipboard;

    move-result-object p1

    if-eqz p0, :cond_3f

    if-eqz p1, :cond_3f

    .line 328
    invoke-interface {p1, p0, p2, p3}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_3f

    :catch_25
    move-exception p0

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setPrimarySemClip, Exception : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    return-void
.end method

.method public updateFilter(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 3

    .line 180
    iput p1, p0, Lcom/android/server/semclipboard/SemClipboardService;->mEnableFormatId:I

    .line 181
    iput-object p2, p0, Lcom/android/server/semclipboard/SemClipboardService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/server/semclipboard/SemClipboardService;->notifyFilterUpdated(I)V

    return-void
.end method
