.class public Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;
.super Ljava/lang/Object;
.source "MeasuredEnergySnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MeasuredEnergySnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasuredEnergyDeltaData"
.end annotation


# instance fields
.field public bluetoothChargeUC:J

.field public cpuClusterChargeUC:[J

.field public displayChargeUC:[J

.field public gnssChargeUC:J

.field public mobileRadioChargeUC:J

.field public otherTotalChargeUC:[J

.field public otherUidChargesUC:[Landroid/util/SparseLongArray;

.field public wifiChargeUC:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 109
    iput-wide v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->bluetoothChargeUC:J

    const/4 v2, 0x0

    .line 112
    iput-object v2, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->cpuClusterChargeUC:[J

    .line 115
    iput-object v2, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->displayChargeUC:[J

    .line 118
    iput-wide v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->gnssChargeUC:J

    .line 121
    iput-wide v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->mobileRadioChargeUC:J

    .line 124
    iput-wide v0, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->wifiChargeUC:J

    .line 127
    iput-object v2, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherTotalChargeUC:[J

    .line 130
    iput-object v2, p0, Lcom/android/server/am/MeasuredEnergySnapshot$MeasuredEnergyDeltaData;->otherUidChargesUC:[Landroid/util/SparseLongArray;

    return-void
.end method
