.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppCurve;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DppCurve"
.end annotation


# static fields
.field public static final BRAINPOOLP256R1:I = 0x3

.field public static final BRAINPOOLP384R1:I = 0x4

.field public static final BRAINPOOLP512R1:I = 0x5

.field public static final PRIME256V1:I = 0x0

.field public static final SECP384R1:I = 0x1

.field public static final SECP521R1:I = 0x2


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
