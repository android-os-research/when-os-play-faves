.class public Lcom/sec/android/sdhmssdk/SemOverheatReason;
.super Ljava/lang/Object;
.source "SemOverheatReason.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;,
        Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;,
        Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;,
        Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;
    }
.end annotation


# instance fields
.field private cameraAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;",
            ">;"
        }
    .end annotation
.end field

.field private chargerType:I

.field private environmentType:I

.field private gameAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;",
            ">;"
        }
    .end annotation
.end field

.field private navigationAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;",
            ">;"
        }
    .end annotation
.end field

.field private networkAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;",
            ">;"
        }
    .end annotation
.end field

.field private processAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->-$$Nest$fgetchargerType(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->chargerType:I

    .line 119
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->-$$Nest$fgetcameraAppList(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->cameraAppList:Ljava/util/List;

    .line 120
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->-$$Nest$fgetgameAppList(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->gameAppList:Ljava/util/List;

    .line 121
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->-$$Nest$fgetnavigationAppList(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->navigationAppList:Ljava/util/List;

    .line 122
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->-$$Nest$fgetnetworkAppList(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->networkAppList:Ljava/util/List;

    .line 123
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->-$$Nest$fgetprocessAppList(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->processAppList:Ljava/util/List;

    .line 124
    invoke-static {p1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->-$$Nest$fgetenvironmentType(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->environmentType:I

    .line 125
    return-void
.end method


# virtual methods
.method public getCameraAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->cameraAppList:Ljava/util/List;

    return-object v0
.end method

.method public getChargerType()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->chargerType:I

    return v0
.end method

.method public getEnvironmentType()I
    .registers 2

    .line 48
    iget v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->environmentType:I

    return v0
.end method

.method public getGameAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->gameAppList:Ljava/util/List;

    return-object v0
.end method

.method public getNavigationAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->navigationAppList:Ljava/util/List;

    return-object v0
.end method

.method public getNetworkAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->networkAppList:Ljava/util/List;

    return-object v0
.end method

.method public getProcessAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason;->processAppList:Ljava/util/List;

    return-object v0
.end method
