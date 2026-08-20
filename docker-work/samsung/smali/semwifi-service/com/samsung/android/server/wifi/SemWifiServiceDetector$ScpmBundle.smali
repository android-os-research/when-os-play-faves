.class Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;
.super Ljava/lang/Object;
.source "SemWifiServiceDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScpmBundle"
.end annotation


# instance fields
.field public configuration:Ljava/lang/String;

.field public provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ScpmBundle;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    return-void
.end method
