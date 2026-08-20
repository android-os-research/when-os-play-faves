.class public Lcom/android/server/media/MediaResourceMonitorService;
.super Lcom/android/server/SystemService;
.source "MediaResourceMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final INTENT_ACTION_CF_SINGLE:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field public static final INTENT_ACTION_DMA_SINGLE:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field public static final INTENT_DMA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field public static final MMFW_LOGGING_APP_ID:Ljava/lang/String; = "MMFW"

.field public static final MMFW_LOGGING_TRACKING_ID:Ljava/lang/String; = "4H9-399-505457"

.field public static final MMFW_LOGGING_TYPE:Ljava/lang/String; = "ev"

.field public static final MMFW_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mmfw"

.field public static final SERVICE_NAME:Ljava/lang/String; = "media_resource_monitor"

.field public static final TAG:Ljava/lang/String; = "MediaResourceMonitor"

.field public static final mServiceEnabled:Z


# instance fields
.field public final CUSTOM_DIMENSION_PACKAGE_KEY:Ljava/lang/String;

.field public final CUSTOM_DIMENSION_UNSUPPORTED_CODEC_KEY:Ljava/lang/String;

.field public final mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

.field public mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/media/MediaResourceMonitorService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmPackageManager(Lcom/android/server/media/MediaResourceMonitorService;Landroid/content/pm/PackageManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmServiceEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "MediaResourceMonitor"

    const/4 v1, 0x3

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->DEBUG:Z

    .line 63
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaResourceMonitorService;->mServiceEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const-string p1, "1003"

    .line 79
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService;->CUSTOM_DIMENSION_PACKAGE_KEY:Ljava/lang/String;

    const-string p1, "2001"

    .line 80
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService;->CUSTOM_DIMENSION_UNSUPPORTED_CODEC_KEY:Ljava/lang/String;

    .line 87
    new-instance p1, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;-><init>(Lcom/android/server/media/MediaResourceMonitorService;)V

    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService;->mMediaResourceMonitorImpl:Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;

    const-string/jumbo v1, "media_resource_monitor"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
