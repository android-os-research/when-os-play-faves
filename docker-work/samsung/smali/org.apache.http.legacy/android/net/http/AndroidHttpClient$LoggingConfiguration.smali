.class Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingConfiguration"
.end annotation


# instance fields
.field private final level:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$misLoggable(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;)Z
    .registers 1

    invoke-direct {p0}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->isLoggable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprintln(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # I

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    .line 488
    iput p2, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->level:I

    .line 489
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/net/http/AndroidHttpClient$LoggingConfiguration-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private isLoggable()Z
    .registers 3

    .line 495
    iget-object v0, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    iget v1, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->level:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private println(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 502
    iget v0, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->level:I

    iget-object v1, p0, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method
