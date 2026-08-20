.class public Lcom/android/nfc_extras/EeNfcDisabledException;
.super Lcom/android/nfc_extras/EeIOException;
.source "EeNfcDisabledException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/android/nfc_extras/EeIOException;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lcom/android/nfc_extras/EeIOException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
