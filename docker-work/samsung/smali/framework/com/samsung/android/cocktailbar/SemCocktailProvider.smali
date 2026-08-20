.class public Lcom/samsung/android/cocktailbar/SemCocktailProvider;
.super Landroid/content/BroadcastReceiver;
.source "SemCocktailProvider.java"


# static fields
.field private static final blacklist ACTION_COCKTAIL_DISABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

.field private static final blacklist ACTION_COCKTAIL_ENABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

.field private static final blacklist ACTION_COCKTAIL_UPDATE:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

.field private static final blacklist ACTION_COCKTAIL_UPDATE_V2:Ljava/lang/String; = "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

.field private static final blacklist ACTION_COCKTAIL_VISIBILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

.field private static final blacklist EXTRA_COCKTAIL_ID:Ljava/lang/String; = "cocktailId"

.field private static final blacklist EXTRA_COCKTAIL_IDS:Ljava/lang/String; = "cocktailIds"

.field private static final blacklist EXTRA_COCKTAIL_VISIBILITY:Ljava/lang/String; = "cocktailVisibility"

.field private static final blacklist TAG:Ljava/lang/String; = "SemCocktailProvider"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method public whitelist onCocktailDisabled(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 243
    return-void
.end method

.method public whitelist onCocktailEnabled(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 229
    return-void
.end method

.method public whitelist onCocktailUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailManager"    # Lcom/samsung/android/cocktailbar/SemCocktailBarManager;
    .param p3, "cocktailIds"    # [I

    .line 216
    return-void
.end method

.method public whitelist onCocktailVisibilityChanged(Landroid/content/Context;II)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailId"    # I
    .param p3, "visibility"    # I

    .line 260
    return-void
.end method

.method public blacklist onDisabled(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 180
    return-void
.end method

.method public blacklist onEnabled(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    const-string v1, "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_60

    .line 117
    :cond_15
    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 118
    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailEnabled(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_81

    .line 120
    :cond_24
    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 121
    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailDisabled(Landroid/content/Context;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_81

    .line 123
    :cond_33
    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 125
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_81

    const-string v2, "cocktailId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 126
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 127
    .local v2, "cocktailId":I
    const-string v3, "cocktailVisibility"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 128
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 129
    .local v3, "visibility":I
    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailVisibilityChanged(Landroid/content/Context;II)V

    .line 130
    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onVisibilityChanged(Landroid/content/Context;II)V

    goto :goto_81

    .line 111
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "cocktailId":I
    .end local v3    # "visibility":I
    :cond_60
    :goto_60
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 112
    .restart local v1    # "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_80

    const-string v2, "cocktailIds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 113
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 114
    .local v2, "cocktailIds":[I
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V

    .line 115
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V

    .line 117
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "cocktailIds":[I
    :cond_80
    nop

    .line 134
    :cond_81
    :goto_81
    return-void
.end method

.method public blacklist onUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailManager"    # Lcom/samsung/android/cocktailbar/SemCocktailBarManager;
    .param p3, "cocktailIds"    # [I

    .line 152
    return-void
.end method

.method public blacklist onVisibilityChanged(Landroid/content/Context;II)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailId"    # I
    .param p3, "visibility"    # I

    .line 196
    return-void
.end method
