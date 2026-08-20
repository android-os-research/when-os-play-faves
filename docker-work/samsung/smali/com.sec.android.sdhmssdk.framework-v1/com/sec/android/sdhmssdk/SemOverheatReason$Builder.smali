.class public final Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;
.super Ljava/lang/Object;
.source "SemOverheatReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhmssdk/SemOverheatReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Builder"
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
.method static bridge synthetic -$$Nest$fgetcameraAppList(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->cameraAppList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchargerType(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)I
    .registers 1

    iget p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->chargerType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetenvironmentType(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)I
    .registers 1

    iget p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->environmentType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgameAppList(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->gameAppList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnavigationAppList(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->navigationAppList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnetworkAppList(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->networkAppList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprocessAppList(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->processAppList:Ljava/util/List;

    return-object p0
.end method

.method protected constructor <init>()V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->chargerType:I

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->cameraAppList:Ljava/util/List;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->gameAppList:Ljava/util/List;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->navigationAppList:Ljava/util/List;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->networkAppList:Ljava/util/List;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->processAppList:Ljava/util/List;

    .line 65
    iput v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->environmentType:I

    return-void
.end method


# virtual methods
.method build()Lcom/sec/android/sdhmssdk/SemOverheatReason;
    .registers 2

    .line 113
    new-instance v0, Lcom/sec/android/sdhmssdk/SemOverheatReason;

    invoke-direct {v0, p0}, Lcom/sec/android/sdhmssdk/SemOverheatReason;-><init>(Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;)V

    return-object v0
.end method

.method cameraAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;",
            ">;)",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;"
        }
    .end annotation

    .line 73
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    if-eqz p1, :cond_7

    .line 74
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->cameraAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    :cond_7
    return-object p0
.end method

.method chargerType(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 68
    iput p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->chargerType:I

    .line 69
    return-object p0
.end method

.method environmentType(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 108
    iput p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->environmentType:I

    .line 109
    return-object p0
.end method

.method gameAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;",
            ">;)",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;"
        }
    .end annotation

    .line 80
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    if-eqz p1, :cond_7

    .line 81
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->gameAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    :cond_7
    return-object p0
.end method

.method navigationAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;",
            ">;)",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;"
        }
    .end annotation

    .line 87
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    if-eqz p1, :cond_7

    .line 88
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->navigationAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    :cond_7
    return-object p0
.end method

.method networkAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;",
            ">;)",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;"
        }
    .end annotation

    .line 94
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    if-eqz p1, :cond_7

    .line 95
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->networkAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    :cond_7
    return-object p0
.end method

.method processAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;",
            ">;)",
            "Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;"
        }
    .end annotation

    .line 101
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    if-eqz p1, :cond_7

    .line 102
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->processAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_7
    return-object p0
.end method
