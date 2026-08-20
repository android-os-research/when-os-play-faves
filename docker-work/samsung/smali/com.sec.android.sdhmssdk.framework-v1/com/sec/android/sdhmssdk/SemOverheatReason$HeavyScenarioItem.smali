.class public Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;
.super Lcom/sec/android/sdhmssdk/OverheatAppInfo;
.source "SemOverheatReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhmssdk/SemOverheatReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeavyScenarioItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;
    }
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    .line 167
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->-$$Nest$fgetuid(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/sdhmssdk/OverheatAppInfo;-><init>(I)V

    .line 168
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->-$$Nest$fgetpackageName(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;->packageName:Ljava/lang/String;

    .line 169
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method
