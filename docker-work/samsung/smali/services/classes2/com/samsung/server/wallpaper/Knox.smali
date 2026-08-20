.class public Lcom/samsung/server/wallpaper/Knox;
.super Ljava/lang/Object;
.source "Knox.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "Knox"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Knox"

    .line 34
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-object p1, p0, Lcom/samsung/server/wallpaper/Knox;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isWallpaperChangeAllowed(Z)Z
    .registers 9

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 42
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "false"

    .line 44
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    .line 45
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 46
    iget-object p0, p0, Lcom/samsung/server/wallpaper/Knox;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_1d

    move-object v5, v3

    goto :goto_1e

    :cond_1d
    move-object v5, v1

    :goto_1e
    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string p1, "isWallpaperChangeAllowed"

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_44

    .line 49
    :try_start_2b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 50
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3a} :catch_3b
    .catchall {:try_start_2b .. :try_end_3a} :catchall_3f

    xor-int/2addr v1, p1

    .line 55
    :catch_3b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_44

    :catchall_3f
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 56
    throw p1

    .line 59
    :cond_44
    :goto_44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isWallpaperChangeAllowed "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Knox"

    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
