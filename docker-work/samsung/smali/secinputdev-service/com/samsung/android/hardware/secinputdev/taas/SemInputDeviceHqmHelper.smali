.class public Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;
.super Ljava/lang/Object;
.source "SemInputDeviceHqmHelper.java"


# static fields
.field private static final BIG_DATA:[Ljava/lang/String;

.field private static final COMONENT_VER:Ljava/lang/String; = "0.0"

.field private static final COMPONENT_ID:Ljava/lang/String; = "TSP"

.field private static final COM_MANUFACTURE:Ljava/lang/String; = "sec"

.field private static final DEV_CUSTOM_DATA_SET:Ljava/lang/String; = ""

.field private static final HIT_TYPE:Ljava/lang/String; = "sm"

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final PERIOD_LOGGING:I = 0x5265c00

.field private static final PRI_CUSTOM_DATA_SET:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "SemInputDeviceHqmHelper"

.field private static final TSP_FEATURE:Ljava/lang/String; = "TAAS"

.field private static sInstance:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;


# instance fields
.field private mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    const-string v0, "CASA"

    const-string v1, "CASB"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->BIG_DATA:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "HqmManagerService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 39
    return-void
.end method

.method private convertToBigDataFormat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 66
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    .local v0, "size":I
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v1, "obj":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1c

    .line 70
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_19} :catch_22

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 75
    .end local v2    # "i":I
    :cond_1c
    nop

    .line 76
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 72
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_22
    move-exception v1

    .line 73
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->sInstance:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->sInstance:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    .line 45
    :cond_b
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->sInstance:Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;

    return-object v0
.end method

.method private sendLoggingDataToHQM(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->convertToBigDataFormat(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "basic_customDataSet":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 82
    return-void

    .line 85
    :cond_8
    const-string v2, "\\{"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\}"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    iget-object v2, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v2, :cond_47

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLoggingDataToHQM() Server update !!! basic_custom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemInputDeviceHqmHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v5, v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v6, 0x0

    const-string v7, "TSP"

    const-string v8, "TAAS"

    const-string v9, "sm"

    const-string v10, "0.0"

    const-string v11, "sec"

    const-string v12, ""

    const-string v14, ""

    move-object v13, v1

    invoke-virtual/range {v5 .. v14}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    :cond_47
    return-void
.end method


# virtual methods
.method public sendHqmTspData(Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;)V
    .registers 7
    .param p1, "data"    # Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->BIG_DATA:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_27

    .line 55
    aget-object v4, v3, v2

    invoke-virtual {p1, v4}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmData;->get(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "strVal":Ljava/lang/String;
    if-eqz v4, :cond_24

    .line 57
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 61
    .end local v2    # "i":I
    .end local v4    # "strVal":Ljava/lang/String;
    :cond_27
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputDeviceHqmHelper;->sendLoggingDataToHQM(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 62
    return-void
.end method
