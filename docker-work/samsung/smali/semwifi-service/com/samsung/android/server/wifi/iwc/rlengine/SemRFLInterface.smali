.class public Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;
.super Ljava/lang/Object;
.source "SemRFLInterface.java"


# instance fields
.field public capRSSI:I

.field public connectionMaintainedTime:J

.field public currentApBssid_IN:Ljava/lang/String;

.field public edgeFlag:Z

.field public mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

.field public mContext:Landroid/content/Context;

.field public snsFlag:Z

.field public snsOptionChanged:Z

.field public switchFlag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    return-void
.end method
