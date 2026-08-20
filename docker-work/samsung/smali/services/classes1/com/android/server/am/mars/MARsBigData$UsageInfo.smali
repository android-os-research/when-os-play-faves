.class public Lcom/android/server/am/mars/MARsBigData$UsageInfo;
.super Ljava/lang/Object;
.source "MARsBigData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/MARsBigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsageInfo"
.end annotation


# instance fields
.field public final batteryUsage:Ljava/lang/String;

.field public final disableLevelSize:Ljava/lang/String;

.field public final extras:Ljava/lang/String;

.field public final fasLevelSize:Ljava/lang/String;

.field public final forceStopLevelSize:Ljava/lang/String;

.field public final freecessLevelSize:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/mars/MARsBigData;

.field public final totalSize:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/MARsBigData;)V
    .registers 3

    .line 83
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "IllegalArgumentException"

    .line 85
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->packageName:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->totalSize:Ljava/lang/String;

    const-string v0, "0"

    .line 87
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->freecessLevelSize:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->fasLevelSize:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->forceStopLevelSize:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->disableLevelSize:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->batteryUsage:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->extras:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/MARsBigData;Lcom/android/server/am/mars/MARsBigData$UsageInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;-><init>(Lcom/android/server/am/mars/MARsBigData;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/mars/MARsBigData;Ljava/lang/String;Ljava/lang/String;[Lcom/android/server/am/mars/MARsBigData$LevelInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 96
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->this$0:Lcom/android/server/am/mars/MARsBigData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "NONE"

    if-nez p2, :cond_a

    move-object p2, p1

    .line 98
    :cond_a
    iput-object p2, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->packageName:Ljava/lang/String;

    if-nez p3, :cond_f

    move-object p3, p1

    .line 99
    :cond_f
    iput-object p3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->totalSize:Ljava/lang/String;

    const/4 p2, 0x0

    .line 100
    aget-object p3, p4, p2

    iget p3, p3, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->freecessLevelSize:Ljava/lang/String;

    const/4 p3, 0x1

    .line 101
    aget-object p3, p4, p3

    iget p3, p3, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->fasLevelSize:Ljava/lang/String;

    const/4 p3, 0x2

    .line 102
    aget-object p3, p4, p3

    iget p3, p3, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->forceStopLevelSize:Ljava/lang/String;

    const/4 p3, 0x3

    .line 103
    aget-object p3, p4, p3

    iget p3, p3, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->disableLevelSize:Ljava/lang/String;

    if-nez p5, :cond_40

    move-object p5, p1

    .line 104
    :cond_40
    iput-object p5, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->batteryUsage:Ljava/lang/String;

    if-nez p6, :cond_46

    move-object p6, p1

    goto :goto_52

    .line 106
    :cond_46
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p3, 0x190

    if-le p1, p3, :cond_52

    invoke-virtual {p6, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p6

    :cond_52
    :goto_52
    iput-object p6, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->extras:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/MARsBigData;Ljava/lang/String;Ljava/lang/String;[Lcom/android/server/am/mars/MARsBigData$LevelInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/mars/MARsBigData$UsageInfo-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;-><init>(Lcom/android/server/am/mars/MARsBigData;Ljava/lang/String;Ljava/lang/String;[Lcom/android/server/am/mars/MARsBigData$LevelInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "PKNA"

    .line 112
    iget-object v2, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PKLV"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->totalSize:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "COMA"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->freecessLevelSize:Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "COMS"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->fasLevelSize:Ljava/lang/String;

    .line 115
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "COMR"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->forceStopLevelSize:Ljava/lang/String;

    .line 116
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "COMB"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->disableLevelSize:Ljava/lang/String;

    .line 117
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "BATU"

    iget-object v3, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->batteryUsage:Ljava/lang/String;

    .line 118
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "EXTR"

    iget-object p0, p0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->extras:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception p0

    .line 121
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 124
    :goto_49
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
