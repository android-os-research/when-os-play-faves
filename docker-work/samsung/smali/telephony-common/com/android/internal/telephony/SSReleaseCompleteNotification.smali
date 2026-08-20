.class public Lcom/android/internal/telephony/SSReleaseCompleteNotification;
.super Ljava/lang/Object;
.source "SSReleaseCompleteNotification.java"


# static fields
.field public static final blacklist RIL_PARAM_SSDI_DATA:I = 0x2

.field public static final blacklist RIL_PARAM_SSDI_STATUS:I = 0x1


# instance fields
.field public blacklist data:Ljava/lang/String;

.field public blacklist dataLen:I

.field public blacklist params:I

.field public blacklist size:I

.field public blacklist status:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->size:I

    .line 20
    iput v0, p0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    .line 21
    iput v0, p0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    .line 22
    iput v0, p0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    return-void
.end method
