.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$MboAssocDisallowedReasonCode;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MboAssocDisallowedReasonCode"
.end annotation


# static fields
.field public static final AIR_INTERFACE_OVERLOADED:B = 0x3t

.field public static final AUTH_SERVER_OVERLOADED:B = 0x4t

.field public static final INSUFFICIENT_RSSI:B = 0x5t

.field public static final MAX_NUM_STA_ASSOCIATED:B = 0x2t

.field public static final RESERVED:B = 0x0t

.field public static final UNSPECIFIED:B = 0x1t


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
