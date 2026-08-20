.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;
.super Ljava/lang/Object;
.source "SemWifiTwtMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScpmBundle"
.end annotation


# instance fields
.field public configuration:Ljava/lang/String;

.field public provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;-><init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    return-void
.end method
