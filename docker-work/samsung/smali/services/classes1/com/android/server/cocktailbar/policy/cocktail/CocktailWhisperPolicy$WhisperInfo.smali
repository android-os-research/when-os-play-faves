.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
.super Ljava/lang/Object;
.source "CocktailWhisperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhisperInfo"
.end annotation


# instance fields
.field public cocktailId:I

.field public packageName:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 5

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->cocktailId:I

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    const/4 v0, 0x0

    .line 143
    :try_start_12
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 145
    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->packageName:Ljava/lang/String;

    .line 146
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->uid:I
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1e} :catch_1f

    goto :goto_28

    .line 149
    :catch_1f
    invoke-static {}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WhisperInfo packageName is wrong"

    invoke-static {p1, p2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_28
    :goto_28
    iget-object p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->packageName:Ljava/lang/String;

    if-nez p1, :cond_44

    .line 153
    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3b

    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    :goto_3c
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->packageName:Ljava/lang/String;

    .line 154
    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->uid:I

    :cond_44
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->cocktailId:I

    .line 134
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->packageName:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->uid:I

    return-void
.end method
