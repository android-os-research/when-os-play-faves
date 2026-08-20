.class public final Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
.super Ljava/lang/Object;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperatorInfo"
.end annotation


# instance fields
.field public alphaLong:Ljava/lang/String;

.field public alphaShort:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public rat:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$smfromList(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->fromList(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtoList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->toList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 2042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2046
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 2050
    iput-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 2054
    iput-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->code:Ljava/lang/String;

    .line 2060
    iput-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->state:Ljava/lang/String;

    .line 2064
    iput-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->rat:Ljava/lang/String;

    return-void
.end method

.method private static fromList(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;"
        }
    .end annotation

    .line 2067
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;

    invoke-direct {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;-><init>()V

    .line 2068
    .local v0, "info":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 2069
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 2070
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->code:Ljava/lang/String;

    .line 2071
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->state:Ljava/lang/String;

    .line 2072
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->rat:Ljava/lang/String;

    .line 2073
    return-object v0
.end method

.method private static toList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;)Ljava/util/List;
    .registers 4
    .param p0, "info"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2077
    const/4 v0, 0x5

    .line 2078
    .local v0, "NUMBER_OF_FIELDS":I
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2079
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->alphaLong:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2080
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->alphaShort:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2081
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->code:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2082
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->state:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2083
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->rat:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2084
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperatorInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->alphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->alphaShort:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$OperatorInfo;->rat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
