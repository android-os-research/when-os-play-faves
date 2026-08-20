.class public Lcom/android/server/desktopmode/DesktopModeLogger;
.super Ljava/lang/Object;
.source "DesktopModeLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/DesktopModeLogger$LazyHolder;
    }
.end annotation


# static fields
.field public static final CONNECTED_ACCESSORY_INFO:Ljava/lang/String; = "LCAI"

.field public static final DESKTOPMODE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.desktopmode"

.field public static final DEX_TO_MIRRORING:Ljava/lang/String; = "LDTM"

.field public static final DMA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field public static final DMA_DIAGMON_AGENT_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field public static final DMA_PACKAGE_NAME:Ljava/lang/String; = "pkg_name"

.field public static final DMA_SUPPORT_VERSION:I = 0x202fbf00

.field public static final DMA_TRACKING_ID:Ljava/lang/String; = "tracking_id"

.field public static final EXTRA:Ljava/lang/String; = "extra"

.field public static final FEATURE:Ljava/lang/String; = "feature"

.field public static final GSIM_ACTION:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field public static final GSIM_APP_ID:Ljava/lang/String; = "app_id"

.field public static final GSIM_DATA:Ljava/lang/String; = "data"

.field public static final GSIM_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field public static final MIRRORING_TO_DEX:Ljava/lang/String; = "LMTD"

.field public static final SURVEY_LOG:Z

.field public static final TAG:Ljava/lang/String;

.field public static final TRACKING_ID:Ljava/lang/String; = "403-399-565756"


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeLogger;->TAG:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/desktopmode/DesktopModeLogger;->SURVEY_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDmaSupported()Z
    .registers 1

    .line 53
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeLogger$LazyHolder;->SUPPORT_DMA:Z

    return v0
.end method

.method public static log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 57
    sget-boolean v0, Lcom/android/server/desktopmode/DesktopModeLogger;->SURVEY_LOG:Z

    if-nez v0, :cond_5

    return-void

    .line 60
    :cond_5
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeLogger;->isDmaSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61
    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeLogger;->sendDmaLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 63
    :cond_f
    invoke-static {p0, p1, p2}, Lcom/android/server/desktopmode/DesktopModeLogger;->sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public static sendDmaLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "tracking_id"

    const-string v2, "403-399-565756"

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pkg_name"

    const-string v2, "com.samsung.android.desktopmode"

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_21

    const-string v1, "extra"

    .line 73
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_21
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sec.android.diagmonagent"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 81
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_59

    .line 82
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeLogger;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging to DMA feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", extra="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void
.end method

.method public static sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    const-string v2, "com.samsung.android.desktopmode"

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    .line 89
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_18

    const-string v1, "extra"

    .line 91
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_18
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    .line 95
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.samsung.android.providers.context"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 99
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_52

    .line 100
    sget-object p0, Lcom/android/server/desktopmode/DesktopModeLogger;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Logging to GSIM feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", extra="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void
.end method
