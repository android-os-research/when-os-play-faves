.class public Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;
.super Lcom/sec/android/sdhmssdk/OverheatAppInfo;
.source "SemOverheatReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhmssdk/SemOverheatReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeavyNetworkLoadItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;
    }
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field private usage:J


# direct methods
.method protected constructor <init>(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;

    .line 225
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->-$$Nest$fgetuid(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/sdhmssdk/OverheatAppInfo;-><init>(I)V

    .line 226
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->-$$Nest$fgetpackageName(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;->packageName:Ljava/lang/String;

    .line 227
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->-$$Nest$fgetusage(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;->usage:J

    .line 228
    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsage()J
    .registers 3

    .line 184
    iget-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;->usage:J

    return-wide v0
.end method
