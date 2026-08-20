.class public Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TxRxData"
.end annotation


# instance fields
.field public rxByte:J

.field public final synthetic this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field public txByte:J


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)V
    .registers 2

    .line 1932
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
