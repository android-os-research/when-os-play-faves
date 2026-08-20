.class public Lcom/android/server/cocktailbar/mode/NormalMode;
.super Ljava/lang/Object;
.source "NormalMode.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getCocktailType()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getModeId()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getModeName()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistrationType()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public renewMode(I)I
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/NormalMode;->getModeId()I

    move-result p0

    return p0
.end method
