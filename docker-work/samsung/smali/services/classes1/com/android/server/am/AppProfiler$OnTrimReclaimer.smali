.class public Lcom/android/server/am/AppProfiler$OnTrimReclaimer;
.super Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;
.source "AppProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTrimReclaimer"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .registers 3

    .line 454
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$OnTrimReclaimer;->this$0:Lcom/android/server/am/AppProfiler;

    const-string/jumbo p1, "onTrim"

    const/4 v0, 0x0

    .line 455
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public shouldSkipReclaim()Z
    .registers 1

    .line 459
    invoke-virtual {p0}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer$Reclaimer;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/samsung/android/server/kernelmemory/UnifiedMemoryReclaimer;->isInCameraLaunch()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
