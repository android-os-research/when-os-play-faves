.class public Lcom/samsung/server/wallpaper/ColorThemeData;
.super Ljava/lang/Object;
.source "ColorThemeData.java"


# instance fields
.field public mColors:Ljava/util/List;

.field public mLuminanceNum:I

.field public mSaturationNum:I


# direct methods
.method public constructor <init>(Ljava/util/List;II)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/samsung/server/wallpaper/ColorThemeData;->mColors:Ljava/util/List;

    .line 12
    iput p2, p0, Lcom/samsung/server/wallpaper/ColorThemeData;->mSaturationNum:I

    .line 13
    iput p3, p0, Lcom/samsung/server/wallpaper/ColorThemeData;->mLuminanceNum:I

    return-void
.end method


# virtual methods
.method public getColors()Ljava/util/List;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/samsung/server/wallpaper/ColorThemeData;->mColors:Ljava/util/List;

    return-object p0
.end method

.method public getLuminanceNum()I
    .registers 1

    .line 25
    iget p0, p0, Lcom/samsung/server/wallpaper/ColorThemeData;->mLuminanceNum:I

    return p0
.end method

.method public getSaturationNum()I
    .registers 1

    .line 21
    iget p0, p0, Lcom/samsung/server/wallpaper/ColorThemeData;->mSaturationNum:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorThemeData{mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/server/wallpaper/ColorThemeData;->mColors:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSaturationNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/server/wallpaper/ColorThemeData;->mSaturationNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLuminanceNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/server/wallpaper/ColorThemeData;->mLuminanceNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
