.class public Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;
.super Ljava/lang/Object;
.source "FeatureBlacklistObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;
    }
.end annotation


# static fields
.field public static final HT_NAME:Ljava/lang/String; = "FeatureBlacklistObserver"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

.field public mFeaturesBlacklistCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;",
            ">;"
        }
    .end annotation
.end field

.field public mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFeaturesBlacklistCache(Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeaturesBlacklistCache:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFeaturesBlacklistCache(Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeaturesBlacklistCache:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getFeatureBlacklist()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/util/BlacklistedFeature;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeaturesBlacklistCache:Ljava/util/List;

    return-object p0
.end method

.method public start()V
    .registers 5

    .line 62
    sget-object v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FeatureBlacklistObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 64
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;-><init>(Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    .line 66
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 74
    sget-object v0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    if-eqz v0, :cond_17

    .line 76
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_17
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mFeatureBlacklistContentObserver:Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver$FeatureBlacklistContentObserver;

    .line 79
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_21

    .line 80
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 82
    :cond_21
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/service/FeatureBlacklistObserver;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method
