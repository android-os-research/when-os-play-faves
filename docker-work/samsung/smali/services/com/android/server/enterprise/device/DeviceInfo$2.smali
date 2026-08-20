.class public Lcom/android/server/enterprise/device/DeviceInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 239
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string/jumbo p1, "isActive"

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 241
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fputmDataCallConnected(Lcom/android/server/enterprise/device/DeviceInfo;Z)V

    goto :goto_2e

    .line 243
    :cond_1d
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fputmDataCallLogLastTime(Lcom/android/server/enterprise/device/DeviceInfo;J)V

    .line 244
    iget-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p1, v1, v2}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fputmDataCallLogLastValue(Lcom/android/server/enterprise/device/DeviceInfo;J)V

    .line 245
    iget-object p0, p0, Lcom/android/server/enterprise/device/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {p0, v0}, Lcom/android/server/enterprise/device/DeviceInfo;->-$$Nest$fputmDataCallConnected(Lcom/android/server/enterprise/device/DeviceInfo;Z)V

    :cond_2e
    :goto_2e
    return-void
.end method
