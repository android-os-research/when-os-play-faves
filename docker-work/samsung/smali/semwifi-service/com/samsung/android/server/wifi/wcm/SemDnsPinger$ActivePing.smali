.class Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;
.super Ljava/lang/Object;
.source "SemDnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivePing"
.end annotation


# instance fields
.field internalId:I

.field packetId:S

.field result:Ljava/lang/Integer;

.field socket:Ljava/net/DatagramSocket;

.field start:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

.field timeout:I

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;)V
    .registers 4

    .line 146
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->this$0:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;->start:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$ActivePing;-><init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;)V

    return-void
.end method
