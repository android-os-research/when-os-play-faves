.class Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;
.super Ljava/lang/Object;
.source "SemDnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsResult"
.end annotation


# instance fields
.field resultIp:Ljava/net/InetAddress;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

.field ttl:J


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;J)V
    .registers 5

    .line 172
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->this$0:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    .line 174
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsResult;->ttl:J

    return-void
.end method
