.class public final Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;
.super Ljava/lang/Object;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkInfo"
.end annotation


# instance fields
.field public gsmAct:I

.field public gsmCompactAct:I

.field public index:I

.field public mode:I

.field public operator:Ljava/lang/String;

.field public plmn:Ljava/lang/String;

.field public utranAct:I


# direct methods
.method static bridge synthetic -$$Nest$smfromList(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->fromList(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smtoList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->toList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1980
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->operator:Ljava/lang/String;

    .line 1984
    iput-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->plmn:Ljava/lang/String;

    return-void
.end method

.method private static fromList(Ljava/util/List;)Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;"
        }
    .end annotation

    .line 2003
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;-><init>()V

    .line 2004
    .local v0, "info":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->index:I

    .line 2005
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->operator:Ljava/lang/String;

    .line 2006
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->plmn:Ljava/lang/String;

    .line 2007
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->gsmAct:I

    .line 2008
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->gsmCompactAct:I

    .line 2009
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->utranAct:I

    .line 2010
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->mode:I

    .line 2011
    return-object v0
.end method

.method private static toList(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;)Ljava/util/List;
    .registers 4
    .param p0, "info"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2015
    const/4 v0, 0x7

    .line 2016
    .local v0, "NUMBER_OF_FIELDS":I
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2017
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->index:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2018
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->operator:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2019
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->plmn:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2020
    iget v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->gsmAct:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2021
    iget v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->gsmCompactAct:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2022
    iget v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->utranAct:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2023
    iget v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->mode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2024
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 2029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfo { index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->operator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->plmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->gsmAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gsmCompactAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->gsmCompactAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", utranAct: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->utranAct:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$NetworkInfo;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
