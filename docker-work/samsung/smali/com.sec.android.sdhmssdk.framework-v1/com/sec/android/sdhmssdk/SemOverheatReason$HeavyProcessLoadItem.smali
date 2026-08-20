.class public Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;
.super Lcom/sec/android/sdhmssdk/OverheatAppInfo;
.source "SemOverheatReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhmssdk/SemOverheatReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeavyProcessLoadItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;
    }
.end annotation


# instance fields
.field private processName:Ljava/lang/String;

.field private usage:D


# direct methods
.method protected constructor <init>(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;

    .line 284
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->-$$Nest$fgetuid(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/sdhmssdk/OverheatAppInfo;-><init>(I)V

    .line 285
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->-$$Nest$fgetprocessName(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;->processName:Ljava/lang/String;

    .line 286
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->-$$Nest$fgetusage(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;->usage:D

    .line 287
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    .line 239
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsage()D
    .registers 3

    .line 243
    iget-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;->usage:D

    return-wide v0
.end method
