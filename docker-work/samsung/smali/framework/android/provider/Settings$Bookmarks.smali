.class public final Landroid/provider/Settings$Bookmarks;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmarks"
.end annotation


# static fields
.field public static final greylist CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o FOLDER:Ljava/lang/String; = "folder"

.field public static final greylist-max-o ID:Ljava/lang/String; = "_id"

.field public static final greylist-max-o INTENT:Ljava/lang/String; = "intent"

.field public static final greylist-max-o ORDERING:Ljava/lang/String; = "ordering"

.field public static final greylist-max-o SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Bookmarks"

.field public static final greylist-max-o TITLE:Ljava/lang/String; = "title"

.field private static final greylist-max-o sIntentProjection:[Ljava/lang/String;

.field private static final greylist-max-o sShortcutProjection:[Ljava/lang/String;

.field private static final greylist-max-o sShortcutSelection:Ljava/lang/String; = "shortcut=?"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 24065
    nop

    .line 24066
    const-string v0, "content://settings/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 24118
    const-string/jumbo v0, "intent"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    .line 24119
    const-string v0, "_id"

    const-string/jumbo v1, "shortcut"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sShortcutProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 24057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;
    .registers 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "shortcut"    # C
    .param p5, "ordering"    # I

    .line 24183
    const/4 v0, 0x0

    if-eqz p4, :cond_14

    .line 24184
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 24185
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 24184
    const-string/jumbo v3, "shortcut=?"

    invoke-virtual {p0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 24188
    :cond_14
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 24189
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_21

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24190
    :cond_21
    if-eqz p3, :cond_28

    const-string v2, "folder"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24191
    :cond_28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24192
    if-eqz p4, :cond_3e

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "shortcut"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24193
    :cond_3e
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "ordering"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24194
    sget-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getIntentForShortcut(Landroid/content/ContentResolver;C)Landroid/content/Intent;
    .registers 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "shortcut"    # C

    .line 24134
    const/4 v0, 0x0

    .line 24136
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 24138
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v5, v7

    .line 24136
    const-string/jumbo v4, "shortcut=?"

    const-string/jumbo v6, "ordering"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 24141
    .local v1, "c":Landroid/database/Cursor;
    :goto_1a
    if-nez v0, :cond_46

    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_3f

    if-eqz v2, :cond_46

    .line 24143
    :try_start_22
    const-string/jumbo v2, "intent"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 24144
    .local v2, "intentURI":Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_31
    .catch Ljava/net/URISyntaxException; {:try_start_22 .. :try_end_31} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_31} :catch_33
    .catchall {:try_start_22 .. :try_end_31} :catchall_3f

    move-object v0, v3

    .line 24150
    .end local v2    # "intentURI":Ljava/lang/String;
    :goto_32
    goto :goto_1a

    .line 24147
    :catch_33
    move-exception v2

    .line 24149
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_34
    const-string v3, "Bookmarks"

    const-string v4, "Intent column not found"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3f

    .line 24150
    nop

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1a

    .line 24145
    :catch_3d
    move-exception v2

    goto :goto_32

    .line 24153
    :catchall_3f
    move-exception v2

    if-eqz v1, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 24154
    :cond_45
    throw v2

    .line 24153
    :cond_46
    if-eqz v1, :cond_4b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 24156
    :cond_4b
    return-object v0
.end method

.method public static greylist-max-o getLabelForFolder(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "folder"    # Ljava/lang/String;

    .line 24209
    return-object p1
.end method

.method public static greylist-max-o getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 24224
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 24225
    .local v0, "titleColumn":I
    const-string/jumbo v1, "intent"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 24226
    .local v1, "intentColumn":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_42

    if-eq v1, v2, :cond_42

    .line 24231
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 24232
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 24233
    return-object v2

    .line 24236
    :cond_1e
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 24237
    .local v3, "intentUri":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_2b

    .line 24238
    return-object v5

    .line 24243
    :cond_2b
    const/4 v4, 0x0

    :try_start_2c
    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6
    :try_end_30
    .catch Ljava/net/URISyntaxException; {:try_start_2c .. :try_end_30} :catch_40

    .line 24246
    .local v6, "intent":Landroid/content/Intent;
    nop

    .line 24248
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 24249
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, v6, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 24250
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_3f

    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_3f
    return-object v5

    .line 24244
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_40
    move-exception v4

    .line 24245
    .local v4, "e":Ljava/net/URISyntaxException;
    return-object v5

    .line 24227
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "intentUri":Ljava/lang/String;
    .end local v4    # "e":Ljava/net/URISyntaxException;
    :cond_42
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The cursor must contain the TITLE and INTENT columns."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
