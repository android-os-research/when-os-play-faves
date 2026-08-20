.class final Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;
.super Ljava/lang/Object;
.source "CellularNetworkValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ValidatedNetwork"
.end annotation


# instance fields
.field final blacklist mValidationIdentity:Ljava/lang/String;

.field blacklist mValidationTimeStamp:J

.field final synthetic blacklist this$1:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;Ljava/lang/String;J)V
    .registers 5

    .line 110
    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;->this$1:Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;->mValidationIdentity:Ljava/lang/String;

    .line 112
    iput-wide p3, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;->mValidationTimeStamp:J

    return-void
.end method


# virtual methods
.method blacklist update(J)V
    .registers 3

    .line 115
    iput-wide p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;->mValidationTimeStamp:J

    return-void
.end method
