.class public Lcom/samsung/android/game/Const;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/Const$IntentType;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGER_ALARM:Ljava/lang/String; = "com.samsung.android.game.MANAGER_ALARM"

.field static final GAMEBOOSTER_ACTION:Ljava/lang/String; = "com.samsung.android.game.gametools.GAMETOOLS_INTENTSERVICE"

.field static final GAMELAUNCHER_ACTION:Ljava/lang/String; = "com.samsung.android.game.gamehome.GAME_PACKAGE_CHANGED"

.field public static final GAME_INTENT_SVC:Ljava/lang/String; = "com.samsung.android.game.gos.GameIntentService"

.field static final PKG_GAMEBOOSTER:Ljava/lang/String; = "com.samsung.android.game.gametools"

.field static final PKG_GAMELAUNCHER:Ljava/lang/String; = "com.samsung.android.game.gamehome"

.field public static final PKG_NAME_GOS:Ljava/lang/String; = "com.samsung.android.game.gos"

.field public static final SGM_FEATURE_SUPPORT_GOS_DISABLE_CHECKER:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
