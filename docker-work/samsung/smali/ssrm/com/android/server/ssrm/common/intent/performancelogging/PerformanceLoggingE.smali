.class public Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;
.super Ljava/lang/Object;
.source "PerformanceLoggingE.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEvent;


# static fields
.field public static final TARCING_LOG_ENABLE:I = 0x1

.field public static final TRACING_LOG_CLEAR:I = 0x4

.field public static final TRACING_LOG_DISABLE:I = 0x2

.field public static final TRACING_LOG_DUMP:I = 0x3

.field public static final TRACING_LOG_INIT:I = 0x0

.field public static final TRACING_LOG_SAVING:I = 0x5

.field public static final TRACING_MODE_ATRACE:I = 0x65

.field public static final TRACING_MODE_END:I = 0x66

.field public static final TRACING_MODE_NONE:I = 0x64

.field public static final TRACING_MODE_PERFETTO:I = 0x66

.field public static final TRACING_MODE_START:I = 0x64


# instance fields
.field private mPerformanceLogging:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "performanceLogging"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;->mPerformanceLogging:I

    .line 26
    iput p1, p0, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;->mPerformanceLogging:I

    .line 27
    return-void
.end method


# virtual methods
.method public getPerformanceLogging()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/android/server/ssrm/common/intent/performancelogging/PerformanceLoggingE;->mPerformanceLogging:I

    return v0
.end method
