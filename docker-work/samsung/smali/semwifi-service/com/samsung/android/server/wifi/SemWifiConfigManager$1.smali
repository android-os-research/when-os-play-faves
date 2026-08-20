.class Lcom/samsung/android/server/wifi/SemWifiConfigManager$1;
.super Ljava/lang/Object;
.source "SemWifiConfigManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->-$$Nest$mcloseDatabase(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    return-void
.end method
