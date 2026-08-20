.class public Lcom/android/server/om/wallpapertheme/ThemePalette;
.super Ljava/lang/Object;
.source "ThemePalette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;
    }
.end annotation


# instance fields
.field public TAG:Ljava/lang/String;

.field public mIsGray:Z

.field public mMonetPaletteGG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMonetPaletteSS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SWT_ThemePalette"

    .line 13
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mIsGray:Z

    return-void
.end method


# virtual methods
.method public getMonetColorGG(I)I
    .registers 2

    .line 124
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 128
    :cond_6
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMonetColorGG(II)I
    .registers 3

    mul-int/lit8 p1, p1, 0xd

    add-int/2addr p1, p2

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorGG(I)I

    move-result p0

    return p0
.end method

.method public getMonetColorSS(I)I
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 115
    :cond_6
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getMonetColorSS(II)I
    .registers 3

    mul-int/lit8 p1, p1, 0xd

    add-int/2addr p1, p2

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getMonetColorSS(I)I

    move-result p0

    return p0
.end method

.method public getPaletteGG()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    return-object p0
.end method

.method public getPaletteSS()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    return-object p0
.end method

.method public getResIdByName(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sem_wt_"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "color"

    const-string v1, "android"

    invoke-virtual {p1, p3, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2d

    .line 98
    :cond_29
    invoke-virtual {p0, p2}, Lcom/android/server/om/wallpapertheme/ThemePalette;->getResIdByName(Ljava/lang/String;)I

    move-result p1

    :goto_2d
    return p1
.end method

.method public getResIdByName(Ljava/lang/String;)I
    .registers 7

    .line 84
    invoke-static {}, Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;->values()[Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_19

    aget-object v3, p0, v2

    .line 85
    iget-object v4, v3, Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget p0, v3, Lcom/android/server/om/wallpapertheme/ThemePalette$ColorType;->resId:I

    return p0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    return v1
.end method

.method public setPalette(Ljava/util/List;Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteSS:Ljava/util/List;

    .line 134
    iput-object p2, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mMonetPaletteGG:Ljava/util/List;

    .line 135
    iput-boolean p3, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->mIsGray:Z

    .line 136
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/ThemePalette;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "palette updated"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
