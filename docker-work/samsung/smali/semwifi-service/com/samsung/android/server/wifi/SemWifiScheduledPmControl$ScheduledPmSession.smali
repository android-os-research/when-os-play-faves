.class Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;
.super Ljava/lang/Object;
.source "SemWifiScheduledPmControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScheduledPmSession"
.end annotation


# instance fields
.field duration:I

.field id:I

.field ifaceName:Ljava/lang/String;

.field interval:I

.field reasonCode:I

.field status:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 94
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    .line 96
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    .line 97
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    .line 98
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I

    .line 99
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->reasonCode:I

    return-void
.end method
