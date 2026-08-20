.class public abstract Lcom/android/server/ssrm/common/intent/performancelogging/APerformanceLoggingER;
.super Ljava/lang/Object;
.source "APerformanceLoggingER.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEReceiver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/ssrm/common/IEReceiver<",
        "Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGeneratorIdentifier()Ljava/lang/String;
    .registers 2

    .line 11
    const-class v0, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingEG;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 6
    check-cast p1, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/common/intent/performancelogging/APerformanceLoggingER;->onEventOccurred(Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;)V

    return-void
.end method

.method public abstract onEventOccurred(Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;)V
.end method
