.class public Lcom/android/server/am/mars/MARsBigData$LevelInfo;
.super Ljava/lang/Object;
.source "MARsBigData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/MARsBigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LevelInfo"
.end annotation


# instance fields
.field public batteryUsage:D

.field public packageName:Ljava/lang/String;

.field public preBatteryUsage:D

.field public prePackageCnt:I

.field public reason:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/mars/MARsBigData;

.field public totalSize:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/MARsBigData;)V
    .registers 5

    .line 138
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->batteryUsage:D

    const-string v2, ""

    .line 141
    iput-object v2, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->packageName:Ljava/lang/String;

    .line 142
    iput p1, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->prePackageCnt:I

    .line 143
    iput-wide v0, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->preBatteryUsage:D

    .line 144
    iput-object v2, p0, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->reason:Ljava/lang/String;

    return-void
.end method
