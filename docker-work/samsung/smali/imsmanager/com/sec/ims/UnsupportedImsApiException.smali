.class public Lcom/sec/ims/UnsupportedImsApiException;
.super Ljava/lang/Exception;
.source "UnsupportedImsApiException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "Message"    # Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method
