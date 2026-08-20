.class public Lcom/android/server/tare/EconomicPolicy$Cost;
.super Ljava/lang/Object;
.source "EconomicPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/EconomicPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cost"
.end annotation


# instance fields
.field public final costToProduce:J

.field public final price:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-wide p1, p0, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    .line 164
    iput-wide p3, p0, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    return-void
.end method
