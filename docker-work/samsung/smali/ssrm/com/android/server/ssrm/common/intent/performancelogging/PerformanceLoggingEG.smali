.class public Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingEG;
.super Lcom/android/server/ssrm/common/ABroadcastEG;
.source "PerformanceLoggingEG.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/common/ABroadcastEG<",
        "Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;",
        "Lcom/android/server/ssrm/common/intent/performancelogging/APerformanceLoggingER;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_PERFROMANCE_LOGGING_ENABLE:Ljava/lang/String; = "com.samsung.intent.action.PERFORMANCE_LOGGING"

.field private static final KEY_CONTROL_PERFORMANCE_LOGGING:Ljava/lang/String; = "performance_logging_ctrl"


# instance fields
.field public final LOG_DEFAULT:I

.field private mPerformanceLogging:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/android/server/ssrm/common/ABroadcastEG;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingEG;->LOG_DEFAULT:I

    .line 16
    iput v0, p0, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingEG;->mPerformanceLogging:I

    return-void
.end method


# virtual methods
.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 39
    const-class v0, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 33
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.PERFORMANCE_LOGGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    return-object v0
.end method

.method protected init()V
    .registers 1

    .line 22
    return-void
.end method

.method public bridge synthetic processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/IEvent;
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingEG;->processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;

    move-result-object p1

    return-object p1
.end method

.method public processBroadcastEvent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 26
    const-string v0, "performance_logging_ctrl"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingEG;->mPerformanceLogging:I

    .line 27
    new-instance v1, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;

    invoke-direct {v1, v0}, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;-><init>(I)V

    return-object v1
.end method
