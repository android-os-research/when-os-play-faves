.class public final Lcom/android/commands/am/InstrumentationData;
.super Ljava/lang/Object;
.source "InstrumentationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/am/InstrumentationData$Session;,
        Lcom/android/commands/am/InstrumentationData$SessionStatus;,
        Lcom/android/commands/am/InstrumentationData$TestStatus;,
        Lcom/android/commands/am/InstrumentationData$ResultsBundle;,
        Lcom/android/commands/am/InstrumentationData$ResultsBundleEntry;
    }
.end annotation


# static fields
.field public static final SESSION_ABORTED:I = 0x1

.field public static final SESSION_FINISHED:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
