.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppFailureCode;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DppFailureCode"
.end annotation


# static fields
.field public static final AUTHENTICATION:I = 0x1

.field public static final BUSY:I = 0x4

.field public static final CANNOT_FIND_NETWORK:I = 0x9

.field public static final CONFIGURATION:I = 0x3

.field public static final CONFIGURATION_REJECTED:I = 0x8

.field public static final ENROLLEE_AUTHENTICATION:I = 0xa

.field public static final FAILURE:I = 0x6

.field public static final INVALID_URI:I = 0x0

.field public static final NOT_COMPATIBLE:I = 0x2

.field public static final NOT_SUPPORTED:I = 0x7

.field public static final TIMEOUT:I = 0x5

.field public static final URI_GENERATION:I = 0xb


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
