.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$4$1;
.super Ljava/lang/Object;
.source "SemWifiApAdvancedAutohotspotMHSLcdOnOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$4;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$4$1;->this$1:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$4;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotMHSLcdOnOff;->startAdvancedAutohotspotWakeupAck()I

    return-void
.end method
