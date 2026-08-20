.class public abstract Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.super Ljava/lang/Object;
.source "AbsPrivateMode.java"

# interfaces
.implements Lcom/android/server/cocktailbar/mode/CocktailBarMode;


# instance fields
.field public mCocktailType:I

.field public mContext:Landroid/content/Context;

.field public mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

.field public mPrivateModeId:I

.field public mPrivateModeName:Ljava/lang/String;

.field public mRegistratonType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 5

    .line 35
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 5

    .line 41
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    const/4 p1, 0x2

    .line 42
    iput p1, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V
    .registers 5

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    .line 26
    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    .line 27
    iput p2, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeId:I

    .line 28
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->getDefinedCocktailType()I

    move-result p1

    iput p1, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    .line 29
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->getDefinedPrivateModeName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeName:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mListener:Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;

    return-void
.end method


# virtual methods
.method public getCocktailType()I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mCocktailType:I

    return p0
.end method

.method public abstract getDefinedCocktailType()I
.end method

.method public abstract getDefinedPrivateModeName()Ljava/lang/String;
.end method

.method public getModeId()I
    .registers 1

    .line 67
    iget p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeId:I

    return p0
.end method

.method public getModeName()Ljava/lang/String;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mPrivateModeName:Ljava/lang/String;

    return-object p0
.end method

.method public getRegistrationType()I
    .registers 1

    .line 57
    iget p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mRegistratonType:I

    return p0
.end method

.method public abstract isEnableMode()Z
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 9

    .line 76
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 11

    .line 80
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public renewMode(I)I
    .registers 3

    .line 47
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->isEnableMode()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->getModeId()I

    move-result p1

    :cond_a
    return p1
.end method

.method public unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
