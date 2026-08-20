.class public Lcom/android/server/sepunion/SemGoodCatchService;
.super Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;
.source "SemGoodCatchService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;,
        Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;,
        Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;,
        Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;,
        Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;,
        Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;,
        Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;,
        Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;,
        Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;,
        Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;
    }
.end annotation


# static fields
.field public static final ACTION_GOOD_CATCH_URI:Ljava/lang/String; = "com.samsung.android.app.goodcatch.GOOD_CATCH_URI"

.field public static final DB_EXTRA:Ljava/lang/String; = "extra"

.field public static final DB_FUNCTION:Ljava/lang/String; = "function"

.field public static final DB_MESSAGE:Ljava/lang/String; = "message"

.field public static final DB_MODULE:Ljava/lang/String; = "module"

.field public static final DB_PACKAGE:Ljava/lang/String; = "package"

.field public static final DB_TIME:Ljava/lang/String; = "time"

.field public static final DB_VALUE:Ljava/lang/String; = "value"

.field public static final EXTRA_EVENT_URI:Ljava/lang/String; = "EVENT_LIST_URI"

.field public static final EXTRA_SETTING_PROVIDER_URI:Ljava/lang/String; = "SETTING_LIST_URI"

.field public static final EXTRA_SETTING_URI:Ljava/lang/String; = "ONOFF_SETTING_URI"

.field public static final MSG_CREATE_FEATURE:I = 0x0

.field public static final MSG_CREATE_OBSERVER:I = 0x3

.field public static final MSG_UPDATE_DETECT_ADS_STATE:I = 0x4

.field public static final MSG_UPDATE_EVENT:I = 0x2

.field public static final MSG_UPDATE_SETTING:I = 0x1

.field public static final MSG_WRITING_WAKEUP_WRITE_DONE:I = 0x5

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

.field public mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

.field public mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

.field public mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

.field public mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

.field public mGoodCatchClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;",
            ">;"
        }
    .end annotation
.end field

.field public mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

.field public mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

.field public mGoodCatchThread:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFeatureDetectAds(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFeatureEvent(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFeatureSetting(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFeatureSettingsProvider(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFeatureWakeUp(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGoodCatchClients(Lcom/android/server/sepunion/SemGoodCatchService;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGoodCatchHandler(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmGoodCatchHandler(Lcom/android/server/sepunion/SemGoodCatchService;Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateFeature(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->createFeature()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateObserver(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->createObserver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smsendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    .line 284
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    .line 69
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    .line 74
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.app.goodcatch.GOOD_CATCH_URI"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContentResolver:Landroid/content/ContentResolver;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->init()V

    return-void
.end method

.method public static sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 10

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p5

    add-long/2addr v0, v2

    .line 366
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public final createFeature()V
    .registers 2

    .line 453
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    .line 454
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    .line 455
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    .line 456
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    .line 457
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    return-void
.end method

.method public final createGoodCatchThread()V
    .registers 2

    .line 319
    new-instance v0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchThread:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;

    .line 320
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 321
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->waitForGoodCatchHandlerCreation()V

    return-void
.end method

.method public final createObserver()V
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    if-nez v0, :cond_c

    .line 402
    sget-object v0, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mGoodCatchObserver is null, trying to createObserver."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_c
    sget-object v0, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFeatureSetting.getUri() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-virtual {v2}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFeatureEvent.getUri() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    invoke-virtual {v2}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mFeatureSettingsProvider.getUri() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    .line 405
    invoke-virtual {v2}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    if-nez v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 408
    new-instance v1, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    invoke-direct {v1, p0}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V

    iput-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchObserver:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchObserver;

    const-string p0, "created GoodCatchObserver object"

    .line 409
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    :cond_6f
    const-string p0, "does not create GoodCatchObserver"

    .line 411
    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string p1, "\n##### GoodCatchService #####\n##### (dumpsys sepunion goodcatch) #####\n"

    .line 150
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSetting:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->dump(Ljava/io/PrintWriter;)V

    .line 154
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureEvent:Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->dump(Ljava/io/PrintWriter;)V

    .line 155
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureDetectAds:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->dump(Ljava/io/PrintWriter;)V

    .line 156
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureWakeUp:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->dump(Ljava/io/PrintWriter;)V

    .line 157
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    invoke-virtual {p1, p2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->dump(Ljava/io/PrintWriter;)V

    .line 159
    iget-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    monitor-enter p1

    .line 160
    :try_start_21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\nGoodCatchClient size = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    .line 162
    invoke-virtual {p3, p2}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->dump(Ljava/io/PrintWriter;)V

    goto :goto_45

    .line 164
    :cond_55
    monitor-exit p1

    return-void

    :catchall_57
    move-exception p0

    monitor-exit p1
    :try_end_59
    .catchall {:try_start_21 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public getSelectedSettingKey()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mFeatureSettingsProvider:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->getSelectedSettingKey()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final init()V
    .registers 7

    .line 448
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->createGoodCatchThread()V

    .line 449
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_17

    .line 112
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/sepunion/SemGoodCatchService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 114
    sget-object p0, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    const-string p1, "PHASE_BOOT_COMPLETED, send com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public registerListener(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V
    .registers 13

    .line 169
    sget-object v0, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 172
    :try_start_22
    new-instance v7, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V

    .line 173
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchClients:Ljava/util/HashMap;

    invoke-virtual {p0, p4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 5

    .line 308
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 310
    :try_start_4
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 312
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    throw p0
.end method

.method public update([Ljava/lang/String;)V
    .registers 8

    .line 179
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/sepunion/SemGoodCatchService;->sendMsg(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method public final waitForGoodCatchHandlerCreation()V
    .registers 3

    .line 325
    monitor-enter p0

    .line 326
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService;->mGoodCatchHandler:Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_11

    .line 328
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_13

    goto :goto_1

    .line 330
    :catch_9
    :try_start_9
    sget-object v0, Lcom/android/server/sepunion/SemGoodCatchService;->TAG:Ljava/lang/String;

    const-string v1, "Interrupted while waiting on vibrator handler."

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 333
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_13

    throw v0
.end method
