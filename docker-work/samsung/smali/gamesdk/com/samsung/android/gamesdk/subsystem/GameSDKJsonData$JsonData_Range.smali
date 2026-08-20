.class Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;
.super Ljava/lang/Object;
.source "GameSDKJsonData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonData_Range"
.end annotation


# instance fields
.field private final MAX_VALUE:I

.field private final MIN_VALUE:I


# direct methods
.method constructor <init>(II)V
    .registers 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;->MIN_VALUE:I

    .line 48
    iput p2, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;->MAX_VALUE:I

    .line 49
    return-void
.end method


# virtual methods
.method getMAX_VALUE()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;->MAX_VALUE:I

    return v0
.end method

.method getMIN_VALUE()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData$JsonData_Range;->MIN_VALUE:I

    return v0
.end method
