.class public Lcom/android/server/backup/transport/TransportNotAvailableException;
.super Landroid/util/AndroidException;
.source "TransportNotAvailableException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Transport not available"

    .line 32
    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    return-void
.end method
