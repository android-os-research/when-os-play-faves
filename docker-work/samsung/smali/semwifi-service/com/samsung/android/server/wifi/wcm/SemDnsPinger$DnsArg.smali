.class Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;
.super Ljava/lang/Object;
.source "SemDnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsArg"
.end annotation


# instance fields
.field dns:Ljava/net/InetAddress;

.field seq:I

.field targetUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V
    .registers 5

    .line 162
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->this$0:Lcom/samsung/android/server/wifi/wcm/SemDnsPinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    .line 164
    iput p3, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->seq:I

    .line 165
    iput-object p4, p0, Lcom/samsung/android/server/wifi/wcm/SemDnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    return-void
.end method
