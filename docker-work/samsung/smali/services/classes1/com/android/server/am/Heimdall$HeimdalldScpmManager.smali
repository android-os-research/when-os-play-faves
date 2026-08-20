.class public final Lcom/android/server/am/Heimdall$HeimdalldScpmManager;
.super Ljava/lang/Object;
.source "Heimdall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Heimdall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeimdalldScpmManager"
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final POLICY_ITEM_URI:Landroid/net/Uri;

.field public static final PRODUCT_DEVICE_PROP:Ljava/lang/String; = "ro.product.device"

.field public static final SCPM_POLICY_NAME:Ljava/lang/String; = "heimdall"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "content://com.samsung.android.sm.policy"

    .line 158
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Heimdall$HeimdalldScpmManager;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item"

    .line 159
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Heimdall$HeimdalldScpmManager;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "heimdall"

    .line 160
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Heimdall$HeimdalldScpmManager;->POLICY_ITEM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onScpmUpdateBroadcast()V
    .registers 9

    const-string/jumbo v0, "ro.product.device"

    const-string v1, ""

    .line 165
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    .line 169
    :cond_14
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/Heimdall$HeimdalldScpmManager;->POLICY_ITEM_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_29

    return-void

    .line 173
    :cond_29
    :goto_29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_72

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    :try_start_31
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    .line 177
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_3e

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_3f

    :catch_3e
    move-object v2, v3

    :goto_3f
    if-eqz v3, :cond_29

    if-nez v2, :cond_44

    goto :goto_29

    .line 186
    :cond_44
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v0, "0"

    .line 187
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_5a
    :try_start_5a
    const-string/jumbo v0, "persist.sys.heimdalld.disable"

    .line 189
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_60} :catch_61

    goto :goto_72

    :catch_61
    move-exception v0

    .line 191
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to set heimdall disable..."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 200
    :cond_72
    :goto_72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void
.end method
