.class Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;
.super Ljava/lang/Object;
.source "OperatorCustomizationFactoryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OperatorInfo"
.end annotation


# instance fields
.field private blacklist mOperator:Ljava/lang/String;

.field private blacklist mSegment:Ljava/lang/String;

.field private blacklist mSpecification:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOperator(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->mOperator:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSegment(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->mSegment:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpecification(Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->mSpecification:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "optr"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "seg"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->mOperator:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->mSpecification:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->mSegment:Ljava/lang/String;

    .line 106
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->mSpecification:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorInfo;->mSegment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
