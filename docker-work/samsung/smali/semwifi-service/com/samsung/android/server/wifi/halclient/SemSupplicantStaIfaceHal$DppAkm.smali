.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppAkm;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DppAkm"
.end annotation


# static fields
.field public static final DPP:I = 0x3

.field public static final PSK:I = 0x0

.field public static final PSK_SAE:I = 0x1

.field public static final SAE:I = 0x2


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
