.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;,
        Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;
    }
.end annotation


# static fields
.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CocktailBarUtils"


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 180
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 184
    :try_start_12
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 185
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_24} :catch_32
    .catchall {:try_start_12 .. :try_end_24} :catchall_2d

    if-eqz p1, :cond_2b

    const/4 p1, 0x1

    .line 192
    :goto_27
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_2b
    const/4 p1, 0x0

    goto :goto_27

    :catchall_2d
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 193
    throw p1

    .line 192
    :catch_32
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_35
    const/4 p0, -0x1

    return p0
.end method

.method public static isExistKioskContainers(Landroid/content/Context;)Z
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
