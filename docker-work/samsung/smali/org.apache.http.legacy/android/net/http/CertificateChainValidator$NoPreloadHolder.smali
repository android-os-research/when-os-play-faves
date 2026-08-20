.class Landroid/net/http/CertificateChainValidator$NoPreloadHolder;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/CertificateChainValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static final sInstance:Landroid/net/http/CertificateChainValidator;

.field private static final sVerifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static bridge synthetic -$$Nest$sfgetsInstance()Landroid/net/http/CertificateChainValidator;
    .registers 1

    sget-object v0, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    sget-object v0, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->sVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Landroid/net/http/CertificateChainValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/http/CertificateChainValidator;-><init>(Landroid/net/http/CertificateChainValidator-IA;)V

    sput-object v0, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->sInstance:Landroid/net/http/CertificateChainValidator;

    .line 62
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->sVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
