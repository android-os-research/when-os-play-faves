.class public final Lcom/samsung/android/authnrservice/service/Encoding;
.super Ljava/lang/Object;
.source "Encoding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/authnrservice/service/Encoding$Base64Url;,
        Lcom/samsung/android/authnrservice/service/Encoding$Base64;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
