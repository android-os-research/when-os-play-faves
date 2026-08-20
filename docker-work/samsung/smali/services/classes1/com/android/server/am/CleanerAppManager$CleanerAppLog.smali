.class public final Lcom/android/server/am/CleanerAppManager$CleanerAppLog;
.super Ljava/lang/Object;
.source "CleanerAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CleanerAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CleanerAppLog"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetpackageName(Lcom/android/server/am/CleanerAppManager$CleanerAppLog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgettimestamp(Lcom/android/server/am/CleanerAppManager$CleanerAppLog;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;->timestamp:J

    return-wide v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-wide p2, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;->timestamp:J

    .line 369
    iput-object p1, p0, Lcom/android/server/am/CleanerAppManager$CleanerAppLog;->packageName:Ljava/lang/String;

    return-void
.end method
