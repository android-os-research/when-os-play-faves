.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$DppEventType;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DppEventType"
.end annotation


# static fields
.field public static final CONFIGURATION_APPLIED:I = 0x1

.field public static final CONFIGURATION_SENT:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
