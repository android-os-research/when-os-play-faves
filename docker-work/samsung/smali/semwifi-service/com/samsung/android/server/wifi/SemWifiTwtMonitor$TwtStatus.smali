.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;
.super Ljava/lang/Object;
.source "SemWifiTwtMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwtStatus"
.end annotation


# instance fields
.field duration:I

.field id:I

.field interval:I

.field reasonCode:I

.field state:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 367
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 368
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 369
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 370
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 371
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    return-void
.end method
