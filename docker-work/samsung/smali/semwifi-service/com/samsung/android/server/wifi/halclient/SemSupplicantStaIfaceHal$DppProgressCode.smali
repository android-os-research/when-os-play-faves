.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppProgressCode;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DppProgressCode"
.end annotation


# static fields
.field public static final AUTHENTICATION_SUCCESS:I = 0x0

.field public static final CONFIGURATION_ACCEPTED:I = 0x3

.field public static final CONFIGURATION_SENT_WAITING_RESPONSE:I = 0x2

.field public static final RESPONSE_PENDING:I = 0x1


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
