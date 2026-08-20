.class Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;
.super Ljava/lang/Object;
.source "SemWifiTwtControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwtSession"
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

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 138
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 140
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->status:I

    .line 141
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 142
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 143
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    return-void
.end method
