.class Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;
.super Lcom/android/server/ssrm/common/intent/shutdown/AShutdownER;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShutdownReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1187
    invoke-direct {p0}, Lcom/android/server/ssrm/common/intent/shutdown/AShutdownER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 1187
    check-cast p1, Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$ShutdownReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/ssrm/common/intent/shutdown/IShutdownE;

    .line 1190
    invoke-static {}, Lcom/android/server/ssrm/ProcessRestrictionManager;->getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->releaseAllSlowdown()V

    .line 1191
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_12

    .line 1192
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "onShutDown::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    :cond_12
    return-void
.end method
