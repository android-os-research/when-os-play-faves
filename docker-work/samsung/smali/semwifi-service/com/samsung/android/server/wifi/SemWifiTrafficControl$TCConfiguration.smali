.class Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;
.super Ljava/lang/Object;
.source "SemWifiTrafficControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTrafficControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TCConfiguration"
.end annotation


# instance fields
.field public enabled:Z

.field public iface:Ljava/lang/String;

.field public limit:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficControl$TCConfiguration;-><init>(Lcom/samsung/android/server/wifi/SemWifiTrafficControl;)V

    return-void
.end method
