.class public Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuotaInfo"
.end annotation


# instance fields
.field public expirationTime:J

.field public lastUsage:J

.field public remainingQuota:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;-><init>()V

    return-void
.end method
