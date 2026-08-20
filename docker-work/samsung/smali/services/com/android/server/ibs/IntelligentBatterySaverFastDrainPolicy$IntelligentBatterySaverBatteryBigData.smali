.class public Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverFastDrainPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntelligentBatterySaverBatteryBigData"
.end annotation


# instance fields
.field public actionEnabled:Z

.field public drainHightCurrent:F

.field public initialized:Z

.field public restrictedCurrent:F

.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method public static bridge synthetic -$$Nest$fgetactionEnabled(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->actionEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetdrainHightCurrent(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;)F
    .registers 1

    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->drainHightCurrent:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->initialized:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetrestrictedCurrent(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;)F
    .registers 1

    iget p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->restrictedCurrent:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputactionEnabled(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->actionEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputdrainHightCurrent(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->drainHightCurrent:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputinitialized(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->initialized:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputrestrictedCurrent(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->restrictedCurrent:F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 2

    .line 970
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 971
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->initialized:Z

    .line 972
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->actionEnabled:Z

    const/4 p1, 0x0

    .line 973
    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->drainHightCurrent:F

    .line 974
    iput p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->restrictedCurrent:F

    return-void
.end method
