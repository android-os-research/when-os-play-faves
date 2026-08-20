.class public Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
.super Ljava/lang/Object;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleSluggishInfo"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mDha:[I

.field public mMeminfo:[J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1010
    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    .line 1011
    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    .line 1015
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1016
    sget-object v0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "SimpleSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_15
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$smgetCurrentMeminfo()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    .line 1019
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$smgetCurrentSimpleDHAStat()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    return-void
.end method

.method public constructor <init>(JJJII)V
    .registers 11

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1010
    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    .line 1011
    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    .line 1024
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1025
    sget-object v0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string v1, "SimpleSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v0, 0x3

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    const/4 p2, 0x2

    aput-wide p5, v0, p2

    .line 1027
    iput-object v0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    new-array p2, p2, [I

    aput p7, p2, v1

    aput p8, p2, p1

    .line 1028
    iput-object p2, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 11

    .line 1034
    invoke-static {}, Lcom/android/server/wm/SluggishInfo;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1035
    sget-object v0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "toString()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    iget-object v1, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v2, 0x0

    const-string v3, "/"

    if-eqz v1, :cond_2c

    .line 1040
    array-length v4, v1

    move v5, v2

    :goto_1c
    if-ge v5, v4, :cond_2c

    aget-wide v6, v1, v5

    .line 1041
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v8, 0x400

    .line 1042
    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 1046
    :cond_2c
    iget-object p0, p0, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    if-eqz p0, :cond_3e

    .line 1047
    array-length v1, p0

    :goto_31
    if-ge v2, v1, :cond_3e

    aget v4, p0, v2

    .line 1048
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1049
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 1053
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    .line 1054
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1056
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string p0, "null"

    :cond_50
    return-object p0
.end method
