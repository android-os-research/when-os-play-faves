.class public final Landroid/os/epic/EpicChromeDetector;
.super Ljava/lang/Object;
.source "EpicChromeDetector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native CheckChromeBrowser(Ljava/lang/String;)Z
.end method

.method public native Initialize()V
.end method

.method public LinkLibrary()Z
    .registers 1

    :try_start_0
    const-string p0, "epicsvc"

    .line 27
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public native RemoveUid(Ljava/lang/String;)V
.end method
